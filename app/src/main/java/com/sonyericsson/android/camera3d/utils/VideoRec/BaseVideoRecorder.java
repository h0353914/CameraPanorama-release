package com.sonyericsson.android.camera3d.utils.VideoRec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.view.Surface;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import java.io.IOException;
import java.nio.ByteBuffer;

abstract class BaseVideoRecorder {
    static final int IFRAME_INTERVAL = 1;
    static final String MIME_TYPE = "video/avc";
    private static final String TAG = "MORPHO";
    private static final boolean VERBOSE = false;
    private int mBitRate;
    private MediaCodec.BufferInfo mBufferInfo;
    private int mColorFormat;
    MediaCodec mEncoder;
    private final float mFrameRate;
    private int mHeight;
    private MediaMuxer mMuxer;
    private boolean mMuxerStarted;
    private final String mOutputPath;
    Surface mSurface;
    private int mTrackIndex;
    private int mWidth;

    BaseVideoRecorder(int i, int i2, int i3, float f, int i4, String str) {
        this.mWidth = i;
        this.mHeight = i2;
        this.mBitRate = i3;
        this.mFrameRate = f;
        this.mColorFormat = i4;
        this.mOutputPath = str;
        prepareEncoder();
    }

    private void prepareEncoder() {
        this.mBufferInfo = new MediaCodec.BufferInfo();
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(MIME_TYPE, this.mWidth, this.mHeight);
        mediaFormatCreateVideoFormat.setInteger("color-format", this.mColorFormat);
        mediaFormatCreateVideoFormat.setInteger("bitrate", this.mBitRate);
        mediaFormatCreateVideoFormat.setFloat("frame-rate", this.mFrameRate);
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 1);
        try {
            MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType(MIME_TYPE);
            this.mEncoder = mediaCodecCreateEncoderByType;
            mediaCodecCreateEncoderByType.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
            if (this.mColorFormat == 2130708361) {
                this.mSurface = this.mEncoder.createInputSurface();
            }
            this.mEncoder.start();
            try {
                this.mMuxer = new MediaMuxer(this.mOutputPath, 0);
                this.mTrackIndex = -1;
                this.mMuxerStarted = false;
            } catch (IOException e) {
                throw new RuntimeException("MediaMuxer creation failed", e);
            }
        } catch (IOException e2) {
            throw new RuntimeException("Encoder creation failed", e2);
        }
    }

    void drainEncoder(boolean z) {
        if (z) {
            if (this.mColorFormat == 2130708361) {
                this.mEncoder.signalEndOfInputStream();
            } else {
                do {
                    int iDequeueInputBuffer = this.mEncoder.dequeueInputBuffer(0L);
                    if (iDequeueInputBuffer >= 0) {
                        this.mEncoder.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 4);
                    }
                    int iDequeueOutputBuffer = this.mEncoder.dequeueOutputBuffer(this.mBufferInfo, -1L);
                    if (iDequeueOutputBuffer >= 0) {
                        ByteBuffer outputBuffer = this.mEncoder.getOutputBuffer(iDequeueOutputBuffer);
                        if (outputBuffer != null) {
                            try {
                                outputBuffer.position(outputBuffer.position() + this.mBufferInfo.offset);
                                outputBuffer.limit(outputBuffer.position() + this.mBufferInfo.size);
                                this.mMuxer.writeSampleData(this.mTrackIndex, outputBuffer, this.mBufferInfo);
                                outputBuffer.clear();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        this.mEncoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                    }
                } while ((this.mBufferInfo.flags & 4) == 0);
                return;
            }
        }
        while (true) {
            int iDequeueOutputBuffer2 = this.mEncoder.dequeueOutputBuffer(this.mBufferInfo, 10000L);
            if (iDequeueOutputBuffer2 == -1) {
                if (!z) {
                    return;
                }
            } else if (iDequeueOutputBuffer2 == -2) {
                if (this.mMuxerStarted) {
                    throw new RuntimeException("format changed twice");
                }
                MediaFormat outputFormat = this.mEncoder.getOutputFormat();
                LogFilter.d(TAG, "encoder output format changed: " + outputFormat);
                this.mTrackIndex = this.mMuxer.addTrack(outputFormat);
                this.mMuxer.start();
                this.mMuxerStarted = true;
            } else if (iDequeueOutputBuffer2 < 0) {
                LogFilter.w(TAG, "unexpected result from encoder.dequeueOutputBuffer: " + iDequeueOutputBuffer2);
            } else {
                ByteBuffer outputBuffer2 = this.mEncoder.getOutputBuffer(iDequeueOutputBuffer2);
                if (outputBuffer2 == null) {
                    throw new RuntimeException("encoderOutputBuffer " + iDequeueOutputBuffer2 + " was null");
                }
                if ((this.mBufferInfo.flags & 2) != 0) {
                    this.mBufferInfo.size = 0;
                }
                if (this.mBufferInfo.size != 0) {
                    if (!this.mMuxerStarted) {
                        throw new RuntimeException("muxer hasn't started");
                    }
                    outputBuffer2.position(this.mBufferInfo.offset);
                    outputBuffer2.limit(this.mBufferInfo.offset + this.mBufferInfo.size);
                    this.mMuxer.writeSampleData(this.mTrackIndex, outputBuffer2, this.mBufferInfo);
                }
                this.mEncoder.releaseOutputBuffer(iDequeueOutputBuffer2, false);
                if ((this.mBufferInfo.flags & 4) != 0) {
                    if (z) {
                        return;
                    }
                    LogFilter.w(TAG, "reached end of stream unexpectedly");
                    return;
                }
            }
        }
    }

    private void releaseEncoder() {
        MediaCodec mediaCodec = this.mEncoder;
        if (mediaCodec != null) {
            mediaCodec.stop();
            this.mEncoder.release();
            this.mEncoder = null;
        }
        MediaMuxer mediaMuxer = this.mMuxer;
        if (mediaMuxer != null) {
            mediaMuxer.stop();
            this.mMuxer.release();
            this.mMuxer = null;
        }
    }

    public void end() {
        drainEncoder(true);
        releaseEncoder();
    }
}
