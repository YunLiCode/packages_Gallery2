.class public Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;
.super Ljava/lang/Object;
.source "PreparePageFadeoutTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# instance fields
.field private mCancelled:Z

.field private mResultReady:Landroid/os/ConditionVariable;

.field private mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mTexture:Lcom/android/gallery3d/glrenderer/RawTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLView;)V
    .locals 5
    .param p1, "rootPane"    # Lcom/android/gallery3d/ui/GLView;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    .line 16
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    .line 20
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v1

    .line 21
    .local v1, "w":I
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v0

    .line 22
    .local v0, "h":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 23
    :cond_0
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_1
    new-instance v2, Lcom/android/gallery3d/glrenderer/RawTexture;

    invoke-direct {v2, v1, v0, v4}, Lcom/android/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    .line 27
    iput-object p1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    goto :goto_0
.end method

.method public static prepareFadeOutTexture(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;)V
    .locals 5
    .param p0, "activity"    # Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .param p1, "rootPane"    # Lcom/android/gallery3d/ui/GLView;

    .prologue
    .line 64
    new-instance v1, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;-><init>(Lcom/android/gallery3d/ui/GLView;)V

    .line 65
    .local v1, "task":Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 67
    .local v0, "root":Lcom/android/gallery3d/ui/GLRoot;
    const/4 v2, 0x0

    .line 68
    .local v2, "texture":Lcom/android/gallery3d/glrenderer/RawTexture;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 70
    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 71
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->get()Lcom/android/gallery3d/glrenderer/RawTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 73
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 76
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v3

    const-string v4, "fade_texture"

    invoke-virtual {v3, v4, v2}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    throw v3
.end method


# virtual methods
.method public declared-synchronized get()Lcom/android/gallery3d/glrenderer/RawTexture;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 35
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 41
    :goto_0
    monitor-exit p0

    return-object v0

    .line 37
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    return v0
.end method

.method public onGLIdle(Lcom/android/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 3
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "renderRequested"    # Z

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    if-nez v1, :cond_0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    invoke-interface {p1, v1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V

    .line 50
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 51
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 59
    const/4 v1, 0x0

    return v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    goto :goto_0
.end method
