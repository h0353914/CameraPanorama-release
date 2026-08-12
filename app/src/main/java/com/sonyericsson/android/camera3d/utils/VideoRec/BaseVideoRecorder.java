package com.sonyericsson.android.camera3d.utils.VideoRec;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.view.Surface;

import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.io.IOException;
import java.nio.ByteBuffer;

abstract class BaseVideoRecorder {
    static final int IFRAME_INTERVAL = 0x1;
    static final String MIME_TYPE = "video/avc";
    private static final String TAG = "MORPHO";
    private static final boolean VERBOSE = false;

    private int mBitRate = -1;
    private MediaCodec.BufferInfo mBufferInfo;
    private int mColorFormat = -1;
    MediaCodec mEncoder;
    private final float mFrameRate;
    private int mHeight = -1;
    private MediaMuxer mMuxer;
    private boolean mMuxerStarted;
    private final String mOutputPath;
    Surface mSurface;
    private int mTrackIndex;
    private int mWidth = -1;

    BaseVideoRecorder(int width, int height, int bitRate, float frameRate, int colorFormat, String outputPath) {
        mWidth = width;
        mHeight = height;
        mBitRate = bitRate;
        mFrameRate = frameRate;
        mColorFormat = colorFormat;
        mOutputPath = outputPath;
        prepareEncoder();
    }

    private void prepareEncoder() {
        mBufferInfo = new MediaCodec.BufferInfo();

        MediaFormat format = MediaFormat.createVideoFormat(MIME_TYPE, mWidth, mHeight);
        format.setInteger(MediaFormat.KEY_COLOR_FORMAT, mColorFormat);
        format.setInteger(MediaFormat.KEY_BIT_RATE, mBitRate);
        format.setFloat(MediaFormat.KEY_FRAME_RATE, mFrameRate);
        format.setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, IFRAME_INTERVAL);

        try {
            mEncoder = MediaCodec.createEncoderByType(MIME_TYPE);
            mEncoder.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
            if (mColorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface) {
                mSurface = mEncoder.createInputSurface();
            }
            mEncoder.start();
        } catch (IOException e) {
            throw new RuntimeException("Encoder creation failed", e);
        }

        try {
            mMuxer = new MediaMuxer(mOutputPath, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4);
        } catch (IOException e) {
            throw new RuntimeException("MediaMuxer creation failed", e);
        }

        mTrackIndex = -1;
        mMuxerStarted = false;
    }

    private void releaseEncoder() {
        if (mEncoder != null) {
            mEncoder.stop();
            mEncoder.release();
            mEncoder = null;
        }
        if (mMuxer != null) {
            mMuxer.stop();
            mMuxer.release();
            mMuxer = null;
        }
    }

    void drainEncoder(boolean endOfStream) {
        if (endOfStream) {
            if (mColorFormat == MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface) {
                mEncoder.signalEndOfInputStream();
            } else {
                while (true) {
                    int inputBufferIndex = mEncoder.dequeueInputBuffer(0);
                    if (inputBufferIndex >= 0) {
                        mEncoder.queueInputBuffer(inputBufferIndex, 0, 0, 0, MediaCodec.BUFFER_FLAG_END_OF_STREAM);
                    }
                    int encoderStatus = mEncoder.dequeueOutputBuffer(mBufferInfo, -1);
                    if (encoderStatus >= 0) {
                        ByteBuffer encoderOutputBuffer = mEncoder.getOutputBuffer(encoderStatus);
                        if (encoderOutputBuffer != null) {
                            try {
                                encoderOutputBuffer.position(encoderOutputBuffer.position() + mBufferInfo.offset);
                                encoderOutputBuffer.limit(encoderOutputBuffer.position() + mBufferInfo.size);
                                mMuxer.writeSampleData(mTrackIndex, encoderOutputBuffer, mBufferInfo);
                                encoderOutputBuffer.clear();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        mEncoder.releaseOutputBuffer(encoderStatus, false);
                    }
                    if ((mBufferInfo.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) {
                        return;
                    }
                }
            }
        }

        while (true) {
            int encoderStatus = mEncoder.dequeueOutputBuffer(mBufferInfo, 10000);
            if (encoderStatus == MediaCodec.INFO_TRY_AGAIN_LATER) {
                if (!endOfStream) {
                    return;
                }
            } else if (encoderStatus == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                if (mMuxerStarted) {
                    throw new RuntimeException("format changed twice");
                }
                MediaFormat newFormat = mEncoder.getOutputFormat();
                LogFilter.d(TAG, "encoder output format changed: " + newFormat);
                mTrackIndex = mMuxer.addTrack(newFormat);
                mMuxer.start();
                mMuxerStarted = true;
            } else if (encoderStatus < 0) {
                LogFilter.w(TAG, "unexpected result from encoder.dequeueOutputBuffer: " + encoderStatus);
            } else {
                ByteBuffer encoderOutputBuffer = mEncoder.getOutputBuffer(encoderStatus);
                if (encoderOutputBuffer == null) {
                    throw new RuntimeException("encoderOutputBuffer " + encoderStatus + " was null");
                }
                if ((mBufferInfo.flags & MediaCodec.BUFFER_FLAG_CODEC_CONFIG) != 0) {
                    mBufferInfo.size = 0;
                }
                if (mBufferInfo.size != 0) {
                    if (!mMuxerStarted) {
                        throw new RuntimeException("muxer hasn't started");
                    }
                    encoderOutputBuffer.position(mBufferInfo.offset);
                    encoderOutputBuffer.limit(mBufferInfo.offset + mBufferInfo.size);
                    mMuxer.writeSampleData(mTrackIndex, encoderOutputBuffer, mBufferInfo);
                }
                mEncoder.releaseOutputBuffer(encoderStatus, false);
                if ((mBufferInfo.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) {
                    if (!endOfStream) {
                        LogFilter.w(TAG, "reached end of stream unexpectedly");
                    }
                    return;
                }
            }
        }
    }

    public void end() {
        drainEncoder(true);
        releaseEncoder();
    }
}
