.class Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;
.super Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;
.source "PhotoPrefetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PhotoPrefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefetchAlbumCover"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/PhotoPrefetch;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;)V
    .locals 1
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    .line 382
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;-><init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 383
    return-void
.end method


# virtual methods
.method public performSync(Landroid/content/SyncResult;)V
    .locals 3
    .param p1, "result"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    const-string v1, "PrefetchAlbumCover"

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, "statsId":I
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/support/v4/net/TrafficStatsCompat;->setThreadStatsTag(I)V

    .line 391
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;->performSyncCommon(Landroid/content/SyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 395
    const-string v1, "picasa.prefetch.thumbnail"

    invoke-static {v0, v1}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    .line 397
    return-void

    .line 393
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 395
    const-string v2, "picasa.prefetch.thumbnail"

    invoke-static {v0, v2}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v1
.end method

.method protected performSyncInternal(Lcom/google/android/picasasync/UserEntry;Lcom/google/android/picasasync/PrefetchHelper;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .param p1, "user"    # Lcom/google/android/picasasync/UserEntry;
    .param p2, "helper"    # Lcom/google/android/picasasync/PrefetchHelper;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 406
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    # getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 407
    const-string v1, "PhotoPrefetch"

    const-string v2, "no external storage, skip album cover prefetching"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchAlbumCover;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    # invokes: Lcom/google/android/picasasync/PhotoPrefetch;->cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    invoke-static {v1, v2}, Lcom/google/android/picasasync/PhotoPrefetch;->access$100(Lcom/google/android/picasasync/PhotoPrefetch;Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V

    .line 411
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/picasasync/PrefetchHelper;->syncAlbumCoversForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 412
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
