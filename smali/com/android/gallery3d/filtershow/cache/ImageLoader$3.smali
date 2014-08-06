.class Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/cache/ImageLoader;->returnFilteredResult(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks",
        "<",
        "Lcom/android/gallery3d/filtershow/presets/ImagePreset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field final synthetic val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->val$filterShowActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->onFilteredResult(Landroid/graphics/Bitmap;)V

    .line 521
    return-void
.end method

.method public onExecute(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "param"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 529
    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    # getter for: Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->access$100(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_2

    :cond_0
    move-object v0, v6

    .line 562
    :cond_1
    :goto_0
    return-object v0

    .line 532
    :cond_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 533
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    .line 534
    .local v2, "noBitmap":Z
    const/4 v3, 0x0

    .line 535
    .local v3, "num_tries":I
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v7, v8, :cond_3

    .line 536
    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 538
    :cond_3
    const/4 v0, 0x0

    .line 540
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v2, :cond_1

    .line 543
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    # getter for: Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->access$200(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->this$0:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    # getter for: Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->access$100(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadMutableBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 544
    if-nez v0, :cond_4

    .line 545
    const-string v7, "ImageLoader"

    const-string v8, "Failed to save image!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 546
    goto :goto_0

    .line 548
    :cond_4
    new-instance v5, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v7

    const-string v8, "Saving"

    invoke-direct {v5, v7, v8}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;-><init>(Lcom/android/gallery3d/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    .line 550
    .local v5, "pipeline":Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
    invoke-virtual {v5, v0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->renderFinalImage(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 551
    const/4 v2, 0x0

    goto :goto_1

    .line 552
    .end local v5    # "pipeline":Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x5

    if-lt v3, v7, :cond_5

    .line 555
    throw v1

    .line 557
    :cond_5
    const/4 v0, 0x0

    .line 558
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 559
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v7, v7, 0x2

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1
.end method

.method public bridge synthetic onExecute(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 516
    check-cast p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;->onExecute(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
