.class public Lcom/android/camera/CameraScreenNail;
.super Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraScreenNail$DrawClient;,
        Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;,
        Lcom/android/camera/CameraScreenNail$Listener;
    }
.end annotation


# instance fields
.field private mAcquireTexture:Z

.field private mAlpha:F

.field private mAnimState:I

.field private mAnimTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

.field private mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

.field private final mDefaultDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

.field private mDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

.field private mEnableAspectRatioClamping:Z

.field private mFirstFrameArrived:Z

.field private mFullScreen:Z

.field private mListener:Lcom/android/camera/CameraScreenNail$Listener;

.field private mLock:Ljava/lang/Object;

.field private mOnFrameDrawnListener:Ljava/lang/Runnable;

.field private mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field private mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraScreenNail$Listener;Landroid/content/Context;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/camera/CameraScreenNail$Listener;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    .line 123
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;-><init>()V

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 62
    new-instance v0, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    .line 63
    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 78
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    .line 80
    iput-boolean v2, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/camera/CameraScreenNail;->mAcquireTexture:Z

    .line 82
    new-instance v0, Lcom/android/camera/CameraScreenNail$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraScreenNail$1;-><init>(Lcom/android/camera/CameraScreenNail;)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mDefaultDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

    .line 99
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mDefaultDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

    .line 100
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAlpha:F

    .line 124
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    .line 125
    new-instance v0, Lcom/android/camera/CaptureAnimManager;

    invoke-direct {v0, p2}, Lcom/android/camera/CaptureAnimManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    .line 126
    return-void
.end method

.method static synthetic access$001(Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraScreenNail;
    .param p1, "x1"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 34
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method private allocateTextureIfRequested(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 497
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mAcquireTexture:Z

    if-eqz v0, :cond_0

    .line 499
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->acquireSurfaceTexture(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mAcquireTexture:Z

    .line 501
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 503
    :cond_0
    monitor-exit v1

    .line 504
    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private callbackIfNeeded()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    invoke-interface {v0, p0}, Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;->onFrameDrawn(Lcom/android/camera/CameraScreenNail;)V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 306
    :cond_0
    return-void
.end method

.method private copyPreviewTexture(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000

    .line 412
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$DrawClient;->requiresSurfaceTexture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/camera/CameraScreenNail$DrawClient;->copyToTexture(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/glrenderer/RawTexture;II)Lcom/android/gallery3d/glrenderer/RawTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    .line 428
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v5

    .line 417
    .local v5, "width":I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v6

    .line 418
    .local v6, "height":I
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V

    .line 421
    const/4 v0, 0x0

    int-to-float v1, v6

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 422
    const/high16 v0, -0x40800000

    invoke-interface {p1, v2, v0, v2}, Lcom/android/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 423
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 424
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraScreenNail;->updateTransformMatrix([F)V

    .line 425
    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/glrenderer/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;[FIIII)V

    .line 426
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    goto :goto_0
.end method

.method private getTextureHeight()I
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    return v0
.end method

.method private getTextureWidth()I
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    return v0
.end method

.method private setPreviewLayoutSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 190
    const-string v0, "CAM_ScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview layout size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    .line 192
    iput p2, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    .line 193
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->updateRenderSize()V

    .line 194
    return-void
.end method

.method private updateRenderSize()V
    .locals 6

    .prologue
    .line 197
    iget-boolean v3, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-nez v3, :cond_0

    .line 198
    const/high16 v3, 0x3f800000

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    .line 199
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 200
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 201
    const-string v3, "CAM_ScreenNail"

    const-string v4, "aspect ratio clamping disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 212
    .local v0, "aspectRatio":F
    :goto_1
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    if-le v3, v4, :cond_2

    .line 213
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 215
    .local v2, "scaledTextureWidth":F
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .line 223
    .local v1, "scaledTextureHeight":F
    :goto_2
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    .line 224
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    .line 225
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 226
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 227
    const-string v3, "CAM_ScreenNail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aspect ratio clamping enabled, surfaceTexture scale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .end local v0    # "aspectRatio":F
    .end local v1    # "scaledTextureHeight":F
    .end local v2    # "scaledTextureWidth":F
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .restart local v0    # "aspectRatio":F
    goto :goto_1

    .line 218
    :cond_2
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 220
    .restart local v2    # "scaledTextureWidth":F
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .restart local v1    # "scaledTextureHeight":F
    goto :goto_2
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 233
    new-instance v0, Lcom/android/gallery3d/glrenderer/RawTexture;

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/android/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mAcquireTexture:Z

    .line 235
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public animateCapture(I)V
    .locals 2
    .param p1, "displayRotation"    # I

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureAnimManager;->setOrientation(I)V

    .line 275
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateFlashAndSlide()V

    .line 276
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 277
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateFlash(I)V
    .locals 2
    .param p1, "displayRotation"    # I

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/CaptureAnimManager;->setOrientation(I)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateFlash()V

    .line 289
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 290
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 291
    monitor-exit v1

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSlide()V
    .locals 2

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateSlide()V

    .line 297
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 298
    monitor-exit v1

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCamera()V
    .locals 3

    .prologue
    .line 262
    const-string v0, "CAM_ScreenNail"

    const-string v1, "animateSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 267
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 269
    :cond_0
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyTexture()V
    .locals 2

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 257
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 258
    monitor-exit v1

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public directDraw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 318
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

    .line 320
    .local v0, "draw":Lcom/android/camera/CameraScreenNail$DrawClient;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 321
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/CameraScreenNail$DrawClient;->onDraw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 322
    return-void

    .line 320
    .end local v0    # "draw":Lcom/android/camera/CameraScreenNail$DrawClient;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 14
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 337
    iget-object v13, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 338
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraScreenNail;->allocateTextureIfRequested(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 339
    iget-boolean v2, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v12

    .line 341
    .local v12, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

    invoke-interface {v2}, Lcom/android/camera/CameraScreenNail$DrawClient;->requiresSurfaceTexture()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v12, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v2, :cond_2

    .line 342
    :cond_1
    monitor-exit v13

    .line 409
    :goto_0
    return-void

    .line 344
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 345
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 346
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 348
    :cond_3
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->getAlpha()F

    move-result v11

    .line 349
    .local v11, "oldAlpha":F
    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAlpha:F

    invoke-interface {p1, v2}, Lcom/android/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 351
    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    packed-switch v2, :pswitch_data_0

    .line 383
    :goto_1
    :pswitch_0
    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 385
    :cond_4
    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 386
    iget-boolean v2, p0, Lcom/android/camera/CameraScreenNail;->mFullScreen:Z

    if-nez v2, :cond_6

    .line 388
    const/4 v10, 0x0

    .line 397
    .local v10, "drawn":Z
    :goto_2
    if-eqz v10, :cond_8

    .line 398
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v2}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 406
    .end local v10    # "drawn":Z
    :cond_5
    :goto_3
    invoke-interface {p1, v11}, Lcom/android/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 407
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->callbackIfNeeded()V

    .line 408
    monitor-exit v13

    goto :goto_0

    .end local v11    # "oldAlpha":F
    .end local v12    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 353
    .restart local v11    # "oldAlpha":F
    .restart local v12    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :pswitch_1
    :try_start_1
    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_1

    .line 356
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 357
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(II)V

    .line 358
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v2}, Lcom/android/camera/CameraScreenNail$Listener;->onPreviewTextureCopied()V

    .line 359
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 367
    :pswitch_3
    invoke-virtual {v12}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 368
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v8, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/SwitchAnimManager;->drawDarkPreview(Lcom/android/gallery3d/glrenderer/GLCanvas;IIIILcom/android/gallery3d/glrenderer/RawTexture;)Z

    goto :goto_1

    .line 372
    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v2}, Lcom/android/camera/SwitchAnimManager;->startAnimation()V

    .line 373
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 376
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 377
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v2}, Lcom/android/camera/CameraScreenNail$Listener;->onCaptureTextureCopied()V

    .line 378
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v2}, Lcom/android/camera/CaptureAnimManager;->startAnimation()V

    .line 379
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 390
    :cond_6
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    iget-object v5, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    move-object v3, p1

    move-object v4, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/glrenderer/RawTexture;IIII)Z

    move-result v10

    .restart local v10    # "drawn":Z
    goto :goto_2

    .line 394
    .end local v10    # "drawn":Z
    :cond_7
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v9, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v8, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/glrenderer/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/glrenderer/RawTexture;)Z

    move-result v10

    .restart local v10    # "drawn":Z
    goto :goto_2

    .line 402
    :cond_8
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 403
    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public enableAspectRatioClamping()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 186
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->updateRenderSize()V

    .line 187
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_0
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAlpha:F

    monitor-exit v1

    return v0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAnimationTexture()Lcom/android/gallery3d/glrenderer/RawTexture;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 5

    .prologue
    .line 482
    iget-object v3, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 483
    :try_start_0
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 484
    .local v1, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/CameraScreenNail;->mAcquireTexture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 486
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 487
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 492
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    return-object v1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "CAM_ScreenNail"

    const-string v4, "unexpected interruption"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getUncroppedRenderHeight()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getUncroppedRenderWidth()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getTextureWidth()I

    move-result v0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 2

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 434
    monitor-exit v1

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 448
    monitor-exit v1

    .line 460
    :goto_0
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 451
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_2

    .line 452
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 453
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 459
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 441
    monitor-exit v1

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mAcquireTexture:Z

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mAcquireTexture:Z

    .line 244
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 251
    :goto_0
    monitor-exit v1

    .line 252
    return-void

    .line 246
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    .line 249
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mAlpha:F

    .line 521
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 522
    monitor-exit v1

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDraw(Lcom/android/camera/CameraScreenNail$DrawClient;)V
    .locals 2
    .param p1, "draw"    # Lcom/android/camera/CameraScreenNail$DrawClient;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    if-nez p1, :cond_0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mDefaultDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

    iput-object v0, p0, Lcom/android/camera/CameraScreenNail;->mDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

    .line 331
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mListener:Lcom/android/camera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$Listener;->requestRender()V

    .line 333
    return-void

    .line 329
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mDraw:Lcom/android/camera/CameraScreenNail$DrawClient;

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setFullScreen(Z)V
    .locals 2
    .param p1, "full"    # Z

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/CameraScreenNail;->mFullScreen:Z

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnFrameDrawnOneShot(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 509
    monitor-exit v1

    .line 510
    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOneTimeOnFrameDrawnListener(Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;)V
    .locals 2
    .param p1, "l"    # Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 476
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 477
    monitor-exit v1

    .line 478
    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 467
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 469
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraScreenNail;->setPreviewLayoutSize(II)V

    .line 470
    monitor-exit v1

    .line 471
    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 170
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    if-nez v0, :cond_0

    .line 171
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mRenderWidth:I

    .line 172
    iput p2, p0, Lcom/android/camera/CameraScreenNail;->mRenderHeight:I

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->updateRenderSize()V

    .line 175
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 6
    .param p1, "matrix"    # [F

    .prologue
    const/high16 v0, 0x3f000000

    const/4 v5, 0x0

    const/high16 v4, -0x41000000

    const/4 v3, 0x0

    .line 310
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 311
    invoke-static {p1, v3, v0, v0, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 312
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mScaleX:F

    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mScaleY:F

    const/high16 v2, 0x3f800000

    invoke-static {p1, v3, v0, v1, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 313
    invoke-static {p1, v3, v4, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 314
    return-void
.end method
