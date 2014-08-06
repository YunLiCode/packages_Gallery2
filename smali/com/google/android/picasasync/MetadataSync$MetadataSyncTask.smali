.class Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;
.super Lcom/google/android/picasasync/SyncTask;
.source "MetadataSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/MetadataSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataSyncTask"
.end annotation


# instance fields
.field private mSyncCancelled:Z

.field private mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field final synthetic this$0:Lcom/google/android/picasasync/MetadataSync;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/MetadataSync;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "manual"    # Z

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    .line 71
    invoke-direct {p0, p2}, Lcom/google/android/picasasync/SyncTask;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncCancelled:Z

    .line 72
    return-void
.end method

.method private performSyncInternal(Landroid/content/SyncResult;)V
    .locals 11
    .param p1, "result"    # Landroid/content/SyncResult;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 91
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    # getter for: Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/android/picasasync/MetadataSync;->access$100(Lcom/google/android/picasasync/MetadataSync;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v3

    .line 92
    .local v3, "sync":Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 93
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    # getter for: Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z
    invoke-static {v6}, Lcom/google/android/picasasync/MetadataSync;->access$000(Lcom/google/android/picasasync/MetadataSync;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    iget-object v7, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncStart(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 151
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    iget-object v7, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncStart(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 104
    :cond_1
    monitor-enter p0

    .line 105
    :try_start_0
    iget-boolean v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncCancelled:Z

    if-eqz v6, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 98
    :cond_2
    const/4 v4, 0x0

    .line 99
    .local v4, "syncStarted":Z
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    iget-object v7, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncStart(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 100
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    iget-object v7, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncStart(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 101
    if-nez v4, :cond_1

    goto :goto_0

    .line 106
    .end local v4    # "syncStarted":Z
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 107
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v7, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->setAccount(Ljava/lang/String;)Z

    .line 108
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    iget-object v6, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;

    move-result-object v5

    .line 111
    .local v5, "user":Lcom/google/android/picasasync/UserEntry;
    if-nez v5, :cond_4

    .line 112
    const-string v6, "MetadataSyncProvider"

    const-string v7, "user: %s not found, sync abort"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_4
    const/4 v2, 0x0

    .line 119
    .local v2, "isPicasaAccount":Z
    :try_start_2
    iget-object v6, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->isPicasaAccount(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 124
    :goto_1
    if-eqz v2, :cond_5

    .line 125
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v3, v6, v5}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncAlbumsForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 126
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v3, v6, v5}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 133
    :goto_2
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z

    move-result v6

    if-nez v6, :cond_6

    .line 134
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    iget-object v7, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncFinish(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 135
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    iget-object v7, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncFinish(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 140
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    # getter for: Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/android/picasasync/MetadataSync;->access$100(Lcom/google/android/picasasync/MetadataSync;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaSyncManager;->requestPrefetchSync()V

    .line 150
    :goto_3
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    # getter for: Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/android/picasasync/MetadataSync;->access$100(Lcom/google/android/picasasync/MetadataSync;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaSyncManager;->requestAccountSync()V

    goto/16 :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MetadataSyncProvider"

    const-string v7, "check picasa account failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v6, "MetadataSyncProvider"

    const-string v7, "%s has not been enabled for Picasa service, just ignore"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 142
    :cond_6
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    iget-object v7, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->resetSyncToDirty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 143
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    iget-object v7, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->resetSyncToDirty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized cancelSync()V
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncCancelled:Z

    .line 156
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->stopSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBackgroundSync()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    # getter for: Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z
    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync;->access$000(Lcom/google/android/picasasync/MetadataSync;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncOnBattery()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    # getter for: Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync;->access$100(Lcom/google/android/picasasync/MetadataSync;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->isSyncOnBattery(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSyncOnWifiOnly()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    # getter for: Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z
    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync;->access$000(Lcom/google/android/picasasync/MetadataSync;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    # getter for: Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync;->access$100(Lcom/google/android/picasasync/MetadataSync;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->isSyncPicasaOnWifiOnly(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public performSync(Landroid/content/SyncResult;)V
    .locals 3
    .param p1, "result"    # Landroid/content/SyncResult;

    .prologue
    .line 81
    const-string v1, "MetadataSync"

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, "statsId":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->performSyncInternal(Landroid/content/SyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    const-string v1, "picasa.sync.metadata"

    invoke-static {v0, v1}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v1

    const-string v2, "picasa.sync.metadata"

    invoke-static {v0, v2}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v1
.end method
