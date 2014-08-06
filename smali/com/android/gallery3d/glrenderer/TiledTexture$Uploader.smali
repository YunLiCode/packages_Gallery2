.class public Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/glrenderer/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uploader"
.end annotation


# instance fields
.field private final mGlRoot:Lcom/android/gallery3d/ui/GLRoot;

.field private mIsQueued:Z

.field private final mTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/gallery3d/glrenderer/TiledTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 2
    .param p1, "glRoot"    # Lcom/android/gallery3d/ui/GLRoot;

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 75
    return-void
.end method


# virtual methods
.method public declared-synchronized addTexture(Lcom/android/gallery3d/glrenderer/TiledTexture;)V
    .locals 1
    .param p1, "t"    # Lcom/android/gallery3d/glrenderer/TiledTexture;

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/TiledTexture;->isReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGLIdle(Lcom/android/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 8
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "renderRequested"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    .line 93
    .local v0, "deque":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/gallery3d/glrenderer/TiledTexture;>;"
    monitor-enter p0

    .line 94
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 95
    .local v3, "now":J
    const-wide/16 v6, 0x4

    add-long v1, v3, v6

    .line 96
    .local v1, "dueTime":J
    :goto_0
    cmp-long v6, v3, v1

    if-gez v6, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/glrenderer/TiledTexture;

    .line 98
    .local v5, "t":Lcom/android/gallery3d/glrenderer/TiledTexture;
    # invokes: Lcom/android/gallery3d/glrenderer/TiledTexture;->uploadNextTile(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
    invoke-static {v5, p1}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$000(Lcom/android/gallery3d/glrenderer/TiledTexture;Lcom/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 100
    iget-object v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v6}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 103
    goto :goto_0

    .line 104
    .end local v5    # "t":Lcom/android/gallery3d/glrenderer/TiledTexture;
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    .line 107
    iget-boolean v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    monitor-exit p0

    return v6

    .line 104
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 108
    .end local v1    # "dueTime":J
    .end local v3    # "now":J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
