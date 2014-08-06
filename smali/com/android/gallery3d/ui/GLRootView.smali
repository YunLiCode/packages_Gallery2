.class public Lcom/android/gallery3d/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/android/gallery3d/ui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GLRootView$IdleRunner;
    }
.end annotation


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

.field private mCompensation:I

.field private mCompensationMatrix:Landroid/graphics/Matrix;

.field private mContentView:Lcom/android/gallery3d/ui/GLView;

.field private mDisplayRotation:I

.field private mFirstDraw:Z

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFreeze:Z

.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field private mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x5

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    .line 68
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 71
    iput v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mInvalidateColor:I

    .line 91
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    .line 94
    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 95
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 100
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    .line 103
    new-instance v3, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;-><init>(Lcom/android/gallery3d/ui/GLRootView;Lcom/android/gallery3d/ui/GLRootView$1;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    .line 105
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 106
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    .line 111
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFirstDraw:Z

    .line 199
    new-instance v3, Lcom/android/gallery3d/ui/GLRootView$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/GLRootView$1;-><init>(Lcom/android/gallery3d/ui/GLRootView;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    .line 120
    iget v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 121
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_GLES20_REQUIRED:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->setEGLContextClientVersion(I)V

    .line 123
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    .line 124
    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLRootView;->setEGLConfigChooser(IIIIII)V

    .line 128
    :goto_1
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 129
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 137
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 122
    goto :goto_0

    .line 126
    :cond_1
    const/4 v2, 0x6

    move-object v0, p0

    move v1, v7

    move v3, v7

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLRootView;->setEGLConfigChooser(IIIIII)V

    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/GLRootView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ui/GLRootView;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->superRequestRender()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/GLRootView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/GLRootView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/GLRootView;)Lcom/android/gallery3d/glrenderer/GLCanvas;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/GLRootView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/GLRootView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ui/GLRootView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    return v0
.end method

.method private layoutContentPane()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 228
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 230
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getWidth()I

    move-result v4

    .line 231
    .local v4, "w":I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHeight()I

    move-result v2

    .line 232
    .local v2, "h":I
    const/4 v1, 0x0

    .line 233
    .local v1, "displayRotation":I
    const/4 v0, 0x0

    .line 236
    .local v0, "compensation":I
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    if-eqz v5, :cond_3

    .line 237
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/OrientationSource;->getDisplayRotation()I

    move-result v1

    .line 238
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/OrientationSource;->getCompensation()I

    move-result v0

    .line 244
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    if-eq v5, v0, :cond_0

    .line 245
    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    .line 246
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_4

    .line 247
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 249
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    neg-int v6, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 251
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 256
    :cond_0
    :goto_1
    iput v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mDisplayRotation:I

    .line 259
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_1

    .line 260
    move v3, v4

    .line 261
    .local v3, "tmp":I
    move v4, v2

    .line 262
    move v2, v3

    .line 264
    .end local v3    # "tmp":I
    :cond_1
    const-string v5, "GLRootView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "layout content pane "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (compensation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 267
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v5, v9, v9, v4, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 271
    :cond_2
    return-void

    .line 240
    :cond_3
    const/4 v1, 0x0

    .line 241
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 395
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->deleteRecycledResources()V

    .line 398
    invoke-static {}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->resetUploadLimit()V

    .line 400
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 402
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mDisplayRotation:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/OrientationSource;->getDisplayRotation()I

    move-result v5

    if-ne v4, v5, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 405
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->layoutContentPane()V

    .line 408
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 409
    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    neg-int v4, v4

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/GLRootView;->rotateCanvas(I)V

    .line 410
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v4, :cond_3

    .line 411
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 413
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 415
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 416
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    .line 417
    .local v2, "now":J
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 418
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v4, v2, v3}, Lcom/android/gallery3d/anim/CanvasAnimation;->setStartTime(J)V

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 423
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "now":J
    :cond_5
    invoke-static {}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->uploadLimitReached()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 424
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 427
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v5

    .line 428
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 429
    :cond_7
    monitor-exit v5

    .line 439
    return-void

    .line 429
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private rotateCanvas(I)V
    .locals 8
    .param p1, "degrees"    # I

    .prologue
    const/4 v7, 0x0

    .line 442
    if-nez p1, :cond_0

    .line 454
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getWidth()I

    move-result v3

    .line 444
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHeight()I

    move-result v2

    .line 445
    .local v2, "h":I
    div-int/lit8 v0, v3, 0x2

    .line 446
    .local v0, "cx":I
    div-int/lit8 v1, v2, 0x2

    .line 447
    .local v1, "cy":I
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 448
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

    int-to-float v5, p1

    const/high16 v6, 0x3f800000

    invoke-interface {v4, v5, v7, v7, v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 449
    rem-int/lit16 v4, p1, 0xb4

    if-eqz v4, :cond_1

    .line 450
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v0

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 452
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method private superRequestRender()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 208
    return-void
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 153
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 482
    :goto_0
    return v1

    .line 460
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 461
    .local v0, "action":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_6

    .line 463
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 468
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    if-eqz v3, :cond_3

    .line 469
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v3}, Lcom/android/gallery3d/util/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 472
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 475
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 477
    .local v1, "handled":Z
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 478
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 464
    .end local v1    # "handled":Z
    :cond_6
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 622
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    .line 626
    return-void

    .line 624
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    throw v0
.end method

.method public freeze()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 565
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 566
    return-void
.end method

.method public getCompensation()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mDisplayRotation:I

    return v0
.end method

.method public lockRenderThread()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 522
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 616
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 617
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 342
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->update()V

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 350
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 355
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 363
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFirstDraw:Z

    if-eqz v0, :cond_1

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFirstDraw:Z

    .line 365
    new-instance v0, Lcom/android/gallery3d/ui/GLRootView$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/GLRootView$2;-><init>(Lcom/android/gallery3d/ui/GLRootView;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->post(Ljava/lang/Runnable;)Z

    .line 389
    :cond_1
    return-void

    .line 357
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 276
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    .line 277
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 532
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 539
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl1"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 313
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gl10: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 316
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->setRenderThread()V

    move-object v0, p1

    .line 321
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 322
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 324
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v1, p2, p3}, Lcom/android/gallery3d/glrenderer/GLCanvas;->setSize(II)V

    .line 325
    return-void

    .line 322
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl1"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 285
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 286
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLObject has changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 292
    :try_start_0
    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 293
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_GLES20_REQUIRED:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-direct {v1}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/glrenderer/GLCanvas;

    .line 294
    invoke-static {}, Lcom/android/gallery3d/glrenderer/BasicTexture;->invalidateAllTextures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 302
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setRenderMode(I)V

    .line 304
    return-void

    .line 293
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/glrenderer/GLES11Canvas;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public registerLaunchedAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V
    .locals 1
    .param p1, "animation"    # Lcom/android/gallery3d/anim/CanvasAnimation;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 225
    :goto_0
    return-void

    .line 218
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 220
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 221
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 192
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public requestRenderForced()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->superRequestRender()V

    .line 181
    return-void
.end method

.method public setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 9
    .param p1, "content"    # Lcom/android/gallery3d/ui/GLView;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 158
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-ne v2, p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v2, :cond_3

    .line 160
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    if-eqz v2, :cond_2

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 162
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 164
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2, v8}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 165
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 166
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 168
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->detachFromRoot()V

    .line 169
    invoke-static {}, Lcom/android/gallery3d/glrenderer/BasicTexture;->yieldAllTextures()V

    .line 171
    :cond_3
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    .line 172
    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/GLView;->attachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setLightsOutMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 579
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    if-nez v1, :cond_0

    .line 589
    :goto_0
    return-void

    .line 581
    :cond_0
    const/4 v0, 0x0

    .line 582
    .local v0, "flags":I
    if-eqz p1, :cond_1

    .line 583
    const/4 v0, 0x1

    .line 584
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz v1, :cond_1

    .line 585
    or-int/lit16 v0, v0, 0x104

    .line 588
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V
    .locals 0
    .param p1, "source"    # Lcom/android/gallery3d/ui/OrientationSource;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    .line 544
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 598
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 599
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 604
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 605
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 610
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 611
    return-void
.end method

.method public unfreeze()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 572
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 573
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 574
    return-void
.end method

.method public unlockRenderThread()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 527
    return-void
.end method
