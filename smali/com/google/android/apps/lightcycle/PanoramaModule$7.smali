.class Lcom/google/android/apps/lightcycle/PanoramaModule$7;
.super Landroid/os/Handler;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 295
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 337
    new-instance v3, Ljava/lang/AssertionError;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(I)V

    throw v3

    .line 297
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 298
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 299
    .local v2, "width":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 300
    .local v0, "height":I
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 301
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->resetOrientation()V

    .line 302
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->resizeFrameDisplay()V

    .line 303
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 304
    move v1, v2

    .line 305
    .local v1, "t":I
    move v2, v0

    .line 306
    move v0, v1

    .line 308
    .end local v1    # "t":I
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mScreenNail:Lcom/android/camera/CameraScreenNail;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1000(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 309
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 339
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 313
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # invokes: Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1100(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    goto :goto_0

    .line 316
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoButton:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v4

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 319
    :pswitch_3
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoButton:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 322
    :pswitch_4
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    invoke-static {v4}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v4

    # invokes: Lcom/google/android/apps/lightcycle/PanoramaModule;->startStitchService(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    invoke-static {v3, v4}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1400(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 323
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mIsPaused:Z
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # invokes: Lcom/google/android/apps/lightcycle/PanoramaModule;->stopCapture()V
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1600(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    .line 326
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # invokes: Lcom/google/android/apps/lightcycle/PanoramaModule;->startCapture()V
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1700(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    goto :goto_0

    .line 330
    :pswitch_5
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 334
    :pswitch_6
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$7;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    # getter for: Lcom/google/android/apps/lightcycle/PanoramaModule;->mPreviewThumb:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
