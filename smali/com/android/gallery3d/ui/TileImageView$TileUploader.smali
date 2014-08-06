.class Lcom/android/gallery3d/ui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/TileImageView;)V
    .locals 2

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/ui/TileImageView;
    .param p2, "x1"    # Lcom/android/gallery3d/ui/TileImageView$1;

    .prologue
    .line 560
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcom/android/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/android/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "renderRequested"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 567
    if-eqz p2, :cond_1

    .line 584
    :cond_0
    :goto_0
    return v4

    .line 568
    :cond_1
    const/4 v1, 0x1

    .line 569
    .local v1, "quota":I
    const/4 v2, 0x0

    .line 570
    .local v2, "tile":Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_2
    :goto_1
    if-lez v1, :cond_3

    .line 571
    iget-object v6, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    monitor-enter v6

    .line 572
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    # getter for: Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;
    invoke-static {v3}, Lcom/android/gallery3d/ui/TileImageView;->access$300(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v2

    .line 573
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    if-nez v2, :cond_5

    .line 583
    :cond_3
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 584
    :cond_4
    if-nez v2, :cond_0

    move v4, v5

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 575
    :cond_5
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 576
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isLoaded()Z

    move-result v0

    .line 577
    .local v0, "hasBeenLoaded":Z
    iget v3, v2, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_7

    move v3, v4

    :goto_2
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 578
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 579
    if-nez v0, :cond_6

    invoke-virtual {v2, p1, v5, v5}, Lcom/android/gallery3d/ui/TileImageView$Tile;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    .line 580
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 581
    goto :goto_1

    :cond_7
    move v3, v5

    .line 577
    goto :goto_2
.end method
