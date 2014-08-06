.class public Lcom/android/gallery3d/ingest/data/MtpBitmapFetch;
.super Ljava/lang/Object;
.source "MtpBitmapFetch.java"


# static fields
.field private static sMaxSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/android/gallery3d/ingest/data/MtpBitmapFetch;->sMaxSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureForContext(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 102
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 103
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lcom/android/gallery3d/ingest/data/MtpBitmapFetch;->sMaxSize:I

    .line 105
    return-void
.end method

.method public static getFullsize(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;
    .locals 1
    .param p0, "device"    # Landroid/mtp/MtpDevice;
    .param p1, "info"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    .line 66
    sget v0, Lcom/android/gallery3d/ingest/data/MtpBitmapFetch;->sMaxSize:I

    invoke-static {p0, p1, v0}, Lcom/android/gallery3d/ingest/data/MtpBitmapFetch;->getFullsize(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;I)Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getFullsize(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;I)Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;
    .locals 11
    .param p0, "device"    # Landroid/mtp/MtpDevice;
    .param p1, "info"    # Landroid/mtp/MtpObjectInfo;
    .param p2, "maxSide"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v8

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/mtp/MtpDevice;->getObject(II)[B

    move-result-object v3

    .line 71
    .local v3, "imageBytes":[B
    if-nez v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v7

    .line 75
    :cond_1
    if-lez p2, :cond_3

    .line 76
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 77
    .local v4, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 78
    array-length v8, v3

    invoke-static {v3, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 79
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 80
    .local v6, "w":I
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 81
    .local v2, "h":I
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 82
    .local v0, "comp":I
    const/4 v5, 0x1

    .line 83
    .local v5, "sampleSize":I
    :goto_1
    shr-int/lit8 v8, v0, 0x1

    if-lt v8, p2, :cond_2

    .line 84
    shr-int/lit8 v0, v0, 0x1

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 87
    :cond_2
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 88
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 89
    array-length v8, v3

    invoke-static {v3, v10, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 93
    .end local v0    # "comp":I
    .end local v2    # "h":I
    .end local v4    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "sampleSize":I
    .end local v6    # "w":I
    .local v1, "created":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v1, :cond_0

    .line 97
    new-instance v7, Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;

    invoke-static {v3}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v8

    invoke-direct {v7, v1, v8}, Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 91
    .end local v1    # "created":Landroid/graphics/Bitmap;
    :cond_3
    array-length v8, v3

    invoke-static {v3, v10, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "created":Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public static getThumbnail(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "device"    # Landroid/mtp/MtpDevice;
    .param p1, "info"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/mtp/MtpDevice;->getThumbnail(I)[B

    move-result-object v1

    .line 41
    .local v1, "imageBytes":[B
    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v3

    .line 44
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 45
    .local v2, "o":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 46
    array-length v4, v1

    invoke-static {v1, v6, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 47
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v4, :cond_0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v4, :cond_0

    .line 50
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v3

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/android/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 51
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 52
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 53
    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 55
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v1

    invoke-static {v1, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    array-length v3, v1

    invoke-static {v1, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method public static recycleThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    if-eqz p0, :cond_0

    .line 35
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 37
    :cond_0
    return-void
.end method
