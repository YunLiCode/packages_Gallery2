.class Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "FilterShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmapSize:I

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 1

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 462
    # invokes: Lcom/android/gallery3d/filtershow/FilterShowActivity;->getScreenImageSize()I
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$000(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    .line 463
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 467
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v0

    aget-object v1, p1, v3

    iget v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadBitmap(Landroid/net/Uri;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 470
    :cond_0
    new-array v0, v4, [Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->queryLightCycle360()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->publishProgress([Ljava/lang/Object;)V

    .line 471
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 458
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v9, 0x0

    .line 487
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v7, v7, Lcom/android/gallery3d/filtershow/FilterShowActivity;->mMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-static {v7}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setMaster(Lcom/android/gallery3d/filtershow/imageshow/MasterImage;)V

    .line 488
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 527
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 493
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->cannotLoadImage()V

    .line 496
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const v8, 0x7f0a009e

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 497
    .local v4, "loading":Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const v8, 0x7f0a00be

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 499
    .local v2, "imageShow":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    invoke-static {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 502
    .local v3, "largeBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->getPipeline()Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    move-result-object v5

    .line 503
    .local v5, "pipeline":Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;
    invoke-virtual {v5, v3}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->setOriginal(Landroid/graphics/Bitmap;)V

    .line 504
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    invoke-static {v8}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 505
    .local v6, "previewScale":F
    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->setPreviewScaleFactor(F)V

    .line 506
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    invoke-static {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapHighres()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 507
    .local v1, "highresBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 508
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    invoke-static {v8}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$100(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 509
    .local v0, "highResPreviewScale":F
    invoke-virtual {v5, v0}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->setHighResPreviewScaleFactor(F)V

    .line 511
    .end local v0    # "highResPreviewScale":F
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingTinyPlanet:Z
    invoke-static {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$200(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 512
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    invoke-static {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$300(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->removeTinyPlanet()V

    .line 514
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->turnOnPipeline(Z)V

    .line 515
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setOriginalGeometry(Landroid/graphics/Bitmap;)V

    .line 516
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    invoke-static {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$400(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->imageLoaded()V

    .line 517
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    invoke-static {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$500(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->imageLoaded()V

    .line 518
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    invoke-static {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$600(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->imageLoaded()V

    .line 519
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    invoke-static {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$300(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->imageLoaded()V

    .line 520
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v8, 0x0

    # setter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;
    invoke-static {v7, v8}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$702(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 522
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mAction:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$800(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.camera.action.TINY_PLANET"

    if-ne v7, v8, :cond_4

    .line 523
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # getter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;
    invoke-static {v8}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$300(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->getTinyPlanet()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 525
    :cond_4
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    # setter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mLoading:Z
    invoke-static {v7, v9}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$902(Lcom/android/gallery3d/filtershow/FilterShowActivity;Z)Z

    .line 526
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 458
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Boolean;

    .prologue
    .line 476
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 477
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/gallery3d/filtershow/FilterShowActivity;->mShowingTinyPlanet:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->access$202(Lcom/android/gallery3d/filtershow/FilterShowActivity;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 458
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$LoadBitmapTask;->onProgressUpdate([Ljava/lang/Boolean;)V

    return-void
.end method
