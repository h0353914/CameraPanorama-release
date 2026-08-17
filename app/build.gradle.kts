plugins {
    id("com.android.application")
}

android {
    compileSdkVersion(35)

    defaultConfig {
        applicationId = "com.sonyericsson.android.camera3d"
        minSdkVersion(35)
        targetSdkVersion(36)
        versionCode = 6299648
        versionName = "3.0.1.B.0.0"
    }

    buildTypes {
        getByName("release") {
            // AGP 7.4.2 內建的 R8 對 compileSdk 35 的 android.jar 會拋出
            // NullPointerException（比照 App_smali/SemcCameraUI-xxhdpi 的
            // java-2.2.2.A.0.15-a15-ai-new 分支「Android 15 build toolchain fix」
            // commit 記錄），改回 D8 做 DEX 轉換以繞過此相容性問題。
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

// JDK 8 的 javac 解析 API 35 android.jar 的型別註解時會拋出
// "unrecognized Attribute name MODULE" 內部錯誤，改用 JDK 11 編譯；
// sourceCompatibility/targetCompatibility 仍固定 1.8，位元組碼格式不變。
tasks.withType(JavaCompile::class.java) {
    options.isFork = true
    options.forkOptions.javaHome =
        file("/home/h/lineageos/prebuilts/jdk/jdk11/linux-x86")
}

// androidx 依賴：只取類別位元碼、不取資源（比照 java-2.3.1.B.0.6-a9 分支
// commit 45c2de8 的做法）。原本用 implementation(AAR 座標) 會把 appcompat/
// coordinatorlayout 等 AAR 自帶、但原始 APK 建置時因未使用而被裁掉的資源
// 一併合併進來，導致 aapt2 對沒有被 res/values/public.xml 釘住 id 的資源
// 重新編號，使 app/src/main/res 內沿用原始 resources.arsc 十六進位常數的
// 程式碼對應到錯誤的資源。因此改用「已解析的 androidx AAR classes.jar
// 合併檔」以 implementation(files(...)) 引入，資源 100% 沿用
// smali-3.0.1.B.0.0-a15 分支解出的原始版本（含 public.xml 釘住的 id）。
//
// libs/androidx-classes.jar 內容（從 unknown/META-INF/androidx.*.version
// 查到的真實構件版本號，經 `./gradlew :app:compileDebugJavaWithJavac`
// 解析後，從 ~/.gradle/caches/transforms-3/*/transformed/<artifact>/jars/
// classes.jar 逐一解壓合併而成，不含各 AAR 的 res/AndroidManifest.xml）：
//   appcompat:1.0.0, asynclayoutinflater:1.0.0, coordinatorlayout:1.0.0,
//   core:1.0.0, core-runtime:2.0.0, cursoradapter:1.0.0, customview:1.0.0,
//   documentfile:1.0.0, drawerlayout:1.0.0, fragment:1.0.0,
//   interpolator:1.0.0, legacy-support-core-ui:1.0.0,
//   legacy-support-core-utils:1.0.0, lifecycle-livedata:2.0.0,
//   lifecycle-livedata-core:2.0.0, lifecycle-runtime:2.0.0,
//   lifecycle-viewmodel:2.0.0, loader:1.0.0, localbroadcastmanager:1.0.0,
//   print:1.0.0, slidingpanelayout:1.0.0, swiperefreshlayout:1.0.0,
//   vectordrawable:1.0.0, vectordrawable-animated:1.0.0,
//   versionedparcelable:1.0.0, viewpager:1.0.0
// 加上以下遞移依賴（`./gradlew :app:dependencies --configuration
// debugRuntimeClasspath` 找出的，上面 25 個構件間接需要但本身沒有 UI 資源
// 的純邏輯函式庫）：
//   annotation:1.0.0, collection:1.0.0, arch.core:core-common:2.0.0,
//   lifecycle-common:2.0.0
dependencies {
    // Compile-only stubs（OEM/hidden API，不打包進 APK）
    compileOnly(files("libs/api-stubs.jar"))
    compileOnly(files("libs/extra-stubs.jar"))

    implementation(files("libs/androidx-classes.jar"))
}
