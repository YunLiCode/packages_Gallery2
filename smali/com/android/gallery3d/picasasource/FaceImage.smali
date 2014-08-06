.class public Lcom/android/gallery3d/picasasource/FaceImage;
.super Lcom/android/gallery3d/data/MediaItem;
.source "FaceImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasasource/FaceImage$1;,
        Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;
    }
.end annotation


# instance fields
.field private mBlobCache:Lcom/android/gallery3d/common/BlobCache;

.field private mImage:Lcom/android/gallery3d/picasasource/PicasaImage;

.field private mIndex:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaImage;ILcom/android/gallery3d/common/BlobCache;)V
    .locals 2
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;
    .param p2, "image"    # Lcom/android/gallery3d/picasasource/PicasaImage;
    .param p3, "faceIndex"    # I
    .param p4, "cache"    # Lcom/android/gallery3d/common/BlobCache;

    .prologue
    .line 29
    invoke-static {}, Lcom/android/gallery3d/picasasource/FaceImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 30
    iput-object p2, p0, Lcom/android/gallery3d/picasasource/FaceImage;->mImage:Lcom/android/gallery3d/picasasource/PicasaImage;

    .line 31
    iput p3, p0, Lcom/android/gallery3d/picasasource/FaceImage;->mIndex:I

    .line 32
    iput-object p4, p0, Lcom/android/gallery3d/picasasource/FaceImage;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/picasasource/FaceImage;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/FaceImage;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/picasasource/FaceImage;)Lcom/android/gallery3d/common/BlobCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/FaceImage;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/FaceImage;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/picasasource/FaceImage;)Lcom/android/gallery3d/picasasource/PicasaImage;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/FaceImage;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/FaceImage;->mImage:Lcom/android/gallery3d/picasasource/PicasaImage;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/picasasource/FaceImage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/FaceImage;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/gallery3d/picasasource/FaceImage;->mIndex:I

    return v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/FaceImage;->getTargetSize(I)I

    move-result v0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/FaceImage;->mImage:Lcom/android/gallery3d/picasasource/PicasaImage;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasasource/PicasaImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/FaceImage;->getTargetSize(I)I

    move-result v0

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;-><init>(Lcom/android/gallery3d/picasasource/FaceImage;Lcom/android/gallery3d/picasasource/FaceImage$1;)V

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
