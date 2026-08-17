# CameraPanorama (java-3.0.1.B.0.0-a15) 手刻進度追蹤

來源 APK：`com.sonyericsson.android.camera3d_3.0.1.B.0.0-6299648_minAPI35(arm64-v8a)(nodpi)_apkmirror.com.apk`
smali 基準分支：`smali-3.0.1.B.0.0-a15`（apktool 反編譯，commit `cd5201f`）
java 分支：`java-3.0.1.B.0.0-a15`（本檔案所在分支，orphan 分支，與 smali 分支無共同歷史）

參考先例：
- `origin/java-2.3.1.B.0.6-a9`（同一個 App 的舊版本，Android 9/API 28，手刻邏輯 + Support Library 28）
- `App_smali/app-scan3d` 的 `java-3.0.A.0.22-a9` 系列分支（jadx bootstrap + 編譯管線 + smali diff 驗證的方法論範本，規模大很多的姊妹專案）
- `App_smali/SemcCameraUI-xxhdpi` 的 `java-2.2.2.A.0.15-a15-ai-new` 分支（同репо另一個 App 的 Android 15/API 35 編譯工具鏈踩坑記錄：JDK11、aapt2FromMavenOverride、R8 NPE 繞過）

## 目前狀態（截至本 session 結束）

- **Step 2（Gradle 骨架）**：完成。`app/build.gradle.kts` / `settings.gradle.kts` / `build.gradle.kts` /
  `gradle.properties` / gradle wrapper 皆已建立。compileSdk 35 / targetSdk 36 / JDK 11 編譯 /
  D8 dex（非 R8，理由同 SemcCameraUI-xxhdpi 分支）。
- **Step 3（jadx 反編譯）**：完成。用 jadx 1.5.6 對 APK 執行 `--no-res` 反編譯，取
  `com/sonyericsson/android/camera3d` + `com/sonyericsson/psm/sysmonservice`
  （246 個 smali class，合併成 88 個 outer-class .java 檔），已清除 JADX INFO 雜訊註解。
- **Step 4（修編譯錯誤）**：**完成，`./gradlew :app:compileDebugJavaWithJavac` 0 error**。
  同時 `./gradlew :app:assembleDebug` 也能完整跑到 BUILD SUCCESSFUL（含 d8 dex + 打包，
  只有「API 35 不受這版 D8 支援」的 warning，非 error）。
- **Step 5（smali diff 驗證）**：**完成，88/88 全部勾選**。已建立 d8 +
  baksmali 反組譯比對管線（見下方「下一步」第 1 點的重建指令），修正了管線
  script 的一個 label 正規化 regex bug。已核對並修正 4 個真 bug
  （`DoublePreference`/`ShrinkRatioPreference` 的 `isValidInputText()`
  NaN 比較方向錯誤 + Camera2App.saveImage() 的 IOException 語意合併 bug +
  `MorphoPanoramaGP2.getAttachAve()` 的整數除法 vs 浮點除法語意錯誤）。
  最後一個 session 完成 `Camera2App` 本體（外層 205 個方法 + 64 個內部類別），
  再修正 9 個真 bug（詳見「已知手動重建」章節第 5～13 項），並手刻補回 jadx
  反編譯完全失敗的 `DecideDirection$DecideDirectionAttach.run()`（991
  instruction units）與其匿名內部 Runnable `DecideDirectionAttach$1`。
  **Step 5 至此結束，88/88 全部核對完畢。**

## androidx 依賴解法（重要，下一位接手者需要知道）

`3.0.1.B.0.0` 相較舊版 `2.3.1.B.0.6` 已從 Support Library 28 遷移到 androidx。
若直接用 `implementation("androidx.appcompat:appcompat:1.0.0")` 等 AAR 座標，會把
AAR 自帶的資源（跟 app 自己 `res/` 內、從原始 resources.arsc 解出的同名資源）一起
合併，讓 aapt2 對沒被 `public.xml` 釘住的資源重新編號，導致跟舊版一樣的
資源錯位問題（比照 `java-2.3.1.B.0.6-a9` 分支 commit `45c2de8` 的根因分析）。

解法：`app/libs/androidx-classes.jar`——把 25 個 androidx AAR 的 `classes.jar`
（不含 res/AndroidManifest.xml）解壓合併成一個 jar，以
`implementation(files("libs/androidx-classes.jar"))` 引入。詳細構件清單與版本見
`app/build.gradle.kts` 內的註解。如果之後編譯出現 `NoClassDefFoundError` 之類的
androidx 相關 class 找不到，很可能是漏了某個間接依賴（例如 `androidx.collection`、
`androidx.arch.core:core-common`、`androidx.lifecycle:lifecycle-common`——這三個
之前就漏掉導致編譯錯誤，已補上）。重新產生這個 jar 的方法：暫時把
`implementation(files(...))` 換回真正的 AAR 座標，跑
`./gradlew :app:compileDebugJavaWithJavac`（會在 resource merge 階段失敗，沒關係，
javac 之前的依賴解析階段已經把 jar 下載/展開到
`~/.gradle/caches/transforms-3/*/transformed/<artifact>/jars/classes.jar`），
再把這些 jar 解壓合併、改回 `implementation(files(...))`。

## 已知手動重建（對照 smali 修正的 jadx 錯誤），下一 session smali diff 時優先核對

這些地方 jadx 產生的 Java 有結構性錯誤（不是型別註解之類的小事），已經對照 smali
手動重建，但**還沒有跑 smali diff 逐一比對驗證**，是 Step 5 的第一優先：

- `Camera2App.java`（檔案巨大 6000+ 行；以下 5 個已知高風險方法已於本 session
  逐條 smali diff 核對完畢，其餘方法尚未特別核對，見下方「檔案清單」的
  Camera2App 條目仍未打勾）：
  - `PanoramaPreview$PreviewAttach.run()`：**PASS**，已逐分支核對
    mode==2（雙鎖 `CameraSynchronizedObject`+`EngineSynchronizedObject`，含
    `Thread.sleep`）與 mode!=2（單鎖 `EngineSynchronizedObject`，無 sleep）
    兩條路徑；三種例外情境皆與原始 smali 一致：`take()` 被中斷 →
    `mResultCode=-1` + `finishAttachThread(previousImage)`；
    synchronized/attach/checkAttachEnd/runOnUiThread 區段被中斷 → 原始 smali
    在該區段宣告的 `:catch_1` 其實是不可達死碼（該區段內沒有任何呼叫會拋出
    checked `InterruptedException`），故新版少了對應 catch 不影響行為；
    `Thread.sleep()` 被中斷 → 原始碼靜默吞掉（`move-object v4, v0`，例外物件
    未被讀取）並繼續迴圈，跟重編譯後的 `catch_128` handler 完全對應。
  - `saveImage()`：**已修正一個真 bug**。原始 smali 有兩段語意不同的
    `IOException` 例外表：外層（`openFileDescriptor`+`writeJPEG`）的
    `IOException` 會把 `iWriteJPEG` 重設為 0；內層（`close`+視情況重開+
    `getStatSize`）的 `IOException` **不會**重設 `iWriteJPEG`（維持
    `writeJPEG()` 原本的回傳碼）。原本手刻的版本把兩段合併成同一個
    `catch (IOException e2) { iWriteJPEG = 0; ... }`，導致「writeJPEG 失敗
    (非 0) 且後續 close/reopen/getStatSize 也拋 IOException」這個情境會被
    誤判成成功（回傳 0）而非正確的失敗。已改成巢狀 try：外層涵蓋
    open+writeJPEG（catch FNFE→ERROR_UNSUPPORTED、catch IOE→重設
    `iWriteJPEG=0`），內層涵蓋 close+重開+getStatSize（catch
    FNFE→ERROR_UNSUPPORTED、catch IOE→不動 `iWriteJPEG`）。重新編譯 +
    baksmali 核對，兩個 catch target 的暫存器語意已跟原始 smali 的
    `:catch_0`/`:catch_2` 完全對應。（javac 會對外層現在「用不到」的
    `catch(IOException)` 印出 unreachable-catch-clause warning，這是預期
    的——原始 smali 的 `:catch_0` 同樣是宣告了但實際不可達的死碼，因為
    `openFileDescriptor`+`writeJPEG` 本身不拋純 `IOException`。）
  - `PositionDetector` 建構子：**PASS**，已核對 i==0/1（用 `output_width`）、
    i==2/3（用 `output_height`）、以及未匹配 i 值時 `d` 保持初始 `0.0`
    三種情況都收斂到共用的 `:goto_8`/`:goto_9` 尾端（`tv_analysis_thres =
    d * 0.002`），跟 Java 端單一指派完全對應。
  - `UiUpdateRunnable`（PanoramaPreview 內部類別）里 `mArrowDir` 對應的箭頭
    位移計算：**PASS**，已逐分支（0/1/2/3 + 未匹配預設情況）核對算式，
    包含先前 jadx 遺漏的 i2==1 分支確實需要疊加
    `(frameRect.height() - mPreviewArrow.getHeight())/2` 到
    `previewCenteringMarginTop`，且 `setTranslationX/Y` 只在 if/else-if
    鏈結束後呼叫一次，與原始 smali 共用尾端完全一致。
  - `isRemovedFromDataBase()`：**PASS（附帶已知的極端情況差異）**，已核對
    cursor/thumbnail 控制流程與 `:catchall_0`/`:catchall_1`/`:goto_3`
    清理結構、以及 `z`/thumbnail 回傳值邏輯（`if (z || thumb!=null) return
    z; return true;`，含 z==false 且 thumbnail 為 null 仍回傳 true 的
    edge case）皆與原始 smali 一致。唯一差異仍是已知的：原始 smali 用
    untyped `.catchall`（相當於 `catch(Throwable)`），Java 端用
    `catch(RuntimeException)`，所以 `Error`（如 `OutOfMemoryError`）不會
    先關閉 cursor 就直接往外拋——這個差異範圍極窄，在 Java 巢狀 try 底下的
    precise-rethrow 分析限制下沒有找到更精確的寫法，維持現狀。
  - `MorphoCamera.pause()` 不在 Camera2App.java，見下方 MorphoCamera.java 條目
    （已於本 session 驗證並勾選）。
  - 多處 `catch (XxxException e2) { e = e2; ... }` 形式的「跨 catch 區塊變數作用域」
    jadx bug（同一個 bug pattern 出現非常多次，均已修正為直接用各自的例外變數，
    必要時把原本被丟失的收尾邏輯（如 `pairInsertPhotoMedia = null; parcelFileDescriptor = null; j = 0;`）對照 smali 補回來）。
    **這些其餘部分（Camera2App 除了上述 5 個方法之外的所有其他方法）尚未
    逐條 smali diff 驗證**，下一 session 應該繼續。

- `Camera2App.java`（**本 session 補完的其餘部分**）
  - `Camera2App$22`（footer_icon_container 的 `linearLayout.post(Runnable)`）：
    **真 bug 第 5 個**。原始 smali 是 `int-to-float densityDpi;
    int-to-float DENSITY_DEVICE_STABLE; div-float`，jadx 寫成
    `getDimension(...) / (densityDpi / DisplayMetrics.DENSITY_DEVICE_STABLE)`
    ——int/int 整數除法，densityDpi < DENSITY_DEVICE_STABLE 時商為 0，
    `float / 0` 得 Infinity，leftMargin/rightMargin 直接爆掉。已加 `(float)`。
  - `PanoramaPreview(boolean)` 建構子：**真 bug 第 6 個**，同款。
    `mMiniPreviewImageView.getHeight() / Math.round(previewSize.getXxx() * 1.0f)`
    是 int/int，原始為兩個 `int-to-float` + `div-float`。兩個分支各一處，已修。
  - `PositionDetector.checkSpeed()`：**真 bug 第 7 個**（NaN 比較方向）。
    原始 `cmpg-double; if-gez`（即 `if (diff < too_slow_thres)`），jadx 寫成
    `else if (getDiff() >= too_slow_thres)` → `cmpl-double`。NaN 時原版回傳
    0、jadx 版回傳 3。已改寫成 `!(getDiff() < too_slow_thres)`。
  - `PositionDetector.isReverse()`：**真 bug 第 8 個**，同款但有 4 處。
    jadx 把 `if (d > i) …; else if (d - peak > reverse_thres) …; else …` 與
    `if (d < 0.0) …; else if (peak - d > reverse_thres) …; else …`
    反寫成 `if (d <= i && d - peak <= reverse_thres)` /
    `if (d >= 0.0 && peak - d <= reverse_thres)`，4 個比較的 cmpg/cmpl 全換掉。
    已照原始結構改寫，重編後 cmpg 4 / cmpl 10 與原始一致。
  - `PositionDetector.updateFrame()`：**真 bug 第 9 個**，8 處整數除法。
    原始 62 個 div-float、0 個 div-int；jadx 有 8 處寫成 int/int：
    `(output_height / mInitParam.input_height) * f` 之類（4 處，另兩處用
    input_width）與 `preview_rect.height()/width() / output_width/output_height`
    （4 處）。這是 preview 疊圖的縮放係數，整數除法會被截斷成 0 或 1。已修。
  - `configureTransform()`：**真 bug 第 10 個**，2 處。
    `Math.max(mTextureView.getHeight() / cameraInfo.getCaptureHeight(),
    mTextureView.getWidth() / cameraInfo.getCaptureWidth())` 是 int/int 配
    `Math.max(II)I`；原始是 4 個 `int-to-float` + 2 個 `div-float` +
    `Math.max(FF)F`。已修。
  - `getAspectTableIndex()`：**真 bug 第 11 個**。
    `Math.abs(f3 - (iArr2[1] / iArr2[0]))` 內層 int/int，原始是浮點除法。
    整數除法會讓所有長寬比都算成 1，`getBaseAspect()` 全毀。已修。
  - `getRatios()`：**真 bug 第 12 個**，2 處。
    `fArr[1] = (iArr5[1] * i6) / (iArr4[1] * i5);` 與對稱那行是 int/int。已修。
  - `getGCD()`：**真 bug 第 13 個**。jadx 產生的交換寫成
    `if (i > i2) { i2 = i; i = i2; }`——這不是交換（兩個變數都變成 i）。
    原始 smali 是 `v0 = p1; p1 = p0; p0 = v0` 三步交換。已補回暫存變數。
  - `d_save_raw()`：較小的語意差異。原始在 `new FileOutputStream()` 就丟
    FileNotFoundException（區域變數仍為 null）時，`if-eqz v3, :cond_1`
    直接跳到 return、不呼叫 `PerformanceCounter.putLog()`；已在該 catch 補
    `return;`。
  - **`DecideDirection$DecideDirectionAttach.run()`：jadx 完全反編譯失敗**
    （991 instruction units，原本只有
    `throw new UnsupportedOperationException("Method not decompiled: ...")`
    的 stub），已對照 smali 從零手刻。原始依 `ui_control_mode` 分成兩個平行
    但鎖與收尾不同的迴圈：
    (a) `== 2`：雙鎖（外 `CameraSynchronizedObject`、內
    `EngineSynchronizedObject`），attach 後若方向未定就
    `Thread.sleep(SLEEP_MILLISEC, SLEEP_NANOSEC)` 再取下一張；sleep 的
    `InterruptedException`（smali `:catch_0`，catch label 就是迴圈頂端
    `:goto_0`）被靜默吞掉並繼續迴圈。
    (b) `!= 2`：外層鎖是 `mSyncCancelSave`，先看 `mIsPanoramaCancel`：為真
    就（僅第一次）存檔 + `runOnUiThread(DecideDirectionAttach$1)` 並把 z 設
    false；為假才進 `EngineSynchronizedObject` 做 attach。本迴圈沒有 sleep。
    兩迴圈共用的收尾（`:cond_18`/`:goto_c`：`image == sAttachExit` → log 後
    return，否則 `stopCaptureTimer()` + `runOnUiThread(new DecideRunnable())`）
    抽成 `finishDecideThread()`；take()/synchronized 區段的
    `InterruptedException`（`:catch_1`）→ printStackTrace +
    `runOnUiThread(new DecideFailRunnable())`。
    同時補回原始存在、新版完全缺席的匿名內部類別
    `DecideDirectionAttach$1`（取消存檔完成後的 UI 收尾 Runnable）。
    重編譯後 baksmali 比對：`DecideDirectionAttach$1` 除了 access$ accessor
    消失外完全一致；`run()` 的差異只剩 monitor-exit/catchall 骨架
    （R8 共用 vs javac 每個 synchronized 各產生一份）與常數暫存器配置。

- `MorphoCamera.java`
  - `pause()`：jadx 把 smali 唯一一份的清理邏輯（catchall 收尾）誤判成
    `if(samsung){...}else{...}` 兩份完全重複的程式碼，並在最後留了一個沒有
    對應變數的 `throw th;`。已對照 smali 改寫成單一份清理邏輯，用 Java
    `synchronized` 區塊天生的「例外時仍會 monitor-exit 再往外拋」語意取代
    手動的 catchall/throw。
  - `mPreviewAvailableListener.onImageAvailable()`：拿掉一個所有路徑都會先
    `return` 導致必然不可達的 `throw th;`（對照 smali 確認過，屬同一類
    「验证器合法但 Java 不允許」的保留 catchall 產物）。
  - `getImageQualitySettingsDefaultValues()`：補上遺漏的 `return null;`
    （原本最外層 `catch (Exception unused3) {}` 是空的，導致非 void 方法
    漏了 return statement；smali `:catch_6` 對應到 `return-object v1`，
    即 `return null`）。

- `base/AttachRunnable.java`
  - `saveJpeg()`：與 Camera2App.saveImage() 同一個病灶模式，已比照修好
    （inner try 擴大到涵蓋 open+write+close+reopen+getStatSize，外層
    `catch(FileNotFoundException)/catch(IOException)` 因 `insertPhotoMedia()`
    本身不拋出這兩種 checked exception 而移除，改用一個純邏輯區塊 `{ ... }`）。

- `setting/DoublePreference.java`：`isValidInputText()` 補上遺漏的
  `return false;`（原本 `catch (NumberFormatException unused) {}` 空區塊漏 return）。

- `MorphoPanoramaGP2.java`：`getAttachAve()` 修正一個真 bug（本 session
  第 4 個真 bug）。原始 smali 是 `long-to-float(elapsed); long-to-float(count);
  div-float`（兩個 long 都先轉成 float 才相除，保留小數部分），但 jadx 產生的
  Java 寫成 `(this.mAttachLastNanoTime - this.mAttachFirstNanoTime) / j`，這是
  `long / long` 整數除法（先在 long 精度下做除法、捨去餘數，才轉成 float），
  跟原始語意不同。已改成
  `(((float)(mAttachLastNanoTime - mAttachFirstNanoTime)) / ((float) j)) /
  1000000.0f`，重新編譯 + baksmali 核對，`div-long/2addr` 已消失，兩個
  `long-to-float` 都在除法之前，跟原始 smali 完全對應。

- `device/SomcCaptureResultKeys.java` / `SomcCameraCharacteristicsKeys.java` /
  `SomcCaptureRequestKeys.java`：`keyConstructor()` 這個用反射建構
  `CaptureResult.Key`/`CameraCharacteristics.Key`/`CaptureRequest.Key` 的
  private helper，返回型別從 jadx 生成的 `Key<?>`（萬用字元，無法直接賦值給
  `Key<Integer>` 等具體型別欄位）改成 raw type `Key`（原始型別，配
  `@SuppressWarnings`），這是反射建構泛型物件的常見合理寫法，行為完全等價。

- `utils/render/ShaderHelper.java`：修正一個 jadx 常數誤植——
  `"Could not compile shader " + i + InternalSettings.SETTING_SEPARATOR`
  對照 smali 確認實際上是字面常數 `":"`，不是引用 `InternalSettings` 欄位
  （jadx 的「用同值常數欄位取代字面值」功能誤配對到另一個巧合也是 `":"` 的欄位，
  且 `InternalSettings` 是 package-private，跨套件引用本來就不該編譯得過）。

## 檔案清單（246 個 smali class → 88 個 outer-class .java 檔）

以下皆已納入 jadx bootstrap，且整個 module `./gradlew :app:compileDebugJavaWithJavac`
0 error（意即語法/型別層級沒問題）。checkbox 代表「已完成 smali diff 逐一核對，
確認邏輯等價或已修正」，**目前 88/88 全部勾選完畢**。

上面「已知手動重建」列出的檔案請優先核對；其餘檔案雖然目前編譯通過，但
`jadx --show-bad-code` 沒有特別標記不代表 100% 正確，仍建議走一次 d8 + baksmali
反組譯比對（見下方「下一步」）。

### com.sonyericsson.android.camera3d (root)

- [x] `AccessibilityHelper`
- [x] `Camera1Image`
- [x] `Camera2App`（★ 已知手動重建，見上方說明；6000+ 行，已分批核對完成，修正 9 個真 bug + 手刻 1 個 jadx 反編譯失敗的方法）
- [x] `Camera2Image`
- [x] `Camera2ImageQualitySettings`
- [x] `Camera2ParamsFragment`
- [x] `CameraConstants`
- [x] `CameraInfo`
- [x] `CameraInfoViewFragment`
- [x] `CaptureImage`
- [x] `DownDirectionFunction`
- [x] `ErrorCaseHandler`
- [x] `FooterButtonsFragment`
- [x] `FpsParam`
- [x] `HeaderButtonsFragment`（★ 已知手動重建：`f$0` lambda accessor 修正）
- [x] `HoverEventInterceptView`
- [x] `InfoIconsFragment`
- [x] `InternalSettings`
- [x] `LeftDirectionFunction`
- [x] `MorphoCamera`（★ 已知手動重建，見上方說明）
- [x] `MorphoCamera1`
- [x] `MorphoPanoramaGP2`(★ 已修正一個真 bug：`getAttachAve()` 見上方「已知手動重建」章節)
- [x] `MorphoPanoramaGP2Application`
- [x] `PanoramaGP2ImageFormat`
- [x] `PanoramaGP2LocationListener`
- [x] `PanoramaGP2LocationManager`
- [x] `PerformanceCounter`
- [x] `R`（aapt2 產生，理論上不需要手動核對，但因為沿用 apktool 的
      `public.xml` id 常數，如果 diff 有落差要特別注意）
- [x] `RightDirectionFunction`
- [x] `RotatableToast`
- [x] `SaveTask`
- [x] `SensorFusion`
- [x] `SettingList`
- [x] `SettingSubList`
- [x] `TextureViewEx`
- [x] `ThermalAlertReceiver`
- [x] `UpDirectionFunction`
- [x] `Util`
- [x] `VerticalTextView`

### com.sonyericsson.android.camera3d.base

- [x] `AttachRunnable`（★ 已知手動重建，見上方說明）
- [x] `DirectionFunction`
- [x] `MorphoCameraBase`
- [x] `PanoramaState`
- [x] `SettingListBase`

### com.sonyericsson.android.camera3d.camera_states

- [x] `AutoFocusState`
- [x] `Camera1AutoFocusState`
- [x] `Camera1PreviewState`
- [x] `Camera1State`
- [x] `Camera1TakePictureState`
- [x] `Camera1UnlockFocusState`
- [x] `CameraState`
- [x] `IMorphoPanoramaGP2Callback`
- [x] `MorphoPanoramaGP2CameraState`
- [x] `PreviewState`（原本記錄有 JADX WARN 標記，尚未特別處理，優先核對）
- [x] `TakePictureState`
- [x] `UnlockFocusState`

### com.sonyericsson.android.camera3d.core

- [x] `Error`
- [x] `JpegIO`
- [x] `MorphoSensorFusion`

### com.sonyericsson.android.camera3d.device

- [x] `SomcCameraCharacteristicsKeys`（★ 已知手動重建：raw type 修正）
- [x] `SomcCameraDeviceInfo`
- [x] `SomcCameraMetadataEnums`
- [x] `SomcCaptureRequestKeys`（★ 已知手動重建：raw type 修正）
- [x] `SomcCaptureResultKeys`（★ 已知手動重建：raw type 修正）

### com.sonyericsson.android.camera3d.dialog

- [x] `AlertOkDialog`
- [x] `AlertSettingDialog`
- [x] `LicenseDialog`
- [x] `RotatableDialog`
- [x] `RotatableDialogFragment`

### com.sonyericsson.android.camera3d.setting

- [x] `AovxPreference`
- [x] `AovyPreference`
- [x] `CalcseamPixnumPreference`
- [x] `DoublePreference`（★ 已知手動重建：漏 return 修正）
- [x] `EditTextPreferenceDialog`
- [x] `NoiseReductionParamPreference`
- [x] `SettingActivity`
- [x] `ShrinkRatioPreference`
- [x] `UnsharpStrengthPreference`

### com.sonyericsson.android.camera3d.utils

- [x] `AccessibilityUtil`
- [x] `LogFilter`
- [x] `NativeMemoryAllocator`
- [x] `VideoRec.BaseVideoRecorder`
- [x] `VideoRec.VideoRecFeature`
- [x] `VideoRec.VideoRecorder`（原本記錄有 JADX WARN 標記，尚未特別處理，優先核對）
- [x] `VideoRec.VideoRecorderRaw`
- [x] `io.StorageMonitor`

### com.sonyericsson.android.camera3d.utils.render

- [x] `ShaderHelper`（★ 已知手動重建：字面常數修正）

### com.sonyericsson.psm.sysmonservice

- [x] `ISysmonService`

## 下一步（給接手的 session）

1. **建立 d8 + baksmali 反組譯比對管線**：參考
   `App_smali/app-scan3d` 的 `tools_diff/` 目錄跟它的 commit `f60e074`
   （「建立 d8 + baksmali 反組譯比對管線」）。CameraPanorama 規模小很多
   （88 個檔案 vs. scan3d 715 個），管線可以簡化，但概念一樣：
   - 用跟 `assembleDebug` 一致的方式把 `app/src/main/java` 編譯回 dex
     （`./gradlew :app:assembleDebug` 產生的 APK 即可，或直接用
     `app/build/intermediates/.../classes.dex`）。
   - 用 baksmali 把該 dex 反組譯回 smali。
   - 跟 `smali-3.0.1.B.0.0-a15` 分支的原始 smali 逐檔 diff。
   - 完全一致或確認邏輯等價 → 在上面清單打勾 + commit。
   - 有差異 → 對照 smali 手動核對（注意 branch-polarity 陷阱：
     `if-eq vX, vY, :cond_N` 是「條件為真才跳到 :cond_N（跳過後面那段）」，
     見 `/home/h/.claude/projects/-home-h-tmp-SemcCameraUI/memory/feedback_verify_bug_attribution_against_original.md`）。
2. ~~優先核对本檔案「已知手動重建」列出的方法~~ **已完成**：`DoublePreference`
   `ShaderHelper` `SomcCameraCharacteristicsKeys` `SomcCaptureRequestKeys`
   `SomcCaptureResultKeys` `AttachRunnable` `MorphoCamera` 皆已勾選；
   `Camera2App` 的 5 個已知高風險方法（`PreviewAttach.run()` / `saveImage()`
   / `PositionDetector` 建構子 / `UiUpdateRunnable` 箭頭位移 /
   `isRemovedFromDataBase()`）也都核對完畢，但 **`Camera2App` 這個檔案本身
   還有大量其餘方法沒有走過 smali diff**（它是 6000+ 行的巨大檔案，強烈
   建議切成多段、用 `grep -n "\.method"` 抓方法邊界後分批比對），
   checkbox 仍未打勾，是下一 session 最優先項目。
3. ~~`PreviewState.java` 和 `VideoRec/VideoRecorder.java`~~ **已完成**：兩者皆已
   核對並勾選，diff 純屬 `.param`/`.local` 除錯資訊 + access$ bridge method
   消除（改成 public 方法直接呼叫）等已知良性差異，無邏輯問題。
4. 資源（`res/`）跟原生函式庫（`lib/arm64-v8a/*.so`）目前是直接從
   `smali-3.0.1.B.0.0-a15` 分支複製過來的，理論上不需要額外驗證，但如果之後
   要在裝置上實測，記得裝置需要有 `com.sony.device` 這個 `uses-library`
   （AndroidManifest.xml 有宣告 `required="true"`）。`R.smali` 已核對：
   新版比原版多出 `R$anim`/`R$integer` 以及大量 androidx `R$id`/`R$string`/
   `R$drawable` 常數，這是因為原始 APK 建置時開了 R8/ProGuard minification
   把「Java 端沒有直接引用」的 R 常數欄位裁掉了，但對應資源本身（跟數值 ID）
   仍在 `resources.arsc`／`public.xml` 裡，已抽查確認 `action_bar` 等 id
   數值跟 `public.xml` 完全吻合——純屬本專案刻意不開 R8（見
   `app/build.gradle.kts` 註解）造成的良性差異，不是 bug。
5. **重建 d8 + baksmali smali_out 的完整指令**（NEW_DIR 是 ephemeral 的
   scratchpad，下個 session 需要重新產生）：
   ```
   cd /home/h/tmp/SemcCameraUI/App_smali/CameraPanorama
   ./gradlew :app:assembleDebug --offline
   SCRATCH=<你的 scratchpad 目錄>
   mkdir -p $SCRATCH/apk_extract && cd $SCRATCH/apk_extract
   unzip -o -q .../app/build/outputs/apk/debug/app-debug.apk "classes*.dex"
   JAVA=/home/h/lineageos/prebuilts/jdk/jdk11/linux-x86/bin/java
   BAKSMALI=/home/h/lineageos/prebuilts/extract-tools/common/smali/baksmali.jar
   for f in classes*.dex; do
     $JAVA -jar $BAKSMALI disassemble "$f" -o $SCRATCH/smali_out -a 35 -l
   done
   # 原始 smali 也要重新從 smali-3.0.1.B.0.0-a15 分支抽出（不要 git checkout
   # 這個分支，java 分支是目前 checkout 的工作樹）：
   cd /home/h/tmp/SemcCameraUI/App_smali/CameraPanorama
   mkdir -p $SCRATCH/orig_smali
   git archive smali-3.0.1.B.0.0-a15 smali | tar -x -C $SCRATCH/orig_smali
   ```
   比對工具 `smali_diff.py`（本 session 寫的，位於 scratchpad，非 repo 內，
   下個 session 要重新建立，可參考本 commit 訊息或 `App_smali/app-scan3d/
   tools_diff/smali_diff.py` 重寫）：把兩邊 smali 正規化（去除
   `.line`/`.locals`/`.registers`，暫存器 `v\d+`/`p\d+` 跟
   `:cond_N`/`:goto_N` 等 label 都換成統一 placeholder `R`/`:L`——**注意
   label 正規化 regex 不能寫 `\b:cond_...`，因為 `:` 不是 word char，
   `\b` 在它前面永遠不會匹配，本 session 已修過這個 bug**），逐檔比對
   `PORTING_STATUS.md` 列出的 88 個 class。
6. 已知的良性差異模式（診斷「different」時可以快速排除，不用逐行細看）：
   - `.param`/`.local`/`.end local`/`.restart local` 除錯資訊（apktool
     反編譯的原始 smali 沒有這些，我們用 `-l` 產生的 baksmali 輸出有）。
   - `filled-new-array {a,b}, [Ljava/lang/Object;` (原版) vs
     `new-array n, [Ljava/lang/Object;` + 兩次 `aput-object` (新版)：
     同語意，純編譯器版本差異。
   - `invoke-direct {sb, str}, StringBuilder;-><init>(Ljava/lang/String;)V`
     (原版) vs `invoke-direct {sb}, StringBuilder;-><init>()V` +
     `invoke-virtual {sb, str}, StringBuilder;->append(Ljava/lang/String;)`
     (新版)：同語意。
   - `public bridge synthetic xxx()` (原版) vs `public xxx()` (新版)：
     javac 只在真正的泛型協變覆寫時才會自動產生 bridge/synthetic flag，
     手動寫的等價 override 不會有這個 flag，純 metadata 差異不影響行為。
   - `access$NNN(...)` synthetic accessor method 在原版存在、新版消失：
     通常是因為新版把對應的 private 方法/欄位改成 package-private 或
     public，讓 inner class 可以直接呼叫，不需要 synthetic bridge。
   - 分支極性反轉（例如原版 `if-ltz v, :cond_X ... :cond_X: return v`
     vs 新版 `if-gez v, :cond_Y; return v; :cond_Y: ...`）：只要兩邊
     control flow 收斂到同一個結果就是同語意，**但要小心：如果兩個比較用
     的是 `cmpg-double`/`cmpl-double` 中不同的那個變成不一致，就不是純
     極性反轉，是真正的 NaN 語意差異**（DoublePreference/
     ShrinkRatioPreference 就是這樣被抓出來的真 bug，見上方「已知手動
     重建」章節）——這是本 session 學到的重要陷阱，`d >= X && d <= Y`
     這種雙邊 range check 每次遇到都要額外核對 cmpg/cmpl 有沒有對應正確。
7. ~~剩餘 21 個未勾選檔案~~ **已完成 20/21**：`AccessibilityHelper`
   `Camera2ImageQualitySettings` `Camera2ParamsFragment`
   `FooterButtonsFragment` `InfoIconsFragment` `InternalSettings`
   `MorphoCamera1` `MorphoPanoramaGP2`（★ 修正一個真 bug，見上方）
   `PanoramaGP2LocationManager` `SensorFusion` `SettingList`
   `SettingSubList` `ThermalAlertReceiver` `Util` `base.SettingListBase`
   `dialog.AlertOkDialog` `dialog.AlertSettingDialog` `dialog.LicenseDialog`
   `dialog.RotatableDialog` `dialog.RotatableDialogFragment` 皆已核對
   （含 inner classes：注意有些檔案的匿名內部類別在原版/新版之間編號不同，
   例如 `InternalSettings$2` 對應新版 `InternalSettings$AnonymousClass2`，
   或 `Camera2ParamsFragment` 的 `$2`~`$6` 匿名 listener 跟原版的對應關係
   要用 `.implements`/欄位存取內容去配對，不能只看檔名編號），皆為已知
   良性差異或已修正的真 bug，無其他問題。**只剩 `Camera2App` 本體未完成**，
   是下一 session 唯一剩餘項目。
8. ~~`Camera2App.java`（6000+ 行）分段核對~~ **已完成**。做法紀錄：
   - 內部類別用 `.super`/`.implements` + 內容相似度自動配對（原版 66 個 smali、
     新版 65 個，匿名類別編號完全對不上；原版的 3 個
     `$$ExternalSyntheticLambda*` 在新版變回一般匿名類別；原版的
     `$18`/`$29` 跟新版 `$19`/`$32` 是交叉對應，要用
     `EnclosingMethod` annotation 確認，不能只看相似度）。
   - 比對工具除了逐行 unified diff，另加一支「指令多重集合（multiset）比較」
     ——把方法內指令去掉 label/goto/move 之後做 Counter 相減，可以一眼濾掉
     純區塊重排的雜訊，只留下真正多出來/少掉的指令。抓
     `div-int` vs `div-float`、`cmpg` vs `cmpl` 這類真 bug 非常有效。
   - 外層類別把方法簽章的存取修飾字（private/public/…）正規化後再配對，
     否則「private 改成 public 以消除 access$ bridge」會讓 130 個方法被誤判
     成「只有原版有」。

9. 記得遵守使用者的硬性限制：**不要 push 任何分支到 origin**（只能本地
   commit，push 由使用者決定）；子 agent 並發數上限 2（含自己）。
