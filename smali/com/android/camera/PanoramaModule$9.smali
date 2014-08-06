.class Lcom/android/camera/PanoramaModule$9;
.super Ljava/lang/Thread;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->saveHighResMosaic()V
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
    .line 798
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 801
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$3200(Lcom/android/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 804
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/PanoramaModule;->generateFinalMosaic(Z)Lcom/android/camera/PanoramaModule$MosaicJpeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 806
    .local v0, "jpeg":Lcom/android/camera/PanoramaModule$MosaicJpeg;
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$3200(Lcom/android/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 809
    if-nez v0, :cond_0

    .line 810
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$2200(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 823
    :goto_0
    return-void

    .line 806
    .end local v0    # "jpeg":Lcom/android/camera/PanoramaModule$MosaicJpeg;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/camera/PanoramaModule;->access$3200(Lcom/android/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 811
    .restart local v0    # "jpeg":Lcom/android/camera/PanoramaModule$MosaicJpeg;
    :cond_0
    iget-boolean v3, v0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->isValid:Z

    if-nez v3, :cond_1

    .line 812
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$2200(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 814
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    # invokes: Lcom/android/camera/PanoramaModule;->getCaptureOrientation()I
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$3300(Lcom/android/camera/PanoramaModule;)I

    move-result v1

    .line 815
    .local v1, "orientation":I
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    iget-object v4, v0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->data:[B

    iget v5, v0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->width:I

    iget v6, v0, Lcom/android/camera/PanoramaModule$MosaicJpeg;->height:I

    # invokes: Lcom/android/camera/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;
    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/camera/PanoramaModule;->access$3400(Lcom/android/camera/PanoramaModule;[BIII)Landroid/net/Uri;

    move-result-object v2

    .line 816
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 817
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 818
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 820
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/PanoramaModule;->access$2200(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PanoramaModule$9;->this$0:Lcom/android/camera/PanoramaModule;

    # getter for: Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/PanoramaModule;->access$2200(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
