.class public Lcom/android/gallery3d/filtershow/cache/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static mZoomOrientation:I


# instance fields
.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mOrientation:I

.field private mOriginalBitmapHighres:Landroid/graphics/Bitmap;

.field private mOriginalBitmapLarge:Landroid/graphics/Bitmap;

.field private mOriginalBitmapSmall:Landroid/graphics/Bitmap;

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mUri:Landroid/net/Uri;

.field private mWarnListenersRunnable:Ljava/lang/Runnable;

.field private final mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomOrientation:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/content/Context;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    .line 69
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 70
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 71
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    .line 72
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 74
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/cache/ZoomCache;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomCache:Lcom/android/gallery3d/filtershow/cache/ZoomCache;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    .line 77
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 79
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 96
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    .line 97
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    .line 99
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 376
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$1;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mWarnListenersRunnable:Ljava/lang/Runnable;

    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 108
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    return-object v0
.end method

.method private convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 580
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public static decodeUriWithBackouts(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 441
    const/4 v3, 0x1

    .line 442
    .local v3, "noBitmap":Z
    const/4 v4, 0x0

    .line 443
    .local v4, "num_tries":I
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 445
    .local v2, "is":Ljava/io/InputStream;
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v6, v7, :cond_0

    .line 446
    iput v7, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 449
    :cond_0
    const/4 v0, 0x0

    .line 450
    .local v0, "bmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v3, :cond_3

    .line 451
    if-nez v2, :cond_1

    move-object v0, v5

    .line 471
    .end local v0    # "bmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 456
    .restart local v0    # "bmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v2, v6, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 457
    const/4 v3, 0x0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x5

    if-lt v4, v6, :cond_2

    .line 461
    throw v1

    .line 463
    :cond_2
    const/4 v2, 0x0

    .line 464
    const/4 v0, 0x0

    .line 465
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 466
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 467
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 470
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_3
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "requestFormat"    # Ljava/lang/String;

    .prologue
    .line 570
    if-nez p1, :cond_1

    const-string v0, "jpg"

    .line 573
    .local v0, "outputFormat":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 574
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "png"

    :goto_1
    return-object v1

    .end local v0    # "outputFormat":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 570
    goto :goto_0

    .line 574
    .restart local v0    # "outputFormat":Ljava/lang/String;
    :cond_2
    const-string v1, "jpg"

    goto :goto_1
.end method

.method private static getInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 477
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 483
    :goto_0
    return-object v1

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "ImageLoader"

    const-string v3, "could not load bitmap "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 481
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 155
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 157
    .local v10, "mimeType":Ljava/lang/String;
    const-string v0, "image/jpeg"

    if-eq v10, v0, :cond_0

    .line 158
    const/4 v12, -0x1

    .line 203
    .end local v10    # "mimeType":Ljava/lang/String;
    :goto_0
    return v12

    .line 160
    .restart local v10    # "mimeType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 161
    .local v13, "path":Ljava/lang/String;
    const/4 v12, -0x1

    .line 162
    .local v12, "orientation":I
    const/4 v9, 0x0

    .line 163
    .local v9, "is":Ljava/io/InputStream;
    new-instance v8, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v8}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 165
    .local v8, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v8, v13}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 166
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    goto :goto_0

    .line 168
    :catch_0
    move-exception v7

    .line 169
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "ImageLoader"

    const-string v1, "Failed to read EXIF orientation"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "exif":Lcom/android/gallery3d/exif/ExifInterface;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v12    # "orientation":I
    .end local v13    # "path":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    .line 175
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "orientation"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    .line 183
    .local v11, "ori":I
    sparse-switch v11, :sswitch_data_0

    .line 193
    const/4 v12, -0x1

    .line 203
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 185
    :sswitch_0
    const/4 v12, 0x1

    .line 203
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 187
    :sswitch_1
    const/4 v12, 0x6

    .line 203
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 189
    :sswitch_2
    const/16 v12, 0x8

    .line 203
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 191
    :sswitch_3
    const/4 v12, 0x3

    .line 203
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 196
    .end local v11    # "ori":I
    :cond_2
    const/4 v12, -0x1

    .line 203
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 198
    :catch_1
    move-exception v7

    .line 199
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v12, -0x1

    .line 203
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 200
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v7

    .line 201
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const/4 v12, -0x1

    .line 203
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    .line 183
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_3
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getZoomOrientation()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomOrientation:I

    return v0
.end method

.method public static loadMutableBitmap(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 428
    const/4 v2, 0x1

    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 430
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->decodeUriWithBackouts(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 431
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 432
    const/4 v2, 0x0

    .line 436
    :goto_0
    return-object v2

    .line 434
    :cond_0
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 435
    .local v1, "orientation":I
    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 436
    goto :goto_0
.end method

.method private loadRegionBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 269
    const/4 v2, 0x0

    .line 271
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 272
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 273
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v8

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 275
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {v3, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 284
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 286
    .end local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v3    # "r":Landroid/graphics/Rect;
    :goto_0
    return-object v4

    .line 278
    .restart local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v3    # "r":Landroid/graphics/Rect;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p3, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 284
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 279
    .end local v0    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v3    # "r":Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "ImageLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 281
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4
.end method

.method private loadScaledBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I

    .prologue
    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadScaledBitmap(Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadScaledBitmap(Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I
    .param p3, "enforceSize"    # Z

    .prologue
    .line 294
    const/4 v2, 0x0

    .line 296
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 297
    const-string v7, "ImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loading uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 300
    .local v3, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 301
    const/4 v7, 0x0

    invoke-static {v2, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 303
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 304
    .local v6, "width_tmp":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 306
    .local v1, "height_tmp":I
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    .line 308
    const/4 v5, 0x1

    .line 310
    .local v5, "scale":I
    :goto_0
    const/4 v7, 0x2

    if-le v6, v7, :cond_0

    const/4 v7, 0x2

    if-gt v1, v7, :cond_1

    .line 326
    :cond_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 327
    .local v4, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 328
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 330
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 331
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 332
    const/4 v7, 0x0

    invoke-static {v2, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 338
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 340
    .end local v1    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :goto_1
    return-object v7

    .line 313
    .restart local v1    # "height_tmp":I
    .restart local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "scale":I
    .restart local v6    # "width_tmp":I
    :cond_1
    if-eqz p3, :cond_2

    const/16 v7, 0x384

    if-gt v6, v7, :cond_3

    const/16 v7, 0x384

    if-gt v1, v7, :cond_3

    .line 316
    :cond_2
    :try_start_1
    div-int/lit8 v7, v6, 0x2

    if-lt v7, p2, :cond_0

    div-int/lit8 v7, v1, 0x2

    if-lt v7, p2, :cond_0

    .line 320
    :cond_3
    div-int/lit8 v6, v6, 0x2

    .line 321
    div-int/lit8 v1, v1, 0x2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    mul-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 333
    .end local v1    # "height_tmp":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    .end local v6    # "width_tmp":I
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v7, "ImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 340
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 335
    :catch_1
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v7
.end method

.method public static rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ori"    # I

    .prologue
    const/high16 v10, 0x43870000

    const/high16 v6, 0x42b40000

    const/high16 v4, 0x3f800000

    const/high16 v2, -0x40800000

    const/high16 v3, 0x40000000

    .line 224
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 226
    .local v9, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 227
    .local v7, "h":I
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 231
    :cond_0
    move v8, v9

    .line 232
    .local v8, "tmp":I
    move v9, v7

    .line 233
    move v7, v8

    .line 235
    .end local v8    # "tmp":I
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 264
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 237
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_0
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v6, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 264
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 240
    :pswitch_1
    const/high16 v0, 0x43340000

    int-to-float v1, v9

    div-float/2addr v1, v3

    int-to-float v2, v7

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 243
    :pswitch_2
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v10, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1

    .line 246
    :pswitch_3
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 249
    :pswitch_4
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 252
    :pswitch_5
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v6, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 253
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 256
    :pswitch_6
    int-to-float v0, v9

    div-float/2addr v0, v3

    int-to-float v1, v7

    div-float/2addr v1, v3

    invoke-virtual {v5, v10, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 257
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private updateBitmaps()V
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    .line 215
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    sput v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mZoomOrientation:I

    .line 216
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->warnListeners()V

    .line 217
    return-void
.end method

.method private warnListeners()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mWarnListenersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1
    .param p1, "imageShow"    # Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 366
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 370
    return-void
.end method

.method public decodeImage(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # I
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalBitmapHighres()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalBitmapLarge()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalBitmapSmall()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScaleOneImageForPreset(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "destination"    # Landroid/graphics/Rect;

    .prologue
    .line 388
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 389
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 390
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 391
    if-eqz p2, :cond_1

    .line 392
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 393
    const/4 v2, 0x1

    .line 394
    .local v2, "sampleSize":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 395
    .local v3, "w":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 396
    mul-int/lit8 v2, v2, 0x2

    .line 397
    div-int/2addr v3, v2

    goto :goto_0

    .line 399
    :cond_0
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 402
    .end local v2    # "sampleSize":I
    .end local v3    # "w":I
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v4, v1, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadRegionBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 404
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getXmpObject()Lcom/adobe/xmp/XMPMeta;
    .locals 4

    .prologue
    .line 634
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 635
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/gallery3d/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 637
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadBitmap(Landroid/net/Uri;I)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    .line 122
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOrientation:I

    .line 123
    const/16 v2, 0xa0

    invoke-direct {p0, p1, v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadScaledBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    .line 124
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapSmall:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 143
    :goto_0
    return v1

    .line 129
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadScaledBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    .line 130
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->supportsHighRes()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapLarge:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 136
    .local v0, "highresPreviewSize":I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 139
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->loadScaledBitmap(Landroid/net/Uri;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mOriginalBitmapHighres:Landroid/graphics/Bitmap;

    .line 141
    .end local v0    # "highresPreviewSize":I
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->updateBitmaps()V

    .line 142
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mLoadingLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 143
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public queryLightCycle360()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 647
    const/4 v5, 0x0

    .line 649
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 650
    invoke-static {v5}, Lcom/android/gallery3d/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 651
    .local v6, "meta":Lcom/adobe/xmp/XMPMeta;
    if-nez v6, :cond_0

    .line 681
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .end local v6    # "meta":Lcom/adobe/xmp/XMPMeta;
    :goto_0
    return v9

    .line 654
    .restart local v6    # "meta":Lcom/adobe/xmp/XMPMeta;
    :cond_0
    :try_start_1
    invoke-interface {v6}, Lcom/adobe/xmp/XMPMeta;->getPacketHeader()Ljava/lang/String;

    move-result-object v7

    .line 655
    .local v7, "name":Ljava/lang/String;
    const-string v8, "http://ns.google.com/photos/1.0/panorama/"

    .line 656
    .local v8, "namespace":Ljava/lang/String;
    const-string v1, "GPano:CroppedAreaImageWidthPixels"

    .line 657
    .local v1, "cropWidthName":Ljava/lang/String;
    const-string v4, "GPano:FullPanoWidthPixels"

    .line 659
    .local v4, "fullWidthName":Ljava/lang/String;
    invoke-interface {v6, v8, v1}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 681
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 662
    :cond_1
    :try_start_2
    invoke-interface {v6, v8, v4}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-nez v10, :cond_2

    .line 681
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 666
    :cond_2
    :try_start_3
    invoke-interface {v6, v8, v1}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 667
    .local v0, "cropValue":Ljava/lang/Integer;
    invoke-interface {v6, v8, v4}, Lcom/adobe/xmp/XMPMeta;->getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 671
    .local v3, "fullValue":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 672
    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    .line 681
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 676
    .end local v0    # "cropValue":Ljava/lang/Integer;
    .end local v1    # "cropWidthName":Ljava/lang/String;
    .end local v3    # "fullValue":Ljava/lang/Integer;
    .end local v4    # "fullWidthName":Ljava/lang/String;
    .end local v6    # "meta":Lcom/adobe/xmp/XMPMeta;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "namespace":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 681
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 678
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 681
    .local v2, "e":Lcom/adobe/xmp/XMPException;
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "e":Lcom/adobe/xmp/XMPException;
    :catchall_0
    move-exception v9

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v9
.end method

.method public returnFilteredResult(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 4
    .param p1, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .param p2, "filterShowActivity"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 516
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;

    invoke-direct {v0, p0, p2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$3;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    .line 566
    .local v0, "cb":Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;, "Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks<Lcom/android/gallery3d/filtershow/presets/ImagePreset;>;"
    new-instance v1, Lcom/android/gallery3d/filtershow/tools/BitmapTask;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/filtershow/tools/BitmapTask;-><init>(Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 567
    return-void
.end method

.method public saveImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V
    .locals 4
    .param p1, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .param p2, "filterShowActivity"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .param p3, "destination"    # Ljava/io/File;

    .prologue
    .line 409
    new-instance v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mUri:Landroid/net/Uri;

    new-instance v3, Lcom/android/gallery3d/filtershow/cache/ImageLoader$2;

    invoke-direct {v3, p0, p2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$2;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-direct {v0, v1, v2, p3, v3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 417
    return-void
.end method

.method public saveToUri(Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/String;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 7
    .param p1, "bmap"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "outputFormat"    # Ljava/lang/String;
    .param p4, "filterShowActivity"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 586
    const/4 v3, 0x0

    .line 588
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p4}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 593
    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v4, "ImageLoader"

    const-string v5, "cannot write output"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    const/4 v3, 0x0

    .line 593
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    .line 598
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    new-instance v2, Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 600
    .local v2, "ios":Lcom/android/gallery3d/util/InterruptableOutputStream;
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;

    invoke-direct {v0, p0, p4, v2, p3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader$4;-><init>(Lcom/android/gallery3d/filtershow/cache/ImageLoader;Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/util/InterruptableOutputStream;Ljava/lang/String;)V

    .line 621
    .local v0, "cb":Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;, "Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks<Landroid/graphics/Bitmap;>;"
    new-instance v4, Lcom/android/gallery3d/filtershow/tools/BitmapTask;

    invoke-direct {v4, v0}, Lcom/android/gallery3d/filtershow/tools/BitmapTask;-><init>(Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;)V

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/tools/BitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 593
    .end local v0    # "cb":Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;, "Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks<Landroid/graphics/Bitmap;>;"
    .end local v2    # "ios":Lcom/android/gallery3d/util/InterruptableOutputStream;
    :catchall_0
    move-exception v4

    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    .line 594
    throw v4
.end method

.method public setAdapter(Lcom/android/gallery3d/filtershow/HistoryAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->mAdapter:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 626
    return-void
.end method
