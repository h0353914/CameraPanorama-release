.class abstract Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;
.super Landroid/preference/DialogPreference;
.source "EditTextPreferenceDialog.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefValue:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mContext:Landroid/content/Context;

    .line 33
    const-string p1, ""

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mValue:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mDefValue:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->setDefValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract getInputType()I
.end method

.method protected abstract isValidInputText(Ljava/lang/String;)Z
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0022

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mDefValue:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mValue:Ljava/lang/String;

    const v1, 0x7f080059

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mEditText:Landroid/widget/EditText;

    .line 60
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->getInputType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v1, "Clearing the text, return to the initial value."

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mDefValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mValue:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->isValidInputText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 80
    :cond_2
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mValue:Ljava/lang/String;

    .line 82
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mValue:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDefValue(Ljava/lang/String;)V
    .locals 2

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mDefValue:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mDefValue:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mValue:Ljava/lang/String;

    return-void
.end method

.method public setSummary()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->mValue:Ljava/lang/String;

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
