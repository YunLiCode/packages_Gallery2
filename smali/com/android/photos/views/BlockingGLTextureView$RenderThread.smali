.class Lcom/android/photos/views/BlockingGLTextureView$RenderThread;
.super Ljava/lang/Thread;
.source "BlockingGLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/BlockingGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/android/photos/views/BlockingGLTextureView$EglHelper;

.field private mExecMsgId:I

.field private mFinished:Z

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHeight:I

.field private mLock:Ljava/lang/Object;

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 323
    const-string v0, "RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 311
    new-instance v0, Lcom/android/photos/views/BlockingGLTextureView$EglHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/photos/views/BlockingGLTextureView$EglHelper;-><init>(Lcom/android/photos/views/BlockingGLTextureView$1;)V

    iput-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/android/photos/views/BlockingGLTextureView$EglHelper;

    .line 313
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    .line 314
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mFinished:Z

    .line 324
    iput-object p1, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 325
    invoke-virtual {p0}, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->start()V

    .line 326
    return-void
.end method

.method private checkRenderer()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Renderer is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    return-void
.end method

.method private checkSurface()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "surface is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    return-void
.end method

.method private exec(I)V
    .locals 3
    .param p1, "msgid"    # I

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    iget v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Message already set - multithreaded access?"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 379
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    .line 380
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :try_start_2
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    return-void

    .line 383
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleMessageLocked(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 388
    packed-switch p1, :pswitch_data_0

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 390
    :pswitch_0
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/android/photos/views/BlockingGLTextureView$EglHelper;

    iget-object v1, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/photos/views/BlockingGLTextureView$EglHelper;->createSurface(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/android/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/photos/views/BlockingGLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iput-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 392
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/android/photos/views/BlockingGLTextureView$EglHelper;

    iget-object v2, v2, Lcom/android/photos/views/BlockingGLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto :goto_0

    .line 396
    :pswitch_1
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mWidth:I

    iget v3, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mHeight:I

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    goto :goto_0

    .line 399
    :pswitch_2
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 400
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/android/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/photos/views/BlockingGLTextureView$EglHelper;->swap()I

    goto :goto_0

    .line 403
    :pswitch_3
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/android/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/photos/views/BlockingGLTextureView$EglHelper;->destroySurface()V

    .line 404
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/android/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/photos/views/BlockingGLTextureView$EglHelper;->finish()V

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mFinished:Z

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 368
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public render()V
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->checkRenderer()V

    .line 360
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 361
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    .line 362
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 364
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 412
    iget-object v1, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/android/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/android/photos/views/BlockingGLTextureView$EglHelper;->start()V

    .line 414
    :goto_0
    iget-boolean v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mFinished:Z

    if-nez v0, :cond_1

    .line 415
    :goto_1
    iget v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 417
    :try_start_1
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 418
    :catch_0
    move-exception v0

    goto :goto_1

    .line 420
    :cond_0
    :try_start_2
    iget v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    invoke-direct {p0, v0}, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->handleMessageLocked(I)V

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    .line 422
    iget-object v0, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 425
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->checkRenderer()V

    .line 352
    invoke-direct {p0}, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->checkSurface()V

    .line 353
    iput p1, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mWidth:I

    .line 354
    iput p2, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mHeight:I

    .line 355
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    .line 356
    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 343
    if-eqz p1, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->checkRenderer()V

    .line 346
    :cond_0
    iput-object p1, p0, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 347
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    .line 348
    return-void
.end method
