.class Lcom/android/photos/data/MediaCache$ProcessQueue;
.super Ljava/lang/Thread;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/data/MediaCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessQueue"
.end annotation


# instance fields
.field private mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/photos/data/MediaCache$ProcessingJob;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/photos/data/MediaCache;


# direct methods
.method public constructor <init>(Lcom/android/photos/data/MediaCache;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/android/photos/data/MediaCache$ProcessingJob;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/android/photos/data/MediaCache$ProcessingJob;>;"
    iput-object p1, p0, Lcom/android/photos/data/MediaCache$ProcessQueue;->this$0:Lcom/android/photos/data/MediaCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/photos/data/MediaCache$ProcessQueue;->mQueue:Ljava/util/Queue;

    .line 82
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 86
    :goto_0
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$ProcessQueue;->this$0:Lcom/android/photos/data/MediaCache;

    # getter for: Lcom/android/photos/data/MediaCache;->mRunning:Z
    invoke-static {v2}, Lcom/android/photos/data/MediaCache;->access$000(Lcom/android/photos/data/MediaCache;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/photos/data/MediaCache$ProcessQueue;->mQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 89
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$ProcessQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    :try_start_1
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$ProcessQueue;->mQueue:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$ProcessQueue;->this$0:Lcom/android/photos/data/MediaCache;

    # getter for: Lcom/android/photos/data/MediaCache;->mRunning:Z
    invoke-static {v2}, Lcom/android/photos/data/MediaCache;->access$000(Lcom/android/photos/data/MediaCache;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    monitor-exit v3

    .line 103
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void

    .line 96
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    sget-object v2, Lcom/android/photos/data/MediaCache;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected interruption"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 100
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 99
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$ProcessQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/photos/data/MediaCache$ProcessingJob;

    .line 100
    .local v1, "status":Lcom/android/photos/data/MediaCache$ProcessingJob;
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$ProcessQueue;->this$0:Lcom/android/photos/data/MediaCache;

    # invokes: Lcom/android/photos/data/MediaCache;->processTask(Lcom/android/photos/data/MediaCache$ProcessingJob;)V
    invoke-static {v2, v1}, Lcom/android/photos/data/MediaCache;->access$100(Lcom/android/photos/data/MediaCache;Lcom/android/photos/data/MediaCache$ProcessingJob;)V

    goto :goto_0
.end method
