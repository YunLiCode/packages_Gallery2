.class Lcom/android/gallery3d/picasasource/PicasaAlbum$PicasaBitmapJob;
.super Ljava/lang/Object;
.source "PicasaAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasasource/PicasaAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicasaBitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mPhotoUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/gallery3d/picasasource/PicasaAlbum;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/picasasource/PicasaAlbum;Landroid/net/Uri;)V
    .locals 0
    .param p2, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$PicasaBitmapJob;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbum;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$PicasaBitmapJob;->mPhotoUri:Landroid/net/Uri;

    .line 257
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v3, 0x0

    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/BytesBufferPool;->get()Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v0

    .line 264
    .local v0, "buffer":Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 278
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    :goto_0
    return-object v3

    .line 266
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$PicasaBitmapJob;->this$0:Lcom/android/gallery3d/picasasource/PicasaAlbum;

    iget-object v4, v4, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v4}, Lcom/android/gallery3d/picasasource/PicasaSource;->getStoreProvider()Landroid/content/ContentProviderClient;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/picasasource/PicasaAlbum$PicasaBitmapJob;->mPhotoUri:Landroid/net/Uri;

    const-string v6, "r"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->readFrom(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;)V

    .line 268
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 278
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    .line 271
    :cond_1
    :try_start_2
    iget-object v4, v0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v5, v0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v6, v0, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    const/4 v7, 0x0

    invoke-static {p1, v4, v5, v6, v7}, Lcom/android/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 277
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 278
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    .line 273
    :catch_0
    move-exception v2

    .line 274
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v4, "PicasaAlbum"

    const-string v5, "fail to decode bitmap"

    invoke-static {v4, v5, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 278
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    .line 277
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 278
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v3
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/picasasource/PicasaAlbum$PicasaBitmapJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
