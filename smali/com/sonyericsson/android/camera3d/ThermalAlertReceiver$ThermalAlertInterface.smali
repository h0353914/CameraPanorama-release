.class public interface abstract Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThermalAlertInterface"
.end annotation


# virtual methods
.method public abstract onTemperatureAlreadyHigh()V
.end method

.method public abstract onTemperatureReachedHigh()V
.end method

.method public abstract onTemperatureReachingHigh()V
.end method
