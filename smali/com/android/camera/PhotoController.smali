.class public interface abstract Lcom/android/camera/PhotoController;
.super Ljava/lang/Object;
.source "PhotoController.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# virtual methods
.method public abstract cancelAutoFocus()V
.end method

.method public abstract getCameraState()I
.end method

.method public abstract isCameraIdle()Z
.end method

.method public abstract isImageCaptureIntent()Z
.end method

.method public abstract onCaptureCancelled()V
.end method

.method public abstract onCaptureDone()V
.end method

.method public abstract onCaptureRetake()V
.end method

.method public abstract onScreenSizeChanged(IIII)V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract onSurfaceCreated(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract onZoomChanged(I)I
.end method

.method public abstract stopPreview()V
.end method
