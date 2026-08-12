package com.sonyericsson.android.camera3d.utils.VideoRec;

import android.annotation.SuppressLint;
import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;

import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.io.IOException;
import java.nio.ByteBuffer;

public class VideoRecorderRaw extends BaseVideoRecorder {
    private final long startTimeUs;

    public VideoRecorderRaw(int width, int height, int bitRate, float frameRate, String outputPath) {
        super(width, height, bitRate, frameRate, getColorFormat(width, height, bitRate, frameRate), outputPath);
        startTimeUs = System.nanoTime() / 1000L;
    }

    private static int getColorFormat(int width, int height, int bitRate, float frameRate) {
        MediaFormat format = MediaFormat.createVideoFormat("video/avc", width, height);
        format.setInteger(MediaFormat.KEY_BIT_RATE, bitRate);
        format.setFloat(MediaFormat.KEY_FRAME_RATE, frameRate);
        format.setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, 1);

        MediaCodec codec;
        try {
            codec = MediaCodec.createEncoderByType("video/avc");
        } catch (IOException e) {
            e.printStackTrace();
            codec = null;
        }

        int[] colorFormats = new int[1];
        colorFormats[0] = MediaCodecInfo.CodecCapabilities.COLOR_FormatYUV420Flexible;

        if (codec != null) {
            int i = 0;
            while (i < colorFormats.length) {
                format.setInteger(MediaFormat.KEY_COLOR_FORMAT, colorFormats[i]);
                try {
                    codec.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
                    LogFilter.d("VideoRecorderRaw", "format: " + i);
                    codec.stop();
                    codec.release();
                    break;
                } catch (Exception e) {
                    i++;
                }
            }
        }

        return format.getInteger(MediaFormat.KEY_COLOR_FORMAT);
    }

    @SuppressLint({"WrongCall"})
    public void encodeFrame(Image image, long presentationTimeUs, RawRenderListener listener) {
        int inputBufferIndex = mEncoder.dequeueInputBuffer(-1);
        if (inputBufferIndex >= 0) {
            ByteBuffer inputBuffer = mEncoder.getInputBuffer(inputBufferIndex);
            if (inputBuffer != null) {
                inputBuffer.rewind();
                int size = listener.onDraw(inputBuffer, image);
                inputBuffer.position(size);
                mEncoder.queueInputBuffer(inputBufferIndex, 0, size, presentationTimeUs, 0);
            }
        }
        drainEncoder(false);
    }

    public void encodeFrame(Image image, RawRenderListener listener) {
        long presentationTimeUs = System.nanoTime() / 1000L - startTimeUs;
        encodeFrame(image, presentationTimeUs, listener);
    }

    public interface RawRenderListener {
        int onDraw(ByteBuffer buffer, Image image);
    }
}
