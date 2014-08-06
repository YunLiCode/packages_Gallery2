.class Lcom/android/camera/VideoModule$MainHandler;
.super Landroid/os/Handler;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoModule;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/VideoModule;
    .param p2, "x1"    # Lcom/android/camera/VideoModule$1;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 306
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 247
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$100(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # invokes: Lcom/android/camera/VideoModule;->updateRecordingTime()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$400(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 267
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$100(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/camera/VideoModule;->access$500(Lcom/android/camera/VideoModule;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$600(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mSwitchingCamera:Z
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$700(Lcom/android/camera/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # invokes: Lcom/android/camera/VideoModule;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$800(Lcom/android/camera/VideoModule;)V

    .line 271
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/camera/VideoModule;->access$900(Lcom/android/camera/VideoModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1000(Lcom/android/camera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 278
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # invokes: Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1100(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 283
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # invokes: Lcom/android/camera/VideoModule;->switchCamera()V
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$1200(Lcom/android/camera/VideoModule;)V

    goto :goto_0

    .line 288
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$100(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCamera()V

    .line 291
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # setter for: Lcom/android/camera/VideoModule;->mSwitchingCamera:Z
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->access$702(Lcom/android/camera/VideoModule;Z)Z

    goto/16 :goto_0

    .line 296
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideSurfaceView()V

    goto/16 :goto_0

    .line 301
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/VideoModule$MainHandler;->this$0:Lcom/android/camera/VideoModule;

    # getter for: Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;
    invoke-static {v0}, Lcom/android/camera/VideoModule;->access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enablePreviewThumb(Z)V

    goto/16 :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
