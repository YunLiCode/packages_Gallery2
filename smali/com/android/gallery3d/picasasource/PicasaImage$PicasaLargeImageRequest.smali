.class Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;
.super Ljava/lang/Object;
.source "PicasaImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasasource/PicasaImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicasaLargeImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private mPhotoUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/gallery3d/picasasource/PicasaImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/picasasource/PicasaImage;Landroid/net/Uri;)V
    .locals 0
    .param p2, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;->this$0:Lcom/android/gallery3d/picasasource/PicasaImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;->mPhotoUri:Landroid/net/Uri;

    .line 128
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 8
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 152
    :goto_0
    return-object v5

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 135
    .local v0, "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    :try_start_0
    new-instance v1, Lcom/android/gallery3d/picasasource/CancelableInputStream;

    iget-object v6, p0, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;->this$0:Lcom/android/gallery3d/picasasource/PicasaImage;

    # getter for: Lcom/android/gallery3d/picasasource/PicasaImage;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;
    invoke-static {v6}, Lcom/android/gallery3d/picasasource/PicasaImage;->access$000(Lcom/android/gallery3d/picasasource/PicasaImage;)Lcom/android/gallery3d/picasasource/PicasaSource;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/picasasource/PicasaSource;->getStoreProvider()Landroid/content/ContentProviderClient;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;->mPhotoUri:Landroid/net/Uri;

    invoke-direct {v1, v6, v7}, Lcom/android/gallery3d/picasasource/CancelableInputStream;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v0    # "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    .local v1, "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    move-object v3, v1

    .line 138
    .local v3, "s":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    :try_start_1
    new-instance v6, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest$1;

    invoke-direct {v6, p0, v3}, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest$1;-><init>(Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;Lcom/android/gallery3d/picasasource/CancelableInputStream;)V

    invoke-interface {p1, v6}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 144
    const/4 v6, 0x1

    invoke-static {p1, v1, v6}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    .line 146
    .local v2, "result":Landroid/graphics/BitmapRegionDecoder;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v5

    .line 151
    .end local v2    # "result":Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    invoke-interface {p1, v5}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 152
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v5, v2

    goto :goto_0

    .line 147
    .end local v1    # "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    .end local v3    # "s":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    .restart local v0    # "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    :catch_0
    move-exception v4

    .line 148
    .local v4, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string v6, "PicasaImage"

    const-string v7, "fail to create region decoder"

    invoke-static {v6, v7, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    invoke-interface {p1, v5}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 152
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 151
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-interface {p1, v5}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 152
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 151
    .end local v0    # "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    .restart local v1    # "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    .restart local v3    # "s":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    .restart local v0    # "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    goto :goto_2

    .line 147
    .end local v0    # "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    .restart local v1    # "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    .restart local v0    # "cis":Lcom/android/gallery3d/picasasource/CancelableInputStream;
    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/picasasource/PicasaImage$PicasaLargeImageRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
