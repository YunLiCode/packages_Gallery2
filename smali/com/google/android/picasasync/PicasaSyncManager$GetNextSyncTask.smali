.class Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;
.super Ljava/lang/Object;
.source "PicasaSyncManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNextSyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaSyncManager;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PicasaSyncManager;Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V
    .locals 0
    .param p2, "session"    # Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p2, p0, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 379
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 383
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    # getter for: Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->access$000(Lcom/google/android/picasasync/PicasaSyncManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    iget-object v2, v2, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->account:Ljava/lang/String;

    # invokes: Lcom/google/android/picasasync/PicasaSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;
    invoke-static {v1, v2}, Lcom/google/android/picasasync/PicasaSyncManager;->access$800(Lcom/google/android/picasasync/PicasaSyncManager;Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;

    move-result-object v0

    .line 385
    .local v0, "task":Lcom/google/android/picasasync/SyncTask;
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    monitor-enter v2

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    iget-boolean v1, v1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mSyncCancelled:Z

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 389
    :goto_0
    return-object v3

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    iput-object v0, v1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    .line 388
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
