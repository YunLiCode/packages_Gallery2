.class final Lcom/android/camera/PhotoModule$ShutterCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field private mAnimateFlash:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoModule;Z)V
    .locals 0
    .param p2, "animateFlash"    # Z

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput-boolean p2, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->mAnimateFlash:Z

    .line 741
    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/camera/PhotoModule;->access$3102(Lcom/android/camera/PhotoModule;J)J

    .line 746
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3100(Lcom/android/camera/PhotoModule;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v3, v3, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/PhotoModule;->mShutterLag:J

    .line 747
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    iget-wide v2, v2, Lcom/android/camera/PhotoModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->mAnimateFlash:Z

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mFlashRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$3200(Lcom/android/camera/PhotoModule;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 751
    :cond_0
    return-void
.end method
