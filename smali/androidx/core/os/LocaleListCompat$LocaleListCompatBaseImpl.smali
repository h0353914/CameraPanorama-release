.class Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/LocaleListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocaleListCompatBaseImpl"
.end annotation


# instance fields
.field private mLocaleList:Landroidx/core/os/LocaleListHelper;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroidx/core/os/LocaleListHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    check-cast p1, Landroidx/core/os/LocaleListCompat;

    invoke-virtual {p1}, Landroidx/core/os/LocaleListCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/os/LocaleListHelper;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/util/Locale;
    .locals 0

    .line 53
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {p0, p1}, Landroidx/core/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 0

    .line 96
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Landroidx/core/os/LocaleListHelper;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 80
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {p0}, Landroidx/core/os/LocaleListHelper;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 0

    .line 70
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {p0, p1}, Landroidx/core/os/LocaleListHelper;->indexOf(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 58
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {p0}, Landroidx/core/os/LocaleListHelper;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public varargs setLocaleList([Ljava/util/Locale;)V
    .locals 1

    .line 43
    new-instance v0, Landroidx/core/os/LocaleListHelper;

    invoke-direct {v0, p1}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    return-void
.end method

.method public size()I
    .locals 0

    .line 64
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {p0}, Landroidx/core/os/LocaleListHelper;->size()I

    move-result p0

    return p0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {p0}, Landroidx/core/os/LocaleListHelper;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {p0}, Landroidx/core/os/LocaleListHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
