.class public Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
.super Ljava/lang/Object;
.source "LightCycleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private kFpsLoggingInterval:I

.field private mAddNextFrame:Z

.field private mAnimationFovTargetDegrees:F

.field private mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

.field private mBlankFrames:I

.field private mBlankPending:Z

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

.field private mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

.field private mCurFieldOfViewDegrees:F

.field private mCurFieldOfViewDegreesScaled:F

.field private mCurrentFrameTexture:I

.field private mDeltaHeading:D

.field private mDeltaHeadingStack:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mDeltaHeadingStep:D

.field private mDeviceFieldOfViewDegrees:F

.field private mDisablePhotoTaking:Z

.field private mDisplayFrameImage:Z

.field private mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mFPSStartTime:J

.field private mFieldOfViewDegreesZoomStart:F

.field private mFinalizePhoto:Z

.field private mFlatDisplayMode:Z

.field private mFrameCount:I

.field private mFrameHeight:I

.field private final mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

.field private mFramePending:Z

.field private mFrameTransform:[F

.field private mFrameWidth:I

.field private mHoldStillStartTimeNs:J

.field private mHoldStillTargetHit:Z

.field private mHoldStillTimerStarted:Z

.field private mImageData:[B

.field private mInitialized:Z

.field private mIntroAnimating:Z

.field private mIntroFrameCount:I

.field private mMVPMatrix:[F

.field private mMaxFieldOfViewDegrees:I

.field private mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

.field private mMinFieldOfViewDegrees:I

.field private mModelView:[F

.field private mMovingTooFast:Z

.field private mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private mOrthographic:[F

.field private mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

.field private mPanoUpdate:Z

.field private mPanoramaEmpty:Z

.field private mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

.field private mPerspective:[F

.field private mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

.field private mPhotoInProgress:Z

.field private mPhotoInProgressQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

.field private mPreviousFrameTexture:I

.field private final mRealtimeAlignmentEnabled:Z

.field private mRenderBlankScreen:Z

.field private mRenderPending:Z

.field private mRenderTexturedPreview:Z

.field private final mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

.field private mRotate90:[F

.field private mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

.field private mTempMVPMatrix:[F

.field private mTempMatrix:[F

.field private mTestMatrix:[F

.field private mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

.field private mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

.field private mTexturesInitialized:Z

.field private mTiledGroundPlane:Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

.field private mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

.field private mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mUpdateTextures:Z

.field private mUseBlendedPreview:Z

.field private mValidEstimate:Z

.field private mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

.field private mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

.field private mXOffset:I

.field private mYOffset:I

.field private mZooming:Z

.field private newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

.field private oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

.field private renderingStopped:Z

.field private transformsCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/panorama/RenderedGui;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderedGui"    # Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
    .param p3, "realtimeAlignmentEnabled"    # Z

    .prologue
    const/high16 v6, 0x42c80000

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    .line 115
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    .line 116
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMVPMatrix:[F

    .line 117
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    .line 118
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    .line 119
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    .line 120
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    .line 121
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    .line 122
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTestMatrix:[F

    .line 123
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    .line 125
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

    .line 126
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

    .line 129
    const/high16 v0, 0x42700000

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 130
    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 131
    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 132
    const/16 v0, 0x78

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMaxFieldOfViewDegrees:I

    .line 133
    const/16 v0, 0x50

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMinFieldOfViewDegrees:I

    .line 134
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    .line 137
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInitialized:Z

    .line 146
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    .line 147
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderPending:Z

    .line 148
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturesInitialized:Z

    .line 151
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAddNextFrame:Z

    .line 152
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    .line 153
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMovingTooFast:Z

    .line 154
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgressQueue:Ljava/util/ArrayList;

    .line 156
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFlatDisplayMode:Z

    .line 157
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisplayFrameImage:Z

    .line 158
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    .line 161
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    .line 162
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpdateTextures:Z

    .line 164
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    .line 167
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillStartTimeNs:J

    .line 169
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    .line 173
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    .line 176
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    .line 177
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mImageData:[B

    .line 181
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroAnimating:Z

    .line 182
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroFrameCount:I

    .line 185
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    .line 189
    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->kFpsLoggingInterval:I

    .line 193
    iput-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    .line 194
    iput-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    .line 195
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    .line 200
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderBlankScreen:Z

    .line 201
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    .line 202
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankFrames:I

    .line 205
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUseBlendedPreview:Z

    .line 208
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    .line 1301
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$3;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->transformsCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;

    .line 215
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    .line 216
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    .line 217
    iput-boolean p3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRealtimeAlignmentEnabled:Z

    .line 218
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getOpenGlDefaultFieldOfViewDegrees()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 219
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 220
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getOpenGlMaxFieldOfViewDegrees()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMaxFieldOfViewDegrees:I

    .line 222
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getOpenGlMinFieldOfViewDegrees()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMinFieldOfViewDegrees:I

    .line 224
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFov(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->transformsCallback:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->setUpdatePhotoRenderingCallback(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$UpdatePhotoRendering;)V

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRealtimeAlignmentEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;D)D
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .param p1, "x1"    # D

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpdateTextures:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/TargetManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->oldForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)Lcom/google/android/apps/lightcycle/math/Vector3;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->newForwardVec:Lcom/google/android/apps/lightcycle/math/Vector3;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)D
    .locals 2
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    return-wide v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;D)D
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .param p1, "x1"    # D

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    return-wide p1
.end method

.method static synthetic access$918(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;D)D
    .locals 2
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .param p1, "x1"    # D

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    return-wide v0
.end method

.method private animateIntro()V
    .locals 18

    .prologue
    .line 585
    const/16 v16, 0x19

    .line 586
    .local v16, "kIntroMaxFrames":I
    const v17, 0x3f59999a

    .line 589
    .local v17, "kTranslationScale":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getCameraPreview()Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->getReportedHorizontalFovDegrees()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->getCameraFieldOfViewDegrees(F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    .line 594
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setView()V

    .line 595
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroFrameCount:I

    if-nez v1, :cond_1

    .line 596
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAnimationFovTargetDegrees:F

    .line 597
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeviceFieldOfViewDegrees:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 598
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFov(F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 602
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 607
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->initFrame()V

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setView()V

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v5

    .line 610
    .local v5, "filterOutput":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 611
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->drawObject([F)V

    .line 616
    const/high16 v1, 0x3f800000

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 617
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 618
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_GRAY:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->draw([F)V

    .line 628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 629
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v7, 0x0

    const/high16 v8, 0x43340000

    const/high16 v9, 0x3f800000

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getDisplayInitialOrientationDegrees()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v2

    sub-float v8, v1, v2

    .line 633
    .local v8, "rotateDegrees":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 634
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_WHITE:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 637
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .end local v5    # "filterOutput":[F
    .end local v8    # "rotateDegrees":F
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    const v2, 0x3e2e147b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAnimationFovTargetDegrees:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 646
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroFrameCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroFrameCount:I

    .line 647
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroFrameCount:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_2

    .line 648
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroAnimating:Z

    .line 649
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAnimationFovTargetDegrees:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 651
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFov(F)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->requestRender()V

    .line 653
    return-void

    .line 639
    :catch_0
    move-exception v15

    .line 640
    .local v15, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v15}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method private clearBackground()V
    .locals 1

    .prologue
    .line 536
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 537
    return-void
.end method

.method private createTextures()V
    .locals 3

    .prologue
    .line 1135
    const-string v0, "Creating textures"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1137
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createStandardTexture()I

    move-result v0

    .line 1140
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUseBlendedPreview:Z

    if-eqz v1, :cond_0

    .line 1141
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitPanoTexture(I)V

    .line 1142
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->createTexture(I)V

    .line 1143
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->setTextureId(I)V

    .line 1147
    :cond_0
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createStandardTexture()I

    move-result v0

    .line 1148
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    .line 1149
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->createTexture(I)V

    .line 1150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturesInitialized:Z

    .line 1153
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createNNTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    .line 1154
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    .line 1156
    invoke-static {}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->createNNTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    .line 1157
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitFrameTexture(III)V

    .line 1159
    const-string v0, "Finished creating textures."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1160
    return-void
.end method

.method private drawAlignArrows([F)V
    .locals 3

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v0

    .line 1218
    const/4 v1, 0x6

    aget v0, v0, v1

    neg-float v0, v0

    .line 1219
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1221
    const v1, 0x3eb2b8c2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1222
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 1223
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    const/high16 v2, 0x3f000000

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 1224
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V

    .line 1226
    :cond_0
    const v1, -0x414d473e

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 1228
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    const/high16 v1, 0x3f000000

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 1229
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :cond_1
    :goto_0
    return-void

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method private drawScene(I)V
    .locals 16
    .param p1, "frameTextureId"    # I

    .prologue
    .line 720
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 721
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 723
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setView()V

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateTextures()V

    .line 729
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 733
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setTextureId(I)V

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->isProcessingAlignment()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonEnabled(Z)V

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->initFrame()V

    .line 743
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 744
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMatrix:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->drawObject([F)V

    .line 750
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->drawObject([F)V

    .line 753
    const/high16 v1, 0x3f800000

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 754
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_GRAY:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 759
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderBlankScreen:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    if-eqz v1, :cond_4

    .line 760
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderPending:Z

    .line 763
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankFrames:I

    add-int/lit8 v2, v1, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankFrames:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 764
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :cond_0
    :goto_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderPending:Z

    .line 876
    return-void

    .line 729
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 730
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 735
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 769
    :cond_4
    const/16 v1, 0xbe2

    :try_start_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 770
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUseBlendedPreview:Z

    if-eqz v1, :cond_e

    .line 771
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->draw([F)V

    .line 780
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFlatDisplayMode:Z

    if-nez v1, :cond_7

    .line 781
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 782
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getDisplayInitialOrientationDegrees()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v2

    sub-float v3, v1, v2

    .line 785
    .local v3, "rotateDegrees":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v5, 0x0

    const/high16 v6, 0x43340000

    const/high16 v7, 0x3f800000

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMVPMatrix:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 788
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAddNextFrame:Z

    if-eqz v1, :cond_f

    .line 789
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->GREEN:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 793
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mValidEstimate:Z

    if-nez v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    if-eqz v1, :cond_7

    .line 794
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->bind()V

    .line 795
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    const v2, 0x3f333333

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 796
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTempMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    .line 801
    .end local v3    # "rotateDegrees":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setCurrentOrientation([F)V

    .line 802
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    invoke-virtual {v1, v2, v4}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawTargetsOrthographic([F[F)V

    .line 804
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 805
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 815
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 816
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 817
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 822
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    if-nez v1, :cond_8

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PhotoSkippedTooFast()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 823
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 824
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 827
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->PhotoSkippedTooFast()Z

    move-result v1

    if-nez v1, :cond_9

    .line 828
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 829
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 830
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillStartTimeNs:J

    .line 834
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    if-eqz v1, :cond_a

    .line 835
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 836
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillStartTimeNs:J

    sub-long v1, v14, v1

    long-to-double v1, v1

    const-wide v4, 0x41cdcd6500000000L

    div-double v11, v1, v4

    .line 837
    .local v11, "elapsed":D
    const-wide/high16 v1, 0x3fd0000000000000L

    cmpl-double v1, v11, v1

    if-lez v1, :cond_a

    .line 838
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    sget-object v2, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->HOLDSTILL:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    const-wide/high16 v4, 0x3fe8000000000000L

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->activateMessage(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;D)V

    .line 843
    .end local v11    # "elapsed":D
    .end local v14    # "now":J
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    if-eqz v1, :cond_b

    .line 844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    sget-object v2, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->HITTOSTART:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->activateMessage(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;D)V

    .line 845
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->drawAlignArrows([F)V

    .line 847
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->drawMessages([F)V

    .line 850
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->running()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->draw([FII)V

    .line 855
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->draw([F)V

    .line 858
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 863
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ValidInPlaneAngle()I

    move-result v13

    .line 864
    .local v13, "inPlane":I
    if-gez v13, :cond_10

    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->drawRotateDevice([FZ)V

    .line 870
    :cond_d
    :goto_6
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V
    :try_end_1
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 872
    .end local v13    # "inPlane":I
    :catch_0
    move-exception v10

    .line 873
    .local v10, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v10}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto/16 :goto_3

    .line 774
    .end local v10    # "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    :cond_e
    const/16 v1, 0xb71

    :try_start_2
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 775
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 776
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->draw([F)V

    goto/16 :goto_4

    .line 791
    .restart local v3    # "rotateDegrees":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_WHITE:[F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    goto/16 :goto_5

    .line 866
    .end local v3    # "rotateDegrees":F
    .restart local v13    # "inPlane":I
    :cond_10
    if-lez v13, :cond_d

    .line 867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->drawRotateDevice([FZ)V
    :try_end_2
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6
.end method

.method private initArrows()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000

    const/high16 v12, -0x40800000

    .line 385
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    const v10, 0x7f020196

    invoke-static {v9, v10}, Lcom/google/android/apps/lightcycle/util/UiUtil;->getDrawableDimensions(Landroid/content/Context;I)Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v4

    .line 387
    .local v4, "reticleSize":Lcom/google/android/apps/lightcycle/util/Size;
    iget v9, v4, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    int-to-float v9, v9

    const v10, 0x3f59999a

    mul-float/2addr v9, v10

    float-to-int v0, v9

    .line 388
    .local v0, "arrowOffset":I
    iget v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    div-int/lit8 v5, v9, 0x2

    .line 389
    .local v5, "surfaceHalfHeightPixels":I
    iget v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    div-int/lit8 v6, v9, 0x2

    .line 391
    .local v6, "surfaceHalfWidthPixels":I
    new-instance v8, Landroid/graphics/PointF;

    int-to-float v9, v6

    add-int v10, v5, v0

    int-to-float v10, v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 393
    .local v8, "upArrowPosPortrait":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v9, v6

    sub-int v10, v5, v0

    int-to-float v10, v10

    invoke-direct {v2, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 395
    .local v2, "downArrowPosPortrait":Landroid/graphics/PointF;
    new-instance v7, Landroid/graphics/PointF;

    add-int v9, v6, v0

    int-to-float v9, v9

    int-to-float v10, v5

    invoke-direct {v7, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 397
    .local v7, "upArrowPosLandscape":Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/PointF;

    sub-int v9, v6, v0

    int-to-float v9, v9

    int-to-float v10, v5

    invoke-direct {v1, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 399
    .local v1, "downArrowPosLandscape":Landroid/graphics/PointF;
    new-instance v9, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 400
    new-instance v9, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 401
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    const v11, 0x7f02018f

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 402
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    const v11, 0x7f02018e

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 403
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v11, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-virtual {v9, v7, v8, v10, v11}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 405
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v11, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-virtual {v9, v1, v2, v10, v11}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 409
    :try_start_0
    new-instance v9, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-direct {v9}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;-><init>()V

    iput-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 415
    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 416
    return-void

    .line 410
    :catch_0
    move-exception v3

    .line 411
    .local v3, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method private initFrame()V
    .locals 4

    .prologue
    .line 528
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mXOffset:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mYOffset:I

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewWidth:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 531
    const/16 v0, 0x100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 532
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 533
    return-void
.end method

.method private initRendering()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    .line 425
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    .line 426
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    .line 427
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    sget-object v1, Lcom/google/android/apps/lightcycle/Constants;->ANDROID_BLUE:[F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor([F)V

    .line 431
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    .line 434
    const/16 v7, 0x20

    .line 435
    .local v7, "kLatitudes":I
    const/16 v9, 0x40

    .line 436
    .local v9, "kLongitudes":I
    const v11, 0x409ccccd

    .line 437
    .local v11, "kRadius":F
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-direct {v0, v7, v9, v11}, Lcom/google/android/apps/lightcycle/opengl/Sphere;-><init>(IIF)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 441
    const/16 v8, 0x18

    .line 442
    .local v8, "kLatitudesWire":I
    const/16 v10, 0x30

    .line 443
    .local v10, "kLongitudesWire":I
    const/high16 v12, 0x41000000

    .line 444
    .local v12, "kRadiusWire":F
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-direct {v0, v8, v10, v12}, Lcom/google/android/apps/lightcycle/opengl/Sphere;-><init>(IIF)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    .line 445
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->setLineDrawing(Z)V

    .line 446
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 449
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

    .line 452
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    .line 455
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->init(Landroid/content/Context;Lcom/google/android/apps/lightcycle/opengl/Shader;IILcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 459
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;-><init>(Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    .line 463
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 464
    .local v13, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 465
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020040

    invoke-static {v0, v1, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 467
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    const/high16 v1, 0x42000000

    invoke-direct {v0, v6, v1}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;-><init>(Landroid/graphics/Bitmap;F)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    .line 468
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 471
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    new-instance v1, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$1;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->subscribe(Lcom/google/android/apps/lightcycle/panorama/MessageSender$MessageSubscriber;)V

    .line 483
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 484
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setOutlineShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 485
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 486
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->setLineShader(Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;)V

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 489
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 495
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 496
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x1

    const/high16 v2, -0x40800000

    aput v2, v0, v1

    .line 497
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x4

    const/high16 v2, 0x3f800000

    aput v2, v0, v1

    .line 498
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRotate90:[F

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 501
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 504
    sget-object v0, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInitialized:Z

    .line 510
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    .line 513
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    .line 520
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTestMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 521
    return-void
.end method

.method private logFPS()V
    .locals 6

    .prologue
    .line 1201
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    if-nez v0, :cond_0

    .line 1202
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFPSStartTime:J

    .line 1204
    :cond_0
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->kFpsLoggingInterval:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    if-eqz v0, :cond_1

    .line 1205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1206
    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFPSStartTime:J

    sub-long v2, v0, v2

    .line 1207
    const/high16 v4, 0x447a0000

    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->kFpsLoggingInterval:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    long-to-float v2, v2

    div-float v2, v4, v2

    .line 1209
    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFPSStartTime:J

    .line 1211
    :cond_1
    return-void
.end method

.method private declared-synchronized processFrame()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1038
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mImageData:[B

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v6}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->finished()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v6}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->isPreviewActive()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_0
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->processFrame([BIIZZ)V

    .line 1043
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->validEstimate()Z

    move-result v0

    .line 1044
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setValidEstimate(Z)V

    .line 1045
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->movingTooFast()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMovingTooFast:Z

    .line 1050
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->takeNewPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMovingTooFast:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    if-nez v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setPanoUpdate()V

    .line 1056
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->getRotationEstimate()[F

    move-result-object v0

    .line 1057
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->addNewPhoto([F)I

    move-result v1

    .line 1060
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1061
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->requestPhoto([FII)V

    .line 1065
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->setPhotoVisibility(IZ)V

    .line 1066
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgressQueue:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->updateTargets()V

    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    .line 1074
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->requestRender()V

    .line 1075
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateButtonVisibility()V

    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    .line 1079
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTargetHit:Z

    .line 1080
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mHoldStillTimerStarted:Z

    .line 1083
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    if-eqz v0, :cond_2

    .line 1086
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgressQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgressQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1088
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgressQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1089
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->setPhotoVisibility(IZ)V

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->finalizeHitTargets()V

    .line 1094
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    .line 1099
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->finished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1100
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;->targetHit()Z

    move-result v0

    .line 1103
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->running()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 1104
    const-string v0, "Starting the countdown"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->startCountdown()V

    .line 1114
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    if-eqz v0, :cond_4

    .line 1115
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->stopCountdown()V

    .line 1119
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    monitor-exit p0

    return-void

    :cond_5
    move v4, v5

    .line 1038
    goto/16 :goto_0

    .line 1106
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->running()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1108
    if-eqz v0, :cond_7

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMovingTooFast:Z

    if-eqz v0, :cond_3

    .line 1109
    :cond_7
    const-string v0, "Stopping the countdown."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->stopCountdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1038
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scaleFov(F)F
    .locals 10
    .param p1, "origFovDegrees"    # F

    .prologue
    const-wide/high16 v8, 0x4000000000000000L

    .line 707
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    if-ge v4, v5, :cond_0

    .line 708
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    int-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    div-double v0, v4, v6

    .line 710
    .local v0, "f":D
    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    int-to-double v4, v4

    mul-double v6, v8, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double v2, v8, v4

    .line 711
    .local v2, "newFov":D
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 712
    double-to-float p1, v2

    .line 714
    .end local v0    # "f":D
    .end local v2    # "newFov":D
    .end local p1    # "origFovDegrees":F
    :cond_0
    return p1
.end method

.method private setOrthographic(FFF)V
    .locals 10
    .param p1, "aspectRatio"    # F
    .param p2, "zMin"    # F
    .param p3, "zMax"    # F

    .prologue
    const/4 v2, 0x0

    .line 576
    const/high16 v9, 0x3f800000

    .line 577
    .local v9, "width":F
    const/high16 v0, 0x3f800000

    div-float v8, v0, p1

    .line 578
    .local v8, "height":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrthographic:[F

    const/4 v1, 0x0

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    int-to-float v5, v4

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 580
    return-void
.end method

.method private setPerspective(FFFF)V
    .locals 8
    .param p1, "fieldOfViewY"    # F
    .param p2, "aspectRatio"    # F
    .param p3, "zMin"    # F
    .param p4, "zMax"    # F

    .prologue
    .line 565
    float-to-double v0, p1

    const-wide v6, 0x4076800000000000L

    div-double/2addr v0, v6

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v5, v0, p3

    .line 566
    .local v5, "height":F
    mul-float v3, v5, p2

    .line 567
    .local v3, "width":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    const/4 v1, 0x0

    neg-float v2, v3

    neg-float v4, v5

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 569
    return-void
.end method

.method private setView()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 657
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    int-to-float v4, v4

    div-float v10, v0, v4

    .line 660
    .local v10, "aspectRatio":F
    const v13, 0x3dcccccd

    .line 661
    .local v13, "kMinZ":F
    const/high16 v11, 0x43480000

    .line 663
    .local v11, "kMaxZ":F
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    const v4, 0x3dcccccd

    const/high16 v5, 0x43480000

    invoke-direct {p0, v0, v10, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setPerspective(FFFF)V

    .line 666
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 667
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getDisplayInitialOrientationDegrees()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v4

    sub-float v2, v0, v4

    .line 670
    .local v2, "rotateDegrees":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    const/high16 v5, 0x3f800000

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 671
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMVPMatrix:[F

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPerspective:[F

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mModelView:[F

    move v4, v1

    move v6, v1

    move v8, v1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 674
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    int-to-float v6, v0

    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    int-to-float v7, v0

    const v8, 0x3ee66666

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    move v5, v10

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->init(Landroid/content/Context;FFFFLcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 677
    const/high16 v14, -0x3db80000

    .line 678
    .local v14, "kMinZOrtho":F
    const/high16 v12, 0x42480000

    .line 679
    .local v12, "kMaxZOrtho":F
    const/high16 v0, -0x3db80000

    const/high16 v1, 0x42480000

    invoke-direct {p0, v10, v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setOrthographic(FFF)V

    .line 682
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->init(Landroid/content/Context;IILcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 686
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v3}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->init(II)V

    .line 687
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setDeviceOrientationDetector(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 688
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setSensorReader(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    .line 691
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->init(IILcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 694
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->initArrows()V

    .line 696
    .end local v12    # "kMaxZOrtho":F
    .end local v14    # "kMinZOrtho":F
    :cond_0
    return-void
.end method

.method private updateButtonVisibility()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1128
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setDoneButtonVisible(Z)V

    .line 1129
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v3

    if-lt v3, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonVisible(Z)V

    .line 1130
    return-void

    :cond_0
    move v0, v2

    .line 1128
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1129
    goto :goto_1
.end method

.method private updateFieldOfViewDegrees(F)V
    .locals 2
    .param p1, "zoomRatio"    # F

    .prologue
    .line 372
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 373
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMaxFieldOfViewDegrees:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 375
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMinFieldOfViewDegrees:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    .line 378
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->scaleFov(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegreesScaled:F

    .line 379
    return-void
.end method

.method private updateTextures()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 541
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoUpdate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUseBlendedPreview:Z

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaSphere:Lcom/google/android/apps/lightcycle/opengl/Sphere;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->getTextureId()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UpdateTexture(I)I

    .line 543
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoUpdate:Z

    .line 546
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisplayFrameImage:Z

    if-eqz v0, :cond_1

    .line 549
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 557
    :cond_1
    :goto_0
    return-void

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    goto :goto_0
.end method


# virtual methods
.method public createFrameDisplay([FII)V
    .locals 2
    .param p1, "vertices"    # [F
    .param p2, "pointsX"    # I
    .param p3, "pointsY"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->generateGeometry([FIIF)V

    .line 364
    return-void
.end method

.method public drawFrame()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const-wide/16 v7, 0x0

    .line 889
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    if-nez v1, :cond_1

    .line 975
    :goto_0
    return-void

    .line 893
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturesInitialized:Z

    if-nez v1, :cond_2

    .line 894
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->createTextures()V

    .line 898
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mIntroAnimating:Z

    if-eqz v1, :cond_3

    .line 899
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->animateIntro()V

    .line 900
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderPending:Z

    goto :goto_0

    .line 904
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpdateTextures:Z

    if-eqz v1, :cond_4

    .line 908
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpdateTextures:Z

    .line 909
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UpdateNewTextures()V

    .line 913
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    if-nez v1, :cond_5

    .line 919
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->processFrame()V

    .line 922
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getEkfEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 924
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    if-eqz v1, :cond_a

    .line 925
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1, v7, v8}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 938
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    .line 939
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameTransform:[F

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetFilteredRotation([F)V

    .line 947
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    if-eqz v1, :cond_8

    .line 948
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UpdateFrameTexture(I)I

    .line 952
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->update()V

    .line 955
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    if-lez v1, :cond_9

    .line 956
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->drawScene(I)V

    .line 960
    :cond_9
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    .line 961
    .local v0, "tmp":I
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    .line 962
    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    .line 964
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameCount:I

    .line 971
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->requestRender()V

    .line 974
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->logFPS()V

    goto :goto_0

    .line 926
    .end local v0    # "tmp":I
    :cond_a
    iget-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    cmpl-double v1, v1, v7

    if-eqz v1, :cond_6

    .line 928
    iget-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L

    iget-wide v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_b

    .line 929
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getHeadingDegrees()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 931
    iput-wide v7, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    goto :goto_1

    .line 933
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getHeadingDegrees()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setHeadingDegrees(D)V

    .line 935
    iget-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    iget-wide v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    goto :goto_1
.end method

.method public endPinchZoom(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateFieldOfViewDegrees(F)V

    .line 357
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    .line 359
    return-void
.end method

.method public finalizePhoto()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFinalizePhoto:Z

    .line 346
    return-void
.end method

.method public freeGLMemory()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1390
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    if-eqz v2, :cond_0

    .line 1391
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->freeGLMemory()V

    .line 1393
    :cond_0
    new-array v1, v5, [I

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurrentFrameTexture:I

    aput v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreviousFrameTexture:I

    aput v3, v1, v2

    .line 1394
    .local v1, "textures":[I
    invoke-static {v5, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1395
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->getTexture()Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    move-result-object v0

    .line 1396
    .local v0, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    if-eqz v0, :cond_1

    .line 1397
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->recycle()V

    .line 1401
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    if-eqz v2, :cond_2

    .line 1402
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->freeGLMemory()V

    .line 1404
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    if-eqz v2, :cond_3

    .line 1405
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoSphereShader:Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/PanoSphereShader;->freeGLMemory()V

    .line 1407
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    if-eqz v2, :cond_4

    .line 1408
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->freeGLMemory()V

    .line 1410
    :cond_4
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    if-eqz v2, :cond_5

    .line 1411
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mWireShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->freeGLMemory()V

    .line 1413
    :cond_5
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-eqz v2, :cond_6

    .line 1414
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mArrowShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->freeGLMemory()V

    .line 1418
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    if-eqz v2, :cond_7

    .line 1419
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTexturedCube:Lcom/google/android/apps/lightcycle/opengl/TexturedCube;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->freeGLMemory()V

    .line 1421
    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

    if-eqz v2, :cond_8

    .line 1422
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTiledGroundPlane:Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->freeGLMemory()V

    .line 1424
    :cond_8
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    if-eqz v2, :cond_9

    .line 1425
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mMessageDisplay:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->freeGLMemory()V

    .line 1427
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    if-eqz v2, :cond_a

    .line 1428
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCountdownDisplay:Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->freeGLMemory()V

    .line 1430
    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    if-eqz v2, :cond_b

    .line 1431
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->freeGLMemory()V

    .line 1433
    :cond_b
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDownArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    if-eqz v2, :cond_c

    .line 1434
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mUpArrow:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->freeGLMemory()V

    .line 1436
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    if-eqz v2, :cond_d

    .line 1437
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTargetManager:Lcom/google/android/apps/lightcycle/panorama/TargetManager;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->freeGLMemory()V

    .line 1439
    :cond_d
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    if-eqz v2, :cond_e

    .line 1440
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->freeGLMemory()V

    .line 1442
    :cond_e
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    if-eqz v2, :cond_f

    .line 1443
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->freeGLMemory()V

    .line 1445
    :cond_f
    return-void
.end method

.method public getPanoPreview2d()Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    return-object v0
.end method

.method public getRenderedGui()Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    if-nez v0, :cond_1

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->clearBackground()V

    .line 885
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->drawFrame()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1013
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    if-ne p3, v0, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1016
    :cond_0
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    .line 1017
    iput p3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    .line 1018
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewWidth:I

    .line 1019
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewHeight:I

    .line 1020
    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mXOffset:I

    .line 1021
    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mYOffset:I

    .line 1023
    const-string v0, "Rendering init completed."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 1025
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPreview2dOverlay:Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;

    .line 1027
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderedGui:Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mTextureShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceWidth:I

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSurfaceHeight:I

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->init(Landroid/content/Context;Lcom/google/android/apps/lightcycle/opengl/Shader;IILcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 1029
    iput-boolean v6, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 1003
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->initRendering()V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    .line 1008
    return-void

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method public pinchZoom(F)V
    .locals 1
    .param p1, "zoomRatio"    # F

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateFieldOfViewDegrees(F)V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mZooming:Z

    .line 353
    return-void
.end method

.method public resetOrientation()V
    .locals 3

    .prologue
    .line 985
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->setInitialOrientation()V

    .line 987
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mCurFieldOfViewDegrees:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFieldOfViewDegreesZoomStart:F

    div-float v0, v1, v2

    .line 988
    .local v0, "zoomRatio":F
    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->endPinchZoom(F)V

    .line 989
    return-void
.end method

.method public setAddNextFrame()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mAddNextFrame:Z

    .line 287
    return-void
.end method

.method public setController(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0
    .param p1, "controller"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 256
    return-void
.end method

.method public setDisablePhotoTaking(Z)V
    .locals 0
    .param p1, "disablePhotoTaking"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDisablePhotoTaking:Z

    .line 339
    return-void
.end method

.method public setFrameDimensions(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameWidth:I

    .line 265
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFrameHeight:I

    .line 266
    return-void
.end method

.method public setImageData([B)V
    .locals 1
    .param p1, "image"    # [B

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mImageData:[B

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mFramePending:Z

    .line 280
    return-void
.end method

.method public setLiveImageDisplay(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderTexturedPreview:Z

    .line 317
    return-void
.end method

.method public setPanoUpdate()V
    .locals 1

    .prologue
    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoUpdate:Z

    .line 979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPanoramaEmpty:Z

    .line 980
    return-void
.end method

.method public setPhotoFinished()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoInProgress:Z

    .line 302
    return-void
.end method

.method public setRenderBlankScreen(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mRenderBlankScreen:Z

    .line 328
    if-eqz p1, :cond_0

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mBlankPending:Z

    .line 331
    :cond_0
    return-void
.end method

.method public setRenderingStopped(Z)V
    .locals 0
    .param p1, "stopped"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->renderingStopped:Z

    .line 324
    return-void
.end method

.method public setSensorReader(Landroid/view/Display;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "reader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 290
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 291
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;-><init>(Landroid/view/Display;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 292
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    invoke-direct {v0, p2}, Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;-><init>(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mVideoFrameProcessor:Lcom/google/android/apps/lightcycle/panorama/VideoFrameProcessor;

    .line 293
    return-void
.end method

.method public setValidEstimate(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mValidEstimate:Z

    .line 252
    return-void
.end method

.method public setViewport(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 992
    iput p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mXOffset:I

    .line 993
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mYOffset:I

    .line 994
    iput p3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewWidth:I

    .line 995
    iput p4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mViewHeight:I

    .line 996
    return-void
.end method

.method public declared-synchronized undoLastCapturedPhoto()V
    .locals 8

    .prologue
    .line 1251
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->getNumFrames()I

    move-result v1

    .line 1252
    .local v1, "numPhotos":I
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mPhotoCollection:Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->undoAddPhoto()V

    .line 1260
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1261
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1251
    .end local v1    # "numPhotos":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1264
    .restart local v1    # "numPhotos":I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1265
    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double v3, v4, v6

    iput-wide v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    .line 1266
    iget-wide v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeading:D

    const-wide v5, 0x4046800000000000L

    div-double/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStep:D

    .line 1267
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->mDeltaHeadingStack:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1269
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->updateButtonVisibility()V

    .line 1273
    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer$2;-><init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V

    .line 1288
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1290
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1295
    :goto_1
    monitor-exit p0

    return-void

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
