.class public Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;
.super Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;
.source "BasePicasaAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasasource/BasePicasaAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PicasaSyncTaskFuture"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)V
    .locals 0
    .param p1, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p2, "mediaSet"    # Lcom/android/gallery3d/data/MediaSet;
    .param p3, "listener"    # Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;-><init>(Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method startSync(J)V
    .locals 6
    .param p1, "albumId"    # J

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "listener":Lcom/android/gallery3d/data/MediaSet$SyncListener;
    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 94
    .local v2, "resolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/google/android/picasasync/PicasaFacade;->requestImmediateSyncOnAlbum(J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mUri:Landroid/net/Uri;

    .line 97
    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;->getSyncResult()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    :try_start_1
    iget v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    if-ltz v3, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .line 105
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .line 106
    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 108
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget v4, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    invoke-interface {v1, v3, v4}, Lcom/android/gallery3d/data/MediaSet$SyncListener;->onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V

    .line 110
    :cond_1
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "BasePicasaAlbum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestImmediateSyncOnAlbum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
