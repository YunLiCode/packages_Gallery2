.class Lcom/android/gallery3d/app/PhotoPage$6;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 3
    .param p1, "loadingFailed"    # Z

    .prologue
    .line 546
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$2300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$2300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 548
    .local v0, "photo":Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->access$2400(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 557
    .end local v0    # "photo":Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$3200(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$2100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->getNumberOfDeletions()I

    move-result v1

    if-nez v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method public onPhotoChanged(ILcom/android/gallery3d/data/Path;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/android/gallery3d/data/Path;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 509
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3000(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v0

    .line 510
    .local v0, "oldIndex":I
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # setter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2, p1}, Lcom/android/gallery3d/app/PhotoPage;->access$3002(Lcom/android/gallery3d/app/PhotoPage;I)I

    .line 512
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3100(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3000(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v2

    if-lez v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # setter for: Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v2, v7}, Lcom/android/gallery3d/app/PhotoPage;->access$1902(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 517
    :cond_0
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3000(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 519
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 520
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 521
    const-string v2, "CameraToFilmstrip"

    const-string v3, "Swipe"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$1900(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 534
    if-eqz p2, :cond_2

    .line 535
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$2300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 536
    .local v1, "photo":Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v2, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$2400(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 538
    .end local v1    # "photo":Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$1400(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 541
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$400(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 542
    return-void

    .line 524
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3000(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 525
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x12c

    add-long/2addr v3, v5

    # setter for: Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J
    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/app/PhotoPage;->access$2002(Lcom/android/gallery3d/app/PhotoPage;J)J

    .line 527
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->stopScrolling()V

    goto :goto_0

    .line 528
    :cond_5
    if-lt v0, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3000(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v2

    if-nez v2, :cond_1

    .line 529
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 530
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$6;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # setter for: Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/PhotoPage;->access$1902(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    goto :goto_0
.end method
