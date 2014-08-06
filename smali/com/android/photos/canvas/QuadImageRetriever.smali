.class public Lcom/android/photos/canvas/QuadImageRetriever;
.super Ljava/lang/Object;
.source "QuadImageRetriever.java"

# interfaces
.implements Lcom/android/photos/data/MediaRetriever;


# static fields
.field private static final PROJECTION_IMAGE_URI:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mConsumedPositions:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mRandom:Ljava/util/Random;

.field private mResolver:Landroid/content/ContentResolver;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 41
    const-class v0, Lcom/android/photos/canvas/QuadImageRetriever;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/QuadImageRetriever;->TAG:Ljava/lang/String;

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "image_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/photos/canvas/QuadImageRetriever;->PROJECTION_IMAGE_URI:[Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/photos/canvas/QuadImageRetriever;->sUriMatcher:Landroid/content/UriMatcher;

    .line 62
    sget-object v0, Lcom/android/photos/canvas/QuadImageRetriever;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "quad/*/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/android/photos/canvas/QuadImageRetriever;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "browse/album/*/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    .line 53
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mRandom:Ljava/util/Random;

    .line 54
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mCanvas:Landroid/graphics/Canvas;

    .line 55
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mConsumedPositions:[I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mResolver:Landroid/content/ContentResolver;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mResources:Landroid/content/res/Resources;

    .line 70
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 73
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v1, v2

    .line 77
    .local v1, "shadowRadius":F
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 78
    .local v0, "shadowColor":I
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v6, v6, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 79
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 80
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 81
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 82
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 83
    return-void
.end method

.method private createAllPhotosCover(J)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "albumId"    # J

    .prologue
    const/high16 v7, 0x40000000

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/android/photos/canvas/QuadImageRetriever;->createQuadBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 214
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 216
    .local v2, "thumbnailSize":I
    iget-object v4, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b014f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "allPhotosText":Ljava/lang/String;
    int-to-float v4, v2

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    sub-float v3, v4, v5

    .line 218
    .local v3, "y":F
    iget-object v4, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    int-to-float v6, v2

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 219
    return-object v1
.end method

.method private createQuadBitmap(J)Landroid/graphics/Bitmap;
    .locals 23
    .param p1, "albumId"    # J

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/QuadImageRetriever;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/photos/canvas/QuadImageRetriever;->PROJECTION_IMAGE_URI:[Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/photos/canvas/GalleryCanvasUtils;->queryPhotos(Landroid/content/ContentResolver;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v7

    .line 165
    .local v7, "images":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-nez v19, :cond_1

    .line 166
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/photos/canvas/QuadImageRetriever;->getDefaultAllPhotosBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 209
    :goto_0
    return-object v4

    .line 169
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/QuadImageRetriever;->mRandom:Ljava/util/Random;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    const/4 v10, 0x1

    .line 171
    .local v10, "numImages":I
    :goto_1
    sget-object v19, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-static/range {v19 .. v19}, Lcom/android/photos/data/MediaCacheUtils;->getTargetSize(Lcom/android/photos/data/MediaRetriever$MediaSize;)I

    move-result v16

    .line 172
    .local v16, "thumbnailSize":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_4

    move/from16 v9, v16

    .line 174
    .local v9, "miniThumbSize":I
    :goto_2
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v11

    .line 175
    .local v11, "pool":Lcom/android/photos/data/GalleryBitmapPool;
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lcom/android/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 176
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_2

    .line 177
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move/from16 v1, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 179
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/QuadImageRetriever;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    :try_start_0
    invoke-virtual {v11, v9, v9}, Lcom/android/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 183
    .local v14, "smallBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v10, :cond_5

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/QuadImageRetriever;->mConsumedPositions:[I

    move-object/from16 v19, v0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v6, v2}, Lcom/android/photos/canvas/QuadImageRetriever;->nextRandom([III)I

    move-result v12

    .line 185
    .local v12, "position":I
    invoke-interface {v7, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/QuadImageRetriever;->mConsumedPositions:[I

    move-object/from16 v19, v0

    aput v12, v19, v6

    .line 187
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, "previewUri":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v13, v9, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    .line 190
    .local v15, "smallThumbUri":Ljava/lang/String;
    const/4 v8, 0x0

    .line 192
    .local v8, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v15}, Lcom/google/android/picasastore/HttpUtils;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v14, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 194
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 195
    div-int/lit8 v19, v6, 0x2

    mul-int v17, v19, v9

    .line 196
    .local v17, "x":I
    rem-int/lit8 v19, v6, 0x2

    mul-int v18, v19, v9

    .line 197
    .local v18, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/QuadImageRetriever;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/canvas/QuadImageRetriever;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 170
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "i":I
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "miniThumbSize":I
    .end local v10    # "numImages":I
    .end local v11    # "pool":Lcom/android/photos/data/GalleryBitmapPool;
    .end local v12    # "position":I
    .end local v13    # "previewUri":Ljava/lang/String;
    .end local v14    # "smallBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "smallThumbUri":Ljava/lang/String;
    .end local v16    # "thumbnailSize":I
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_3
    const/4 v10, 0x4

    goto/16 :goto_1

    .line 172
    .restart local v10    # "numImages":I
    .restart local v16    # "thumbnailSize":I
    :cond_4
    div-int/lit8 v9, v16, 0x2

    goto/16 :goto_2

    .line 199
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "i":I
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "miniThumbSize":I
    .restart local v11    # "pool":Lcom/android/photos/data/GalleryBitmapPool;
    .restart local v12    # "position":I
    .restart local v13    # "previewUri":Ljava/lang/String;
    .restart local v14    # "smallBitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "smallThumbUri":Ljava/lang/String;
    :catchall_0
    move-exception v19

    :try_start_3
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v19
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    .end local v6    # "i":I
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v12    # "position":I
    .end local v13    # "previewUri":Ljava/lang/String;
    .end local v14    # "smallBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "smallThumbUri":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 204
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v19, Lcom/android/photos/canvas/QuadImageRetriever;->TAG:Ljava/lang/String;

    const-string v20, "Could not download thumbnail"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/android/photos/canvas/QuadImageRetriever;->getDefaultAllPhotosBitmap()Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .line 207
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 202
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "i":I
    .restart local v14    # "smallBitmap":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_5
    invoke-virtual {v11, v14}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v6    # "i":I
    .end local v14    # "smallBitmap":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v19

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v19
.end method

.method private getDefaultAllPhotosBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const v4, 0x7f030001

    .line 151
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 153
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 154
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v1

    .line 155
    .local v1, "pool":Lcom/android/photos/data/GalleryBitmapPool;
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v3, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 157
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 158
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mBitmapFactoryOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private nextRandom([III)I
    .locals 4
    .param p1, "previousRandom"    # [I
    .param p2, "index"    # I
    .param p3, "count"    # I

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/photos/canvas/QuadImageRetriever;->mRandom:Ljava/util/Random;

    sub-int v3, p3, p2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 142
    .local v1, "newIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 143
    aget v2, p1, v0

    if-gt v2, v1, :cond_0

    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    return v1
.end method


# virtual methods
.method public getFastImageSize(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Lcom/android/photos/data/MediaRetriever$MediaSize;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMedia(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Z
    .locals 10
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "imageSize"    # Lcom/android/photos/data/MediaRetriever$MediaSize;
    .param p3, "tempFile"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 102
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 103
    .local v0, "albumId":J
    sget-object v8, Lcom/android/photos/canvas/QuadImageRetriever;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 104
    .local v4, "match":I
    const/4 v2, 0x0

    .line 105
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    packed-switch v4, :pswitch_data_0

    .line 114
    :goto_0
    if-nez v2, :cond_0

    .line 124
    :goto_1
    return v7

    .line 107
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/photos/canvas/QuadImageRetriever;->createQuadBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 108
    goto :goto_0

    .line 110
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/photos/canvas/QuadImageRetriever;->createAllPhotosCover(J)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 117
    :cond_0
    const/4 v5, 0x0

    .line 119
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v2, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    const/4 v7, 0x1

    goto :goto_1

    .line 122
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 122
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTemporaryImage(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)[B
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "temporarySize"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public normalizeMediaSize(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Lcom/android/photos/data/MediaRetriever$MediaSize;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 135
    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    return-object v0
.end method

.method public normalizeUri(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Landroid/net/Uri;
    .locals 0
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 130
    return-object p1
.end method
