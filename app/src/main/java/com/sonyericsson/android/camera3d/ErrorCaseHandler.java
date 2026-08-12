package com.sonyericsson.android.camera3d;

class ErrorCaseHandler {
    private static final int FILE_PATH_ERROR = -1;
    private static int sStatus;

    private ErrorCaseHandler() {
    }

    public static int getStatus() {
        return sStatus;
    }

    public static void setStatus(int status) {
        sStatus = status;
    }

    public static class ErrorCode {
        public static final int STATUS_CAMERA_UNAVAILABLE = 3;
        public static final int STATUS_DURING_VOICE_CALL = 5;
        public static final int STATUS_FINISH_VOICE_CALL = 7;
        public static final int STATUS_GENERAL_ERROR = 6;
        public static final int STATUS_MEMORY_UNDER_60MB = 4;
        public static final int STATUS_OK = 0;
        public static final int STATUS_TEMPERATURE_ALREADY_HIGH = 1;
        public static final int STATUS_TEMPERATURE_REACHED_HIGH = 2;
    }
}
