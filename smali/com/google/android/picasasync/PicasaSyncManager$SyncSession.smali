.class public final Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;
.super Ljava/lang/Object;
.source "PicasaSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncSession"
.end annotation


# instance fields
.field public final account:Ljava/lang/String;

.field mCurrentTask:Lcom/google/android/picasasync/SyncTask;

.field mSyncCancelled:Z

.field public final result:Landroid/content/SyncResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/SyncResult;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/content/SyncResult;

    .prologue
    .line 512
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->account:Ljava/lang/String;

    .line 514
    iput-object p2, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    .line 515
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelSync()V
    .locals 3

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    const-string v0, "PicasaSyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSync on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->account:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mSyncCancelled:Z

    .line 520
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    invoke-virtual {v0}, Lcom/google/android/picasasync/SyncTask;->cancelSync()V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :cond_0
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSyncCancelled()Z
    .locals 1

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mSyncCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
