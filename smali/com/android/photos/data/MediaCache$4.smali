.class Lcom/android/photos/data/MediaCache$4;
.super Ljava/lang/Thread;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/data/MediaCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/data/MediaCache;


# direct methods
.method constructor <init>(Lcom/android/photos/data/MediaCache;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/photos/data/MediaCache$4;->this$0:Lcom/android/photos/data/MediaCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 242
    :goto_0
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$4;->this$0:Lcom/android/photos/data/MediaCache;

    # getter for: Lcom/android/photos/data/MediaCache;->mRunning:Z
    invoke-static {v2}, Lcom/android/photos/data/MediaCache;->access$000(Lcom/android/photos/data/MediaCache;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$4;->this$0:Lcom/android/photos/data/MediaCache;

    # getter for: Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;
    invoke-static {v2}, Lcom/android/photos/data/MediaCache;->access$700(Lcom/android/photos/data/MediaCache;)Ljava/util/Queue;

    move-result-object v3

    monitor-enter v3

    .line 245
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$4;->this$0:Lcom/android/photos/data/MediaCache;

    # getter for: Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;
    invoke-static {v2}, Lcom/android/photos/data/MediaCache;->access$700(Lcom/android/photos/data/MediaCache;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    :try_start_1
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$4;->this$0:Lcom/android/photos/data/MediaCache;

    # getter for: Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;
    invoke-static {v2}, Lcom/android/photos/data/MediaCache;->access$700(Lcom/android/photos/data/MediaCache;)Ljava/util/Queue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$4;->this$0:Lcom/android/photos/data/MediaCache;

    # getter for: Lcom/android/photos/data/MediaCache;->mRunning:Z
    invoke-static {v2}, Lcom/android/photos/data/MediaCache;->access$000(Lcom/android/photos/data/MediaCache;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    monitor-exit v3

    .line 260
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void

    .line 252
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    sget-object v2, Lcom/android/photos/data/MediaCache;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected Interruption, continuing"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 256
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 255
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/android/photos/data/MediaCache$4;->this$0:Lcom/android/photos/data/MediaCache;

    # getter for: Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;
    invoke-static {v2}, Lcom/android/photos/data/MediaCache;->access$700(Lcom/android/photos/data/MediaCache;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/photos/data/MediaCache$NotifyReady;

    .line 256
    .local v1, "notifyImage":Lcom/android/photos/data/MediaCache$NotifyReady;
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    invoke-interface {v1}, Lcom/android/photos/data/MediaCache$NotifyReady;->notifyReady()V

    goto :goto_0
.end method
