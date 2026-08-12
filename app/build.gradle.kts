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

    // Support Library 28：原始 APK 的 classes.dex 內確實包含這些類別的位元碼，
    // 純 compileOnly 會導致執行期 ClassNotFoundException，必須實際打包進 APK。
    // 但直接用 implementation(AAR) 會把 appcompat/support-compat 自帶但原始
    // APK 建置時被裁掉的「未使用資源」（例如 id/all）一併合併進來，導致 aapt2
    // 對未被 public.xml 釘住的資源重新編號，使 app/src/main/res 內沿用原始
    // resources.arsc 十六進位常數的程式碼對應到錯誤的資源、執行期 NPE 閃退。
    // 因此改用「只取類別位元碼、不取資源」的方式：從 Support Library 28.0.0
    // 全部 AAR 依賴（含遞移依賴）解出 classes.jar 合併成 libs/support-lib-classes.jar，
    // 只補回原版本來就有的位元碼，資源仍 100% 沿用 App_smali 解出的原始版本。
    implementation(files("libs/support-lib-classes.jar"))

    // support-fragment/support-v4 28.0.0 的 Fragment/FragmentActivity 位元碼實作
    // android.arch.lifecycle 的 LifecycleOwner/ViewModelStoreOwner 介面，編譯期需要
    // 能解析到這些型別。這幾個 Architecture Components 函式庫本身沒有 UI 資源
    // （純邏輯），不會有 res 合併衝突，直接用官方 AAR/jar 即可。
    implementation("android.arch.lifecycle:runtime:1.1.1") {
        exclude(group = "com.android.support", module = "support-annotations")
    }
    implementation("android.arch.lifecycle:viewmodel:1.1.1") {
        exclude(group = "com.android.support", module = "support-annotations")
    }
    implementation("android.arch.lifecycle:livedata-core:1.1.1") {
        exclude(group = "com.android.support", module = "support-annotations")
    }
}

configurations.all {
    exclude(group = "com.android.support", module = "exifinterface")
}
