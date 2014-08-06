.class public interface abstract Lcom/android/camera/FocusOverlayManager$FocusUI;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FocusUI"
.end annotation


# virtual methods
.method public abstract clearFocus()V
.end method

.method public abstract hasFaces()Z
.end method

.method public abstract onFocusFailed(Z)V
.end method

.method public abstract onFocusStarted()V
.end method

.method public abstract onFocusSucceeded(Z)V
.end method

.method public abstract pauseFaceDetection()V
.end method

.method public abstract resumeFaceDetection()V
.end method

.method public abstract setFocusPosition(II)V
.end method
