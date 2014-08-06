.class Lcom/android/camera/PanoramaModule$1;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mPaused:Z
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$300(Lcom/android/camera/PanoramaModule;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    .line 250
    .local v0, "renderer":Lcom/android/camera/MosaicPreviewRenderer;
    iget-object v1, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$400(Lcom/android/camera/PanoramaModule;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$500(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 252
    monitor-exit v2

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 254
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$500(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;

    move-result-object v0

    .line 255
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    iget-object v1, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$600(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrameSync()V

    .line 258
    iget-object v1, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$600(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mCaptureState:I
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$700(Lcom/android/camera/PanoramaModule;)I

    move-result v1

    if-nez v1, :cond_3

    .line 261
    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->showPreviewFrame()V

    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/MosaicPreviewRenderer;->alignFrameSync()V

    .line 264
    iget-object v1, p0, Lcom/android/camera/PanoramaModule$1;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;
    invoke-static {v1}, Lcom/android/camera/PanoramaModule;->access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/MosaicFrameProcessor;->processFrame()V

    goto :goto_0
.end method
