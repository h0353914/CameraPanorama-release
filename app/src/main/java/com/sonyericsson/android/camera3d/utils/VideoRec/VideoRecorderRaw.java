package com.sonyericsson.android.camera3d.utils.VideoRec;

import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import java.io.IOException;
import java.nio.ByteBuffer;

public class VideoRecorderRaw extends BaseVideoRecorder {
    private final long startTimeUs;

    public interface RawRenderListener {
        int onDraw(ByteBuffer byteBuffer, Image image);
    }

    @Override // com.sonyericsson.android.camera3d.utils.VideoRec.BaseVideoRecorder
    public /* bridge */ /* synthetic */ void end() {
        super.end();
    }

    public VideoRecorderRaw(int i, int i2, int i3, float f, String str) {
        super(i, i2, i3, f, getColorFormat(i, i2, i3, f), str);
        this.startTimeUs = System.nanoTime() / 1000;
    }

    public void encodeFrame(Image image, long j, RawRenderListener rawRenderListener) {
        ByteBuffer inputBuffer;
        int iDequeueInputBuffer = this.mEncoder.dequeueInputBuffer(-1L);
        if (iDequeueInputBuffer >= 0 && (inputBuffer = this.mEncoder.getInputBuffer(iDequeueInputBuffer)) != null) {
            inputBuffer.rewind();
            int iOnDraw = rawRenderListener.onDraw(inputBuffer, image);
            inputBuffer.position(iOnDraw);
            this.mEncoder.queueInputBuffer(iDequeueInputBuffer, 0, iOnDraw, j, 0);
        }
        super.drainEncoder(false);
    }

    public void encodeFrame(Image image, RawRenderListener rawRenderListener) {
        encodeFrame(image, (System.nanoTime() / 1000) - this.startTimeUs, rawRenderListener);
    }

    private static int getColorFormat(int i, int i2, int i3, float f) {
        MediaCodec mediaCodecCreateEncoderByType;
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i, i2);
        mediaFormatCreateVideoFormat.setInteger("bitrate", i3);
        mediaFormatCreateVideoFormat.setFloat("frame-rate", f);
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 1);
        try {
            mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType("video/avc");
        } catch (IOException e) {
            e.printStackTrace();
            mediaCodecCreateEncoderByType = null;
        }
        int[] iArr = {2135033992};
        if (mediaCodecCreateEncoderByType != null) {
            for (int i4 = 0; i4 < 1; i4++) {
                mediaFormatCreateVideoFormat.setInteger("color-format", iArr[i4]);
                try {
                    mediaCodecCreateEncoderByType.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
                    LogFilter.d("VideoRecorderRaw", "format: " + i4);
                    mediaCodecCreateEncoderByType.stop();
                    mediaCodecCreateEncoderByType.release();
                    break;
                } catch (Exception unused) {
                }
            }
        }
        return mediaFormatCreateVideoFormat.getInteger("color-format");
    }
}
