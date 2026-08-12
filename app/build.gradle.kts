plugins {
    id("com.android.application")
}

android {
    compileSdkVersion(28)

    defaultConfig {
        applicationId = "com.sonyericsson.android.camera3d"
        minSdkVersion(28)
        targetSdkVersion(28)
        versionCode = 4595718
        versionName = "2.3.1.B.0.6"
    }

    buildTypes {
        getByName("release") {
            isMinifyEnabled = false
            isShrinkResources = false
            proguardFiles(
                getDefaultProguardFile("proguard-android.txt"),
                "proguard-rules.pro"
            )
            isDebuggable = false
        }

        getByName("debug") {
            isMinifyEnabled = false
            isDebuggable = true
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }

    lintOptions {
        isAbortOnError = false
        isCheckReleaseBuilds = false
    }

    aaptOptions {
        noCompress("apk", "so", "arsc", "dex", "m4a", "png")
    }

    sourceSets {
        getByName("main") {
            java.srcDirs("src/main/java")
            jniLibs.srcDirs("src/main/jniLibs")
        }
    }

    packagingOptions {
        exclude("META-INF/DEPENDENCIES")
        exclude("META-INF/LICENSE")
        exclude("META-INF/LICENSE.txt")
        exclude("META-INF/NOTICE")
        exclude("META-INF/NOTICE.txt")
        doNotStrip("**/*.so")
    }
}

// 使用 JDK 8 編譯 Java（匹配原始 APK 的位元組碼版本，比照 SemcCameraUI-xxhdpi 慣例）
tasks.withType(JavaCompile::class.java) {
    options.isFork = true
    options.forkOptions.javaHome =
        file("/home/h/lineageos/prebuilts/jdk/jdk8/linux-x86")
}

dependencies {
    // Compile-only stubs
    compileOnly(files("libs/api-stubs.jar"))
    compileOnly(files("libs/extra-stubs.jar"))

    // Support Library 28（compileOnly：原始 APK 已包含這些資源，避免 res 衝突）
    compileOnly("com.android.support:appcompat-v7:28.0.0")
    compileOnly("com.android.support:support-v4:28.0.0")
    compileOnly("com.android.support:support-annotations:28.0.0")
}

configurations.all {
    resolutionStrategy {
        force("com.android.support:support-annotations:28.0.0")
    }
    exclude(group = "com.android.support", module = "exifinterface")
}
