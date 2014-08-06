.class abstract Lcom/google/android/picasasync/ImmediateSync$Task;
.super Ljava/lang/Object;
.source "ImmediateSync.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/ImmediateSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public refCount:I

.field public syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field public syncResultCode:I

.field public final taskId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/picasasync/ImmediateSync;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;)V
    .locals 1
    .param p2, "taskId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    .line 50
    iput-object p2, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->taskId:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method addRequester()Z
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    if-nez v0, :cond_1

    .line 92
    :cond_0
    iget v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelSync()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    .line 55
    iget-object v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->stopSync()V

    .line 56
    :cond_0
    return-void
.end method

.method protected abstract doSync()I
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/ImmediateSync$Task;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/picasasync/ImmediateSync$Task;->doSync()I

    move-result v0

    .line 63
    .local v0, "result":I
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    iget v1, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 65
    iput v0, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    .line 67
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    iget-object v1, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    # invokes: Lcom/google/android/picasasync/ImmediateSync;->completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V
    invoke-static {v1, p0}, Lcom/google/android/picasasync/ImmediateSync;->access$000(Lcom/google/android/picasasync/ImmediateSync;Lcom/google/android/picasasync/ImmediateSync$Task;)V

    .line 71
    const/4 v1, 0x0

    return-object v1

    .line 67
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    .end local v0    # "result":I
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    # invokes: Lcom/google/android/picasasync/ImmediateSync;->completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V
    invoke-static {v2, p0}, Lcom/google/android/picasasync/ImmediateSync;->access$000(Lcom/google/android/picasasync/ImmediateSync;Lcom/google/android/picasasync/ImmediateSync$Task;)V

    throw v1
.end method

.method protected syncInterrupted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 75
    iget-object v1, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->this$0:Lcom/google/android/picasasync/ImmediateSync;

    monitor-enter v1

    .line 76
    :try_start_0
    iget v2, p0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
