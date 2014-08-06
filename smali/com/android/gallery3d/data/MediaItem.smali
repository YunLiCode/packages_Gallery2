.class public abstract Lcom/android/gallery3d/data/MediaItem;
.super Lcom/android/gallery3d/data/MediaObject;
.source "MediaItem.java"


# static fields
.field private static final sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

.field private static sMicrothumbnailTargetSize:I

.field private static sThumbnailTargetSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/16 v0, 0xc8

    sput v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 45
    new-instance v0, Lcom/android/gallery3d/data/BytesBufferPool;

    const/4 v1, 0x4

    const v2, 0x32000

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    .line 48
    const/16 v0, 0x280

    sput v0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 0
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;
    .param p2, "version"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaObject;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 58
    return-void
.end method

.method public static getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/android/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method public static getTargetSize(I)I
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 113
    packed-switch p0, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_0
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 117
    :goto_0
    return v0

    :pswitch_1
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setThumbnailSizes(II)V
    .locals 1
    .param p0, "size"    # I
    .param p1, "microSize"    # I

    .prologue
    .line 129
    sput p0, Lcom/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    .line 130
    sget v0, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    if-eq v0, p1, :cond_0

    .line 131
    sput p1, Lcom/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public getDateInMs()J
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFaces()[Lcom/android/gallery3d/data/Face;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, ""

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getLatLong([D)V
    .locals 3
    .param p1, "latLong"    # [D

    .prologue
    const-wide/16 v1, 0x0

    .line 69
    const/4 v0, 0x0

    aput-wide v1, p1, v0

    .line 70
    const/4 v0, 0x1

    aput-wide v1, p1, v0

    .line 71
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public abstract requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method
