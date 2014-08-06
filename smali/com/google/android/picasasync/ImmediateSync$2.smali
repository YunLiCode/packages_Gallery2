.class Lcom/google/android/picasasync/ImmediateSync$2;
.super Lcom/google/android/picasasync/ImmediateSync$Task;
.source "ImmediateSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbum(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/ImmediateSync;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$album:Lcom/google/android/picasasync/AlbumEntry;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/picasasync/AlbumEntry;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/picasasync/ImmediateSync$2;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    iput-object p3, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/ImmediateSync$Task;-><init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doSync()I
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 261
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v5

    if-nez v5, :cond_0

    .line 262
    const-string v3, "ImmediateSync"

    const-string v5, "master auto sync is off"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return v4

    .line 265
    :cond_0
    new-instance v5, Landroid/accounts/Account;

    iget-object v6, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/picasasync/ImmediateSync$2;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    # getter for: Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 268
    const-string v3, "ImmediateSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto sync is off on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_1
    const-string v5, "ImmediateSync.album"

    invoke-static {v5}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 275
    .local v0, "statsId":I
    :try_start_0
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync$2;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    # getter for: Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/android/picasasync/ImmediateSync;->access$100(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v1

    .line 276
    .local v1, "sync":Lcom/google/android/picasasync/PicasaSyncHelper;
    new-instance v2, Landroid/content/SyncResult;

    invoke-direct {v2}, Landroid/content/SyncResult;-><init>()V

    .line 277
    .local v2, "syncResult":Landroid/content/SyncResult;
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync$2;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/picasasync/ImmediateSync$2;->syncInterrupted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 279
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    const-string v4, "picasa.sync.metadata"

    invoke-static {v0, v4}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    move v4, v3

    goto :goto_0

    .line 281
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 282
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :try_start_3
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v6, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->setAccount(Ljava/lang/String;)Z

    .line 285
    const-string v5, "ImmediateSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sync album for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$account:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    iget-wide v7, v7, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v6, p0, Lcom/google/android/picasasync/ImmediateSync$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    invoke-virtual {v1, v5, v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForAlbum(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V

    .line 288
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v5}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-eqz v5, :cond_3

    .line 295
    :goto_1
    const-string v4, "picasa.sync.metadata"

    invoke-static {v0, v4}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    move v4, v3

    goto/16 :goto_0

    .line 282
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 295
    .end local v1    # "sync":Lcom/google/android/picasasync/PicasaSyncHelper;
    .end local v2    # "syncResult":Landroid/content/SyncResult;
    :catchall_1
    move-exception v3

    const-string v4, "picasa.sync.metadata"

    invoke-static {v0, v4}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v3

    .line 288
    .restart local v1    # "sync":Lcom/google/android/picasasync/PicasaSyncHelper;
    .restart local v2    # "syncResult":Landroid/content/SyncResult;
    :cond_3
    :try_start_6
    invoke-virtual {v2}, Landroid/content/SyncResult;->hasError()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_1
.end method
