.class Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;
.super Lcom/google/android/picasasync/SyncTask;
.source "PhotoPrefetch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PhotoPrefetch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefetchScreenNail"
.end annotation


# instance fields
.field protected mSyncCancelled:Z

.field protected mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

.field private mSyncState:Lcom/google/android/picasasync/SyncState;

.field final synthetic this$0:Lcom/google/android/picasasync/PhotoPrefetch;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;)V
    .locals 1
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 221
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;-><init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Lcom/google/android/picasasync/PhotoPrefetch;Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V
    .locals 1
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "syncState"    # Lcom/google/android/picasasync/SyncState;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    .line 225
    invoke-direct {p0, p2}, Lcom/google/android/picasasync/SyncTask;-><init>(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncCancelled:Z

    .line 226
    iput-object p3, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncState:Lcom/google/android/picasasync/SyncState;

    .line 227
    return-void
.end method


# virtual methods
.method public cancelSync()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncCancelled:Z

    .line 286
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->stopSync()V

    .line 287
    :cond_0
    return-void
.end method

.method public isBackgroundSync()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnBattery()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    # getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->isSyncOnBattery(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSyncOnExternalStorageOnly()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnRoaming()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    # getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->isSyncOnRoaming(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSyncOnWifiOnly()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    # getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->isSyncPicasaOnWifiOnly(Landroid/content/Context;)Z

    move-result v0

    return v0
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
    .line 231
    const-string v1, "PrefetchScreenNail"

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 232
    .local v0, "statsId":I
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/support/v4/net/TrafficStatsCompat;->setThreadStatsTag(I)V

    .line 235
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->performSyncCommon(Landroid/content/SyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 239
    const-string v1, "picasa.prefetch.screennail"

    invoke-static {v0, v1}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    .line 241
    return-void

    .line 237
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 239
    const-string v2, "picasa.prefetch.screennail"

    invoke-static {v0, v2}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v1
.end method

.method protected final performSyncCommon(Landroid/content/SyncResult;)V
    .locals 8
    .param p1, "result"    # Landroid/content/SyncResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    # getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/PrefetchHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PrefetchHelper;

    move-result-object v1

    .line 245
    .local v1, "prefetch":Lcom/google/android/picasasync/PrefetchHelper;
    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    # getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v2

    .line 246
    .local v2, "sync":Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 247
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    monitor-enter p0

    .line 248
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncCancelled:Z

    if-eqz v4, :cond_0

    monitor-exit p0

    .line 266
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/google/android/picasasync/PrefetchHelper;->createPrefetchContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    .line 250
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->updateCacheConfigVersion()V

    .line 252
    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncState:Lcom/google/android/picasasync/SyncState;

    iget-object v5, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/picasasync/SyncState;->onSyncStart(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 253
    const-string v4, "PhotoPrefetch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncState:Lcom/google/android/picasasync/SyncState;

    iget-object v7, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->getState(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 256
    :cond_1
    iget-object v4, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/picasasync/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;

    move-result-object v3

    .line 257
    .local v3, "user":Lcom/google/android/picasasync/UserEntry;
    if-nez v3, :cond_2

    .line 258
    const-string v4, "PhotoPrefetch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot find user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p0, v3, v1, v0}, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->performSyncInternal(Lcom/google/android/picasasync/UserEntry;Lcom/google/android/picasasync/PrefetchHelper;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 262
    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncState:Lcom/google/android/picasasync/SyncState;

    iget-object v5, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/picasasync/SyncState;->onSyncFinish(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object v4, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncState:Lcom/google/android/picasasync/SyncState;

    iget-object v5, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/picasasync/SyncState;->resetSyncToDirty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0
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

    .line 274
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    # getter for: Lcom/google/android/picasasync/PhotoPrefetch;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/picasasync/PhotoPrefetch;->access$000(Lcom/google/android/picasasync/PhotoPrefetch;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 275
    const-string v1, "PhotoPrefetch"

    const-string v2, "no external storage, skip screenail prefetching"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->this$0:Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    # invokes: Lcom/google/android/picasasync/PhotoPrefetch;->cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    invoke-static {v1, v2}, Lcom/google/android/picasasync/PhotoPrefetch;->access$100(Lcom/google/android/picasasync/PhotoPrefetch;Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V

    .line 279
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/picasasync/PrefetchHelper;->syncScreenNailsForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 280
    iget-object v1, p0, Lcom/google/android/picasasync/PhotoPrefetch$PrefetchScreenNail;->mSyncContext:Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
