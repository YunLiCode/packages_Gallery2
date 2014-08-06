.class public Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;
.super Ljava/lang/Object;
.source "PanoramaViewRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cubemapResourceId:I

.field private initializationRequired:Z

.field private mAutoRotationCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoSpin:Z

.field private mAutoSpinFadeFactor:F

.field private mAutospinRateDegrees:F

.field private mCompassMode:Z

.field private final mContext:Landroid/content/Context;

.field private mCurFieldOfViewHorizontalDegrees:F

.field private mCurFieldOfViewLongSideDegrees:F

.field private mCurFieldOfViewVerticalDegrees:F

.field private mCurrentFov:F

.field private mFieldOfViewDegreesZoomStart:F

.field private mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

.field private mImageBoundsDeg:Landroid/graphics/RectF;

.field private mIntroSpinAngleLeftDegrees:F

.field private mLockPaddingDegrees:F

.field private mMVPMatrix:[F

.field private mModelView:[F

.field private mObjectsInitialized:Z

.field private mOffsetMatrix:[F

.field private mOnInitializedCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationAngleDegrees:F

.field private mOrientationAngleDegreesTarget:F

.field private mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

.field private mPanoramaOpacity:F

.field private mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

.field private mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

.field private mPerspective:[F

.field private mPitchAngleDegrees:F

.field private mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTempMatrix:[F

.field private mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

.field private mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

.field private mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

.field private mYawAngleDegrees:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/viewer/PanoramaView;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;Landroid/content/Context;I)V
    .locals 5
    .param p1, "panoramaView"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaView;
    .param p2, "image"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cubemapResourceId"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x10

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mObjectsInitialized:Z

    .line 63
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 71
    const/high16 v0, 0x42960000

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 72
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFieldOfViewDegreesZoomStart:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewLongSideDegrees:F

    .line 73
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewHorizontalDegrees:F

    .line 74
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewVerticalDegrees:F

    .line 75
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFieldOfViewDegreesZoomStart:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurrentFov:F

    .line 78
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 79
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    .line 80
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegreesTarget:F

    .line 81
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegrees:F

    .line 82
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    .line 83
    const v0, 0x3eb33333

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutospinRateDegrees:F

    .line 84
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    .line 85
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    .line 97
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPerspective:[F

    .line 98
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    .line 99
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mMVPMatrix:[F

    .line 100
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTempMatrix:[F

    .line 101
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOffsetMatrix:[F

    .line 105
    iput-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 107
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCompassMode:Z

    .line 108
    iput-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoRotationCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 109
    iput-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    .line 110
    iput-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOnInitializedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 112
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initializationRequired:Z

    .line 122
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mLockPaddingDegrees:F

    .line 123
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImageBoundsDeg:Landroid/graphics/RectF;

    .line 151
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    .line 152
    invoke-direct {p0, p2}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setPanoramaImage(Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V

    .line 153
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mContext:Landroid/content/Context;

    .line 154
    iput p4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->cubemapResourceId:I

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOffsetMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 156
    return-void
.end method

.method private static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 747
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private drawScene()V
    .locals 3

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->updateMatrices()V

    .line 473
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initFrame()V

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->draw([F)V

    .line 479
    const/high16 v1, 0x3f800000

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 480
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 481
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 482
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_GRAY:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 488
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->bind()V

    .line 489
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    iget v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 490
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->draw([F)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method private enforceBounds()V
    .locals 11

    .prologue
    const/high16 v8, 0x42b40000

    const/high16 v10, 0x40000000

    .line 671
    const/high16 v6, 0x41a00000

    iget v7, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewLongSideDegrees:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mLockPaddingDegrees:F

    .line 675
    iget v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    const/high16 v7, -0x3d4c0000

    invoke-static {v6, v7, v8}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->clamp(FFF)F

    move-result v6

    iput v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    .line 679
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v6}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getPanoWidthRad()F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x401921fb54442d18L

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    .line 707
    :goto_0
    return-void

    .line 683
    :cond_0
    iget v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewHorizontalDegrees:F

    div-float v2, v6, v10

    .line 685
    .local v2, "mCurFieldOfViewHorizontalDegreesHalf":F
    iget v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewVerticalDegrees:F

    div-float v3, v6, v10

    .line 689
    .local v3, "mCurFieldOfViewVerticalDegreesHalf":F
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImageBoundsDeg:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mLockPaddingDegrees:F

    sub-float/2addr v6, v7

    add-float v4, v6, v2

    .line 691
    .local v4, "rightBoundsMax":F
    iget v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 694
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImageBoundsDeg:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mLockPaddingDegrees:F

    add-float/2addr v6, v7

    sub-float v1, v6, v2

    .line 696
    .local v1, "leftBoundsMax":F
    iget v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 699
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImageBoundsDeg:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mLockPaddingDegrees:F

    sub-float/2addr v6, v7

    add-float v5, v6, v3

    .line 701
    .local v5, "topBoundsMax":F
    iget v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    neg-float v6, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    neg-float v6, v6

    iput v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    .line 704
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImageBoundsDeg:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mLockPaddingDegrees:F

    add-float/2addr v6, v7

    sub-float v0, v6, v3

    .line 706
    .local v0, "bottomBoundsMax":F
    iget v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    neg-float v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    neg-float v6, v6

    iput v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    goto :goto_0
.end method

.method private getMaxTextureSize()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 652
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 653
    .local v0, "result":[I
    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 654
    aget v1, v0, v2

    return v1
.end method

.method private initFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 394
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceWidth:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 397
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 398
    const/16 v0, 0x100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 399
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 400
    return-void
.end method

.method private initRendering()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 604
    iput-boolean v13, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initializationRequired:Z

    .line 607
    new-instance v8, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-direct {v8}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;-><init>()V

    iput-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    .line 608
    new-instance v8, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-direct {v8}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;-><init>()V

    iput-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    .line 609
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v9, Lcom/google/android/apps/lightcycle/Constants;->ANDROID_BLUE:[F

    invoke-virtual {v8, v9}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 612
    const/16 v1, 0x20

    .line 613
    .local v1, "kLatitudes":I
    const/16 v3, 0x40

    .line 614
    .local v3, "kLongitudes":I
    const v5, 0x409ccccd

    .line 615
    .local v5, "kRadius":F
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v8}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileProvider()Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-result-object v8

    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getMaxTextureSize()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->setMaximumTextureSize(I)V

    .line 616
    new-instance v8, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    invoke-direct {v8, v5}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;-><init>(F)V

    iput-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    .line 617
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v8, v9}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->setImage(Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V

    .line 618
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v8, v9}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 621
    const/16 v2, 0x18

    .line 622
    .local v2, "kLatitudesWire":I
    const/16 v4, 0x30

    .line 623
    .local v4, "kLongitudesWire":I
    const/high16 v6, 0x41000000

    .line 624
    .local v6, "kRadiusWire":F
    new-instance v8, Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-direct {v8, v2, v4, v6}, Lcom/google/android/apps/lightcycle/opengl/Sphere;-><init>(IIF)V

    iput-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    .line 625
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-virtual {v8, v14}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->setLineDrawing(Z)V

    .line 626
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v8, v9}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 629
    sget-object v8, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    aget v8, v8, v13

    sget-object v9, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    aget v9, v9, v14

    sget-object v10, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    sget-object v11, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-static {v8, v9, v10, v11}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 634
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 635
    .local v7, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v13, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 636
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->cubemapResourceId:I

    invoke-static {v8, v9, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 638
    .local v0, "cubemap":Landroid/graphics/Bitmap;
    new-instance v8, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    const/high16 v9, 0x42000000

    invoke-direct {v8, v0, v9}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;-><init>(Landroid/graphics/Bitmap;F)V

    iput-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    .line 639
    iput-boolean v14, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mObjectsInitialized:Z

    .line 641
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOnInitializedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v8, :cond_0

    .line 642
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOnInitializedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 644
    :cond_0
    return-void
.end method

.method private onAutoRotationStateChanged()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoRotationCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoRotationCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->requestRender()V

    .line 662
    return-void
.end method

.method private static scaleFov(FFF)F
    .locals 10
    .param p0, "origFovDegrees"    # F
    .param p1, "fromDimension"    # F
    .param p2, "toDimension"    # F

    .prologue
    const-wide/high16 v8, 0x4000000000000000L

    .line 729
    float-to-double v4, p1

    float-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    div-double v0, v4, v6

    .line 731
    .local v0, "f":D
    float-to-double v4, p2

    mul-double v6, v8, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double v2, v8, v4

    .line 732
    .local v2, "newFov":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 733
    double-to-float v4, v2

    return v4
.end method

.method private setPanoramaImage(Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V
    .locals 7
    .param p1, "image"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    .line 174
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getPanoWidthRad()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 175
    .local v1, "widthDegrees":F
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImageBoundsDeg:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getOffsetLeftRad()F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 177
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImageBoundsDeg:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImageBoundsDeg:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 179
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getPanoHeightRad()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 180
    .local v0, "heightDegrees":F
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImageBoundsDeg:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getOffsetTopRad()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 182
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImageBoundsDeg:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImageBoundsDeg:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 184
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->enforceBounds()V

    .line 185
    return-void
.end method

.method private setPerspective(FFFF)V
    .locals 8
    .param p1, "fieldOfViewY"    # F
    .param p2, "aspectRatio"    # F
    .param p3, "zMin"    # F
    .param p4, "zMax"    # F

    .prologue
    .line 413
    float-to-double v0, p1

    const-wide v6, 0x4076800000000000L

    div-double/2addr v0, v6

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v5, v0, p3

    .line 414
    .local v5, "height":F
    mul-float v3, v5, p2

    .line 415
    .local v3, "width":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPerspective:[F

    const/4 v1, 0x0

    neg-float v2, v3

    neg-float v4, v5

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 417
    return-void
.end method

.method private stopAutoRotate(Z)V
    .locals 1
    .param p1, "withSlowDown"    # Z

    .prologue
    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 716
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    .line 717
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->onAutoRotationStateChanged()V

    .line 718
    return-void

    .line 716
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateMatrices()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 425
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewVerticalDegrees:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float v10, v0, v1

    .line 433
    .local v10, "aspectRatio":F
    const/high16 v12, 0x3f000000

    .line 434
    .local v12, "kMinZ":F
    const/high16 v11, 0x43480000

    .line 435
    .local v11, "kMaxZ":F
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewVerticalDegrees:F

    const/high16 v1, 0x3f000000

    const/high16 v4, 0x43480000

    invoke-direct {p0, v0, v10, v1, v4}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setPerspective(FFFF)V

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 441
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegreesTarget:F

    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegrees:F

    sub-float/2addr v1, v4

    const v4, 0x3da3d70a

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegrees:F

    .line 445
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCompassMode:Z

    if-eqz v0, :cond_3

    .line 446
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getDisplayInitialOrientationDegrees()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v1

    sub-float v2, v0, v1

    .line 450
    .local v2, "orientationRotation":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 453
    .end local v2    # "orientationRotation":F
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v3

    .line 454
    .local v3, "ekfOrientation":[F
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOffsetMatrix:[F

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v3

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 455
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTempMatrix:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 456
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTempMatrix:[F

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    const/high16 v7, 0x3f800000

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 457
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTempMatrix:[F

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 458
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mMVPMatrix:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPerspective:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mTempMatrix:[F

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 425
    .end local v3    # "ekfOrientation":[F
    .end local v10    # "aspectRatio":F
    .end local v11    # "kMaxZ":F
    .end local v12    # "kMinZ":F
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 461
    .restart local v10    # "aspectRatio":F
    .restart local v11    # "kMaxZ":F
    .restart local v12    # "kMinZ":F
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationAngleDegrees:F

    neg-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 462
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    const/high16 v7, 0x3f800000

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 463
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 464
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mMVPMatrix:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPerspective:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private xyzToPitchYaw([F)Lcom/google/android/apps/lightcycle/math/PitchYaw;
    .locals 7
    .param p1, "xyz"    # [F

    .prologue
    .line 249
    new-instance v1, Lcom/google/android/apps/lightcycle/math/Vector3;

    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v4, 0x1

    aget v4, p1, v4

    const/4 v5, 0x2

    aget v5, p1, v5

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>(FFF)V

    .line 250
    .local v1, "vec3":Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/math/Vector3;->normalize()F

    .line 251
    iget v3, v1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 252
    .local v0, "pitchRad":F
    iget v3, v1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    float-to-double v3, v3

    iget v5, v1, Lcom/google/android/apps/lightcycle/math/Vector3;->z:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v2, v3

    .line 253
    .local v2, "yawRad":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 254
    float-to-double v3, v2

    const-wide v5, 0x401921fb54442d18L

    add-double/2addr v3, v5

    double-to-float v2, v3

    .line 256
    :cond_0
    new-instance v3, Lcom/google/android/apps/lightcycle/math/PitchYaw;

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/lightcycle/math/PitchYaw;-><init>(FF)V

    return-object v3
.end method


# virtual methods
.method public endPinchZoom(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 378
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFieldOfViewDegreesZoomStart:F

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->updateFieldOfViewDegrees(F)V

    .line 379
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewLongSideDegrees:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 380
    return-void
.end method

.method public getPitchDegrees()F
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    return v0
.end method

.method public getYawDegrees()F
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    .line 510
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mObjectsInitialized:Z

    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initializationRequired:Z

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileProvider()Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getMaxTextureSize()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->setMaximumTextureSize(I)V

    .line 516
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->setImage(Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V

    .line 517
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->loadTextures()Z

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initializationRequired:Z

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->onDrawFrame()V

    .line 525
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    if-eqz v0, :cond_7

    .line 526
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutospinRateDegrees:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 527
    iput v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    .line 530
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 531
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutospinRateDegrees:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    .line 535
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 536
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->stopAutoRotate(Z)V

    .line 539
    :cond_4
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->updateMatrices()V

    .line 540
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->enforceBounds()V

    .line 549
    :cond_5
    :goto_1
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    sub-float v1, v3, v1

    const v2, 0x3d4ccccd

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    .line 553
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mObjectsInitialized:Z

    if-eqz v0, :cond_6

    .line 554
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->drawScene()V

    .line 557
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaView:Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->requestRender()V

    goto :goto_0

    .line 541
    :cond_7
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    const v1, 0x3951b717

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 542
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutospinRateDegrees:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 543
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    const v1, 0x3f6b851f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpinFadeFactor:F

    .line 544
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->updateMatrices()V

    .line 545
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->enforceBounds()V

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 575
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mImage:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    if-nez v1, :cond_0

    .line 576
    sget-object v1, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->TAG:Ljava/lang/String;

    const-string v2, "Image file not set. Cannot initialize rendering."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :goto_0
    return-void

    .line 579
    :cond_0
    iput p2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceWidth:I

    .line 580
    iput p3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    .line 582
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mObjectsInitialized:Z

    if-nez v1, :cond_1

    .line 585
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->initRendering()V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_1
    :goto_1
    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurrentFov:F

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->updateFieldOfViewDegrees(F)V

    .line 591
    const-string v1, "Rendering init completed."

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 595
    return-void
.end method

.method public pinchZoom(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 369
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mFieldOfViewDegreesZoomStart:F

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->updateFieldOfViewDegrees(F)V

    .line 370
    return-void
.end method

.method public screenToPitchYaw(FF)Lcom/google/android/apps/lightcycle/math/PitchYaw;
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 230
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->updateMatrices()V

    .line 233
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    int-to-float v0, v0

    sub-float p2, v0, p2

    .line 235
    new-array v9, v1, [F

    .line 236
    .local v9, "outputVec":[F
    const/high16 v2, -0x40800000

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mModelView:[F

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPerspective:[F

    new-array v7, v1, [I

    aput v4, v7, v4

    const/4 v0, 0x1

    aput v4, v7, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceWidth:I

    aput v1, v7, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    aput v1, v7, v0

    move v0, p1

    move v1, p2

    move v6, v4

    move v8, v4

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluUnProject(FFF[FI[FI[II[FI)I

    .line 239
    invoke-direct {p0, v9}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->xyzToPitchYaw([F)Lcom/google/android/apps/lightcycle/math/PitchYaw;

    move-result-object v0

    return-object v0
.end method

.method public setAutoRotationCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "autoRotationCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoRotationCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 294
    return-void
.end method

.method public setOnInitializedCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOnInitializedCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 301
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mObjectsInitialized:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 304
    :cond_0
    return-void
.end method

.method public setPitchAngleDegrees(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 205
    iput p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPitchAngleDegrees:F

    .line 206
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->enforceBounds()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 208
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->onAutoRotationStateChanged()V

    .line 209
    return-void
.end method

.method public setSensorReader(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 0
    .param p1, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;
    .param p2, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 276
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 277
    return-void
.end method

.method public setYawAngleDegrees(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 193
    iput p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 194
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->enforceBounds()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 196
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->onAutoRotationStateChanged()V

    .line 197
    return-void
.end method

.method public startIntroAnimation()V
    .locals 1

    .prologue
    .line 163
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mIntroSpinAngleLeftDegrees:F

    .line 164
    const/high16 v0, -0x3e100000

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mYawAngleDegrees:F

    .line 165
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->enforceBounds()V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mPanoramaOpacity:F

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 168
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->onAutoRotationStateChanged()V

    .line 169
    return-void
.end method

.method public toggleAutoSpin()V
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutoSpin:Z

    .line 263
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->onAutoRotationStateChanged()V

    .line 264
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFieldOfViewDegrees(F)V
    .locals 4
    .param p1, "fov"    # F

    .prologue
    const/high16 v3, 0x42b40000

    .line 338
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 339
    const/high16 v0, 0x41a00000

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 340
    iput p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurrentFov:F

    .line 342
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceWidth:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    if-le v0, v1, :cond_0

    .line 344
    iput p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewHorizontalDegrees:F

    .line 345
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewHorizontalDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->scaleFov(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewVerticalDegrees:F

    .line 347
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewHorizontalDegrees:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewLongSideDegrees:F

    .line 357
    :goto_0
    const v0, 0x3eb33333

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewHorizontalDegrees:F

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mAutospinRateDegrees:F

    .line 359
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->enforceBounds()V

    .line 360
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->updateMatrices()V

    .line 361
    return-void

    .line 350
    :cond_0
    iput p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewVerticalDegrees:F

    .line 351
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mSurfaceWidth:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->scaleFov(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewHorizontalDegrees:F

    .line 353
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewVerticalDegrees:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->mCurFieldOfViewLongSideDegrees:F

    goto :goto_0
.end method
