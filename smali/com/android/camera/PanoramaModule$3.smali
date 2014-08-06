.class Lcom/android/camera/PanoramaModule$3;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->configMosaicPreview(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;

.field final synthetic val$h:I

.field final synthetic val$isLandscape:Z

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule;IIZ)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    iput p2, p0, Lcom/android/camera/PanoramaModule$3;->val$w:I

    iput p3, p0, Lcom/android/camera/PanoramaModule$3;->val$h:I

    iput-boolean p4, p0, Lcom/android/camera/PanoramaModule$3;->val$isLandscape:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 464
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v1, v3, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    .line 465
    .local v1, "screenNail":Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 466
    .local v2, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-nez v2, :cond_0

    .line 467
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$400(Lcom/android/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 468
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    const/4 v5, 0x0

    # setter for: Lcom/android/camera/PanoramaModule;->mIsCreatingRenderer:Z
    invoke-static {v3, v5}, Lcom/android/camera/PanoramaModule;->access$1802(Lcom/android/camera/PanoramaModule;Z)Z

    .line 469
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$400(Lcom/android/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 470
    monitor-exit v4

    .line 485
    :goto_0
    return-void

    .line 471
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 473
    :cond_0
    new-instance v0, Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PanoramaModule$3;->val$w:I

    iget v5, p0, Lcom/android/camera/PanoramaModule$3;->val$h:I

    iget-boolean v6, p0, Lcom/android/camera/PanoramaModule$3;->val$isLandscape:Z

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/camera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZ)V

    .line 475
    .local v0, "renderer":Lcom/android/camera/MosaicPreviewRenderer;
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$400(Lcom/android/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 476
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    # setter for: Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v3, v0}, Lcom/android/camera/PanoramaModule;->access$502(Lcom/android/camera/PanoramaModule;Lcom/android/camera/MosaicPreviewRenderer;)Lcom/android/camera/MosaicPreviewRenderer;

    .line 477
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    iget-object v5, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v5}, Lcom/android/camera/PanoramaModule;->access$500(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    # setter for: Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v3, v5}, Lcom/android/camera/PanoramaModule;->access$1902(Lcom/android/camera/PanoramaModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 479
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mPaused:Z
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$300(Lcom/android/camera/PanoramaModule;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mThreadRunning:Z
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$2000(Lcom/android/camera/PanoramaModule;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$2100(Lcom/android/camera/PanoramaModule;)Landroid/os/AsyncTask;

    move-result-object v3

    if-nez v3, :cond_1

    .line 480
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$2200(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 482
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    const/4 v5, 0x0

    # setter for: Lcom/android/camera/PanoramaModule;->mIsCreatingRenderer:Z
    invoke-static {v3, v5}, Lcom/android/camera/PanoramaModule;->access$1802(Lcom/android/camera/PanoramaModule;Z)Z

    .line 483
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$3;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$400(Lcom/android/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 484
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method
