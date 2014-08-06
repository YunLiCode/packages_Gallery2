.class Lcom/android/gallery3d/app/PhotoPage$5;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "PhotoPage.java"


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
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/android/gallery3d/ui/GLRoot;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 296
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 408
    :pswitch_0
    new-instance v8, Ljava/lang/AssertionError;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(I)V

    throw v8

    .line 298
    :pswitch_1
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->hideBars()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$900(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 302
    :pswitch_2
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPageBottomControls;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 303
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1

    const/4 v8, 0x1

    :goto_1
    # setter for: Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama:Z
    invoke-static {v9, v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1102(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 304
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    const/4 v8, 0x1

    :goto_2
    # setter for: Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama360:Z
    invoke-static {v9, v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1202(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 305
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPageBottomControls;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->refresh()V

    goto :goto_0

    .line 303
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 304
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 310
    :pswitch_3
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 311
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v9

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_3

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Lcom/android/gallery3d/app/AppBridge;->onFullScreenChanged(Z)V

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 316
    :pswitch_4
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1400(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 320
    :pswitch_5
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->wantBars()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1500(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 324
    :pswitch_6
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v8, v8, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    goto :goto_0

    .line 328
    :pswitch_7
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1600(Lcom/android/gallery3d/app/PhotoPage;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 329
    .local v2, "nextUpdate":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_4

    .line 330
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v9, 0x0

    # setter for: Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/PhotoPage;->access$1702(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 331
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1800(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 333
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xe

    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 338
    .end local v2    # "nextUpdate":J
    :pswitch_8
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v9, 0x0

    # setter for: Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/PhotoPage;->access$1902(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 339
    const/4 v7, 0x0

    .line 340
    .local v7, "stayedOnCamera":Z
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v8

    if-nez v8, :cond_5

    .line 341
    const/4 v7, 0x1

    .line 350
    :goto_4
    if-eqz v7, :cond_0

    .line 351
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/FilterDeleteSet;->getTotalMediaItemCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_8

    .line 352
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2200(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 357
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/PhotoView;->switchToImage(I)V

    goto/16 :goto_0

    .line 342
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$2000(Lcom/android/gallery3d/app/PhotoPage;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    .line 344
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/PhotoView;->switchToImage(I)V

    goto :goto_4

    .line 346
    :cond_6
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 347
    :cond_7
    const/4 v7, 0x1

    goto :goto_4

    .line 359
    :cond_8
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1400(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 360
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoPage;->access$2300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/PhotoPage;->access$2400(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    .line 366
    .end local v7    # "stayedOnCamera":Z
    :pswitch_9
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v8

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_0

    .line 368
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto/16 :goto_0

    .line 373
    :pswitch_a
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    .line 374
    .local v5, "photo":Lcom/android/gallery3d/data/MediaItem;
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v9, 0x0

    # setter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/PhotoPage;->access$102(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/data/MediaItem;

    .line 375
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v8, v5}, Lcom/android/gallery3d/app/PhotoPage;->access$2400(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    .line 379
    .end local v5    # "photo":Lcom/android/gallery3d/data/MediaItem;
    :pswitch_b
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1800(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 383
    :pswitch_c
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2500(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 387
    :pswitch_d
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v8, v9, :cond_0

    .line 388
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_a

    const/4 v1, 0x1

    .line 389
    .local v1, "isPanorama360":Z
    :goto_5
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 390
    .local v0, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 391
    .local v4, "panoramaIntent":Landroid/content/Intent;
    if-eqz v1, :cond_9

    .line 392
    # invokes: Lcom/android/gallery3d/app/PhotoPage;->createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$2600(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 394
    :cond_9
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2700(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;

    move-result-object v6

    .line 396
    .local v6, "shareIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v8, v4, v6, v9}, Lcom/android/gallery3d/app/GalleryActionBar;->setShareIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 397
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->setNfcBeamPushUri(Landroid/net/Uri;)V
    invoke-static {v8, v0}, Lcom/android/gallery3d/app/PhotoPage;->access$2800(Lcom/android/gallery3d/app/PhotoPage;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 388
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "isPanorama360":Z
    .end local v4    # "panoramaIntent":Landroid/content/Intent;
    .end local v6    # "shareIntent":Landroid/content/Intent;
    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    .line 402
    :pswitch_e
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v8, v9, :cond_0

    .line 403
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_b

    const/4 v1, 0x1

    .line 404
    .restart local v1    # "isPanorama360":Z
    :goto_6
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$5;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->updatePanoramaUI(Z)V
    invoke-static {v8, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$2900(Lcom/android/gallery3d/app/PhotoPage;Z)V

    goto/16 :goto_0

    .line 403
    .end local v1    # "isPanorama360":Z
    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
