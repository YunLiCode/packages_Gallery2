.class Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;
.super Lcom/android/gallery3d/data/MediaItem;
.source "PicasaAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasasource/PicasaAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/picasasource/PicasaAlbum;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/picasasource/PicasaAlbum;Lcom/android/gallery3d/data/Path;J)V
    .locals 0
    .param p2, "path"    # Lcom/android/gallery3d/data/Path;
    .param p3, "version"    # J

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbum;

    .line 217
    invoke-direct {p0, p2, p3, p4}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 218
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string v0, "image/jpeg"

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 6
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
    .line 222
    new-instance v0, Lcom/android/gallery3d/picasasource/PicasaAlbum$PicasaBitmapJob;

    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbum;

    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbum;

    iget-object v2, v2, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v2}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaStoreFacade()Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbum;

    # getter for: Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;
    invoke-static {v3}, Lcom/android/gallery3d/picasasource/PicasaAlbum;->access$000(Lcom/android/gallery3d/picasasource/PicasaAlbum;)Lcom/android/gallery3d/picasasource/AlbumData;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/gallery3d/common/Entry;->id:J

    iget-object v5, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbum;

    # getter for: Lcom/android/gallery3d/picasasource/PicasaAlbum;->mData:Lcom/android/gallery3d/picasasource/AlbumData;
    invoke-static {v5}, Lcom/android/gallery3d/picasasource/PicasaAlbum;->access$000(Lcom/android/gallery3d/picasasource/PicasaAlbum;)Lcom/android/gallery3d/picasasource/AlbumData;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/picasasync/AlbumEntry;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAlbumCoverUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/picasasource/PicasaAlbum$PicasaBitmapJob;-><init>(Lcom/android/gallery3d/picasasource/PicasaAlbum;Landroid/net/Uri;)V

    return-object v0
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
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateContent()V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lcom/android/gallery3d/picasasource/PicasaAlbum$CoverItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 249
    return-void
.end method
