.class Lcom/android/photos/drawables/AutoThumbnailDrawable$1;
.super Ljava/lang/Object;
.source "AutoThumbnailDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/drawables/AutoThumbnailDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;


# direct methods
.method constructor <init>(Lcom/android/photos/drawables/AutoThumbnailDrawable;)V
    .locals 0

    .prologue
    .line 225
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable$1;, "Lcom/android/photos/drawables/AutoThumbnailDrawable.1;"
    iput-object p1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 229
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable$1;, "Lcom/android/photos/drawables/AutoThumbnailDrawable.1;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$000(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 230
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    iget-object v2, v11, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mData:Ljava/lang/Object;

    .line 231
    .local v2, "data":Ljava/lang/Object;, "TT;"
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    const/4 v8, 0x1

    .line 233
    .local v8, "preferredSampleSize":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v11, v2}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->getPreferredImageBytes(Ljava/lang/Object;)[B

    move-result-object v7

    .line 234
    .local v7, "preferred":[B
    if-eqz v7, :cond_2

    array-length v11, v7

    if-lez v11, :cond_2

    const/4 v4, 0x1

    .line 235
    .local v4, "hasPreferred":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 236
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 237
    const/4 v11, 0x0

    array-length v12, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v13}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v13

    invoke-static {v7, v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 238
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 241
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$000(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 242
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v11, v2}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->dataChangedLocked(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 243
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 296
    :cond_1
    :goto_1
    return-void

    .line 231
    .end local v2    # "data":Ljava/lang/Object;, "TT;"
    .end local v4    # "hasPreferred":Z
    .end local v7    # "preferred":[B
    .end local v8    # "preferredSampleSize":I
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 234
    .restart local v2    # "data":Ljava/lang/Object;, "TT;"
    .restart local v7    # "preferred":[B
    .restart local v8    # "preferredSampleSize":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 245
    .restart local v4    # "hasPreferred":Z
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mImageWidth:I
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$200(Lcom/android/photos/drawables/AutoThumbnailDrawable;)I

    move-result v10

    .line 246
    .local v10, "width":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mImageHeight:I
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$300(Lcom/android/photos/drawables/AutoThumbnailDrawable;)I

    move-result v5

    .line 247
    .local v5, "height":I
    if-eqz v4, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v13}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v13

    iget v13, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v14}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    iget v14, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    # invokes: Lcom/android/photos/drawables/AutoThumbnailDrawable;->calculateSampleSizeLocked(II)I
    invoke-static {v11, v13, v14}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$400(Lcom/android/photos/drawables/AutoThumbnailDrawable;II)I

    move-result v8

    .line 251
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # invokes: Lcom/android/photos/drawables/AutoThumbnailDrawable;->calculateSampleSizeLocked(II)I
    invoke-static {v11, v10, v5}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$400(Lcom/android/photos/drawables/AutoThumbnailDrawable;II)I

    move-result v9

    .line 252
    .local v9, "sampleSize":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    const/4 v13, 0x0

    # setter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mIsQueued:Z
    invoke-static {v11, v13}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$502(Lcom/android/photos/drawables/AutoThumbnailDrawable;Z)Z

    .line 253
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "b":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 257
    .local v6, "is":Ljava/io/InputStream;
    if-eqz v4, :cond_5

    .line 258
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    iput v8, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 259
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->sBitmapPool:Lcom/android/photos/data/GalleryBitmapPool;
    invoke-static {}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$600()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v13}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v13

    iget v13, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v13, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v14}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    iget v14, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v14, v8

    invoke-virtual {v12, v13, v14}, Lcom/android/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v11, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 262
    const/4 v11, 0x0

    array-length v12, v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v13}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v13

    invoke-static {v7, v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 263
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    iget-object v11, v11, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    iget-object v11, v11, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v11, :cond_5

    .line 264
    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->sBitmapPool:Lcom/android/photos/data/GalleryBitmapPool;
    invoke-static {}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$600()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    iget-object v12, v12, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v12}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    const/4 v12, 0x0

    iput-object v12, v11, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 268
    :cond_5
    if-nez v1, :cond_6

    .line 269
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v11, v2}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->getFallbackImageStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v6

    .line 270
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    iput v9, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 271
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->sBitmapPool:Lcom/android/photos/data/GalleryBitmapPool;
    invoke-static {}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$600()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v12

    div-int v13, v10, v9

    div-int v14, v5, v9

    invoke-virtual {v12, v13, v14}, Lcom/android/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v11, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 272
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    invoke-static {v6, v11, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 273
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    iget-object v11, v11, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    iget-object v11, v11, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v11, :cond_6

    .line 274
    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->sBitmapPool:Lcom/android/photos/data/GalleryBitmapPool;
    invoke-static {}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$600()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    iget-object v12, v12, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11, v12}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 275
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v11

    const/4 v12, 0x0

    iput-object v12, v11, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 283
    :cond_6
    if-eqz v6, :cond_7

    .line 284
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 287
    :cond_7
    :goto_2
    if-eqz v1, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$000(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 289
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v11, v2}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->dataChangedLocked(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 290
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # invokes: Lcom/android/photos/drawables/AutoThumbnailDrawable;->setBitmapLocked(Landroid/graphics/Bitmap;)V
    invoke-static {v11, v1}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$700(Lcom/android/photos/drawables/AutoThumbnailDrawable;Landroid/graphics/Bitmap;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mUpdateBitmap:Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$800(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Runnable;

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 293
    :cond_8
    monitor-exit v12

    goto/16 :goto_1

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v11

    .line 253
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "height":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "sampleSize":I
    .end local v10    # "width":I
    :catchall_2
    move-exception v11

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v11

    .line 278
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    .restart local v5    # "height":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v9    # "sampleSize":I
    .restart local v10    # "width":I
    :catch_0
    move-exception v3

    .line 279
    .local v3, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v11, "AutoThumbnailDrawable"

    const-string v12, "Failed to fetch bitmap"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 283
    if-eqz v6, :cond_9

    .line 284
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 287
    :cond_9
    :goto_3
    if-eqz v1, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$000(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 289
    :try_start_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v11, v2}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->dataChangedLocked(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 290
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # invokes: Lcom/android/photos/drawables/AutoThumbnailDrawable;->setBitmapLocked(Landroid/graphics/Bitmap;)V
    invoke-static {v11, v1}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$700(Lcom/android/photos/drawables/AutoThumbnailDrawable;Landroid/graphics/Bitmap;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mUpdateBitmap:Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$800(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Runnable;

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v13, v14, v15}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 293
    :cond_a
    monitor-exit v12

    goto/16 :goto_1

    :catchall_3
    move-exception v11

    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v11

    .line 282
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v11

    .line 283
    if-eqz v6, :cond_b

    .line 284
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 287
    :cond_b
    :goto_4
    if-eqz v1, :cond_d

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$000(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 289
    :try_start_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v13, v2}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->dataChangedLocked(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # invokes: Lcom/android/photos/drawables/AutoThumbnailDrawable;->setBitmapLocked(Landroid/graphics/Bitmap;)V
    invoke-static {v13, v1}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$700(Lcom/android/photos/drawables/AutoThumbnailDrawable;Landroid/graphics/Bitmap;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/android/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/android/photos/drawables/AutoThumbnailDrawable;->mUpdateBitmap:Ljava/lang/Runnable;
    invoke-static {v14}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->access$800(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Runnable;

    move-result-object v14

    const-wide/16 v15, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 293
    :cond_c
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_d
    throw v11

    :catchall_5
    move-exception v11

    :try_start_d
    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v11

    .line 286
    :catch_1
    move-exception v11

    goto/16 :goto_2

    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    goto :goto_3

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v12

    goto :goto_4
.end method
