.class Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;
.super Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;
.source "PhotoPrefetch.java"

# interfaces
.implements Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PhotoPrefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefetchFullImage"
.end annotation


# instance fields
.field private mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

.field final synthetic this$0:Lcom/google/android/picasasync/PhotoPrefetch;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;)V
    .locals 1
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    .line 324
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;-><init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 325
    return-void
.end method


# virtual methods
.method public isBackgroundSync()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public onDownloadFinish(JZ)V
    .locals 4
    .param p1, "photoId"    # J
    .param p3, "success"    # Z

    .prologue
    .line 366
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    .line 367
    .local v1, "stats":Lcom/google/android/picasasync/PrefetchHelper$CacheStats;
    iget v2, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    .line 368
    if-nez p3, :cond_0

    iget v2, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->failedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->failedCount:I

    .line 369
    :cond_0
    iget v2, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I

    iget v3, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    sub-int v0, v2, v3

    .line 370
    .local v0, "completeCount":I
    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    iget v3, v1, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I

    invoke-virtual {v2, v0, v3}, Lcom/google/android/picasasync/PhotoPrefetch;->updateOngoingNotification(II)V

    .line 371
    return-void
.end method

.method public performSync(Landroid/content/SyncResult;)V
    .locals 3
    .param p1, "result"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    const-string v1, "PrefetchFullImage"

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 330
    .local v0, "statsId":I
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/support/v4/net/TrafficStatsCompat;->setThreadStatsTag(I)V

    .line 333
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->performSyncCommon(Landroid/content/SyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 337
    const-string v1, "picasa.prefetch.full_image"

    invoke-static {v0, v1}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    .line 339
    return-void

    .line 335
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 337
    const-string v2, "picasa.prefetch.full_image"

    invoke-static {v0, v2}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v1
.end method

.method protected performSyncInternal(Lcom/google/android/picasasync/UserEntry;Lcom/google/android/picasasync/PrefetchHelper;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4
    .param p1, "user"    # Lcom/google/android/picasasync/UserEntry;
    .param p2, "helper"    # Lcom/google/android/picasasync/PrefetchHelper;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 344
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {v0, p0}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->setCacheDownloadListener(Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;)V

    .line 345
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    # invokes: Lcom/google/android/picasasync/PhotoPrefetch;->cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    invoke-static {v0, v2}, Lcom/google/android/picasasync/PhotoPrefetch;->access$100(Lcom/google/android/picasasync/PhotoPrefetch;Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V

    .line 346
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheStatistics(I)Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    .line 347
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    iget v0, v0, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return v1

    .line 349
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/picasasync/PrefetchHelper;->syncFullImagesForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    # getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 356
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    iget v0, v0, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    iget v0, v0, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->failedCount:I

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->mCacheStats:Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    iget v2, v2, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I

    invoke-virtual {v0, v2}, Lcom/google/android/picasasync/PhotoPrefetch;->showPrefetchCompleteNotification(I)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    move-object v2, v0

    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchFullImage;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    # getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    throw v2

    .line 360
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
