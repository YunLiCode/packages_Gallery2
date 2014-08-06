.class public Lcom/android/gallery3d/glrenderer/TextureUploader;
.super Ljava/lang/Object;
.source "TextureUploader.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# instance fields
.field private final mBgTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/gallery3d/glrenderer/UploadedTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mFgTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/gallery3d/glrenderer/UploadedTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

.field private volatile mIsQueued:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 2
    .param p1, "root"    # Lcom/android/gallery3d/ui/GLRoot;

    .prologue
    const/16 v1, 0x40

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    .line 30
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mIsQueued:Z

    .line 36
    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 37
    return-void
.end method

.method private queueSelfIfNeed()V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mIsQueued:Z

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mIsQueued:Z

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    goto :goto_0
.end method

.method private upload(Lcom/android/gallery3d/glrenderer/GLCanvas;Ljava/util/ArrayDeque;IZ)I
    .locals 3
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p3, "uploadQuota"    # I
    .param p4, "isBackground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/glrenderer/GLCanvas;",
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/gallery3d/glrenderer/UploadedTexture;",
            ">;IZ)I"
        }
    .end annotation

    .prologue
    .local p2, "deque":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/gallery3d/glrenderer/UploadedTexture;>;"
    const/4 v2, 0x0

    .line 71
    :goto_0
    if-lez p3, :cond_0

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    .line 91
    :cond_0
    return p3

    .line 75
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;

    .line 76
    .local v0, "t":Lcom/android/gallery3d/glrenderer/UploadedTexture;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setIsUploading(Z)V

    .line 77
    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    goto :goto_0

    .line 82
    .end local v0    # "t":Lcom/android/gallery3d/glrenderer/UploadedTexture;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 81
    .restart local v0    # "t":Lcom/android/gallery3d/glrenderer/UploadedTexture;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 82
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    if-eqz p4, :cond_3

    invoke-virtual {v0, p1, v2, v2}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    .line 89
    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 90
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addBgTexture(Lcom/android/gallery3d/glrenderer/UploadedTexture;)V
    .locals 1
    .param p1, "t"    # Lcom/android/gallery3d/glrenderer/UploadedTexture;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->isContentValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    monitor-exit p0

    return-void

    .line 57
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setIsUploading(Z)V

    .line 59
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/TextureUploader;->queueSelfIfNeed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFgTexture(Lcom/android/gallery3d/glrenderer/UploadedTexture;)V
    .locals 1
    .param p1, "t"    # Lcom/android/gallery3d/glrenderer/UploadedTexture;

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->isContentValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    monitor-exit p0

    return-void

    .line 64
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setIsUploading(Z)V

    .line 66
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/TextureUploader;->queueSelfIfNeed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 40
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setIsUploading(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 43
    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setIsUploading(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 46
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public onGLIdle(Lcom/android/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 4
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "renderRequested"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, "uploadQuota":I
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/android/gallery3d/glrenderer/TextureUploader;->upload(Lcom/android/gallery3d/glrenderer/GLCanvas;Ljava/util/ArrayDeque;IZ)I

    move-result v0

    .line 98
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mGLRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/gallery3d/glrenderer/TextureUploader;->upload(Lcom/android/gallery3d/glrenderer/GLCanvas;Ljava/util/ArrayDeque;IZ)I

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mFgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mBgTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mIsQueued:Z

    .line 102
    iget-boolean v1, p0, Lcom/android/gallery3d/glrenderer/TextureUploader;->mIsQueued:Z

    monitor-exit p0

    return v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
