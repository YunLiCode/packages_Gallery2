.class Lcom/android/camera/PhotoModule$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->interrupt()V

    .line 282
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 293
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mCameraId:I
    invoke-static {v3}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    # setter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$702(Lcom/android/camera/PhotoModule;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;

    .line 295
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v2, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v2}, Lcom/android/camera/PhotoModule;->access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    # setter for: Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$902(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 298
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    iget-object v1, v1, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 300
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # invokes: Lcom/android/camera/PhotoModule;->initializeCapabilities()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)V

    .line 301
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # invokes: Lcom/android/camera/PhotoModule;->initializeFocusManager()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1200(Lcom/android/camera/PhotoModule;)V

    .line 302
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v2, -0x1

    # invokes: Lcom/android/camera/PhotoModule;->setCameraParameters(I)V
    invoke-static {v1, v2}, Lcom/android/camera/PhotoModule;->access$1300(Lcom/android/camera/PhotoModule;I)V

    .line 304
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # invokes: Lcom/android/camera/PhotoModule;->startPreview()V
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1500(Lcom/android/camera/PhotoModule;)V

    .line 307
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/camera/PhotoModule;->mOnResumeTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/PhotoModule;->access$1602(Lcom/android/camera/PhotoModule;J)J

    .line 309
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 312
    .end local v0    # "e":Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 313
    .local v0, "e":Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/PhotoModule$CameraStartUpThread;->this$0:Lcom/android/camera/PhotoModule;

    # getter for: Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
