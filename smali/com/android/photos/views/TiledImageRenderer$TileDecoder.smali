.class Lcom/android/photos/views/TiledImageRenderer$TileDecoder;
.super Ljava/lang/Thread;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/views/TiledImageRenderer;


# direct methods
.method private constructor <init>(Lcom/android/photos/views/TiledImageRenderer;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/photos/views/TiledImageRenderer;Lcom/android/photos/views/TiledImageRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/photos/views/TiledImageRenderer;
    .param p2, "x1"    # Lcom/android/photos/views/TiledImageRenderer$1;

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;-><init>(Lcom/android/photos/views/TiledImageRenderer;)V

    return-void
.end method

.method private waitForTile()Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 726
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    # getter for: Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/photos/views/TiledImageRenderer;->access$700(Lcom/android/photos/views/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 728
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    # getter for: Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;
    invoke-static {v1}, Lcom/android/photos/views/TiledImageRenderer;->access$800(Lcom/android/photos/views/TiledImageRenderer;)Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 729
    .local v0, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    .line 730
    monitor-exit v2

    return-object v0

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    # getter for: Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/photos/views/TiledImageRenderer;->access$700(Lcom/android/photos/views/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 734
    .end local v0    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 740
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 741
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->waitForTile()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 742
    .local v0, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    # invokes: Lcom/android/photos/views/TiledImageRenderer;->decodeTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z
    invoke-static {v1, v0}, Lcom/android/photos/views/TiledImageRenderer;->access$900(Lcom/android/photos/views/TiledImageRenderer;Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    # invokes: Lcom/android/photos/views/TiledImageRenderer;->queueForUpload(Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    invoke-static {v1, v0}, Lcom/android/photos/views/TiledImageRenderer;->access$1000(Lcom/android/photos/views/TiledImageRenderer;Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    .end local v0    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :catch_0
    move-exception v1

    .line 748
    :cond_1
    return-void
.end method
