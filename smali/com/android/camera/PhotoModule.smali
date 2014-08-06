.class public Lcom/android/camera/PhotoModule;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/MediaSaveService$Listener;
.implements Lcom/android/camera/PhotoController;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$NamedImages;,
        Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;,
        Lcom/android/camera/PhotoModule$AutoFocusCallback;,
        Lcom/android/camera/PhotoModule$JpegPictureCallback;,
        Lcom/android/camera/PhotoModule$RawPictureCallback;,
        Lcom/android/camera/PhotoModule$PostViewPictureCallback;,
        Lcom/android/camera/PhotoModule$ShutterCallback;,
        Lcom/android/camera/PhotoModule$MainHandler;,
        Lcom/android/camera/PhotoModule$CameraStartUpThread;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

.field private mCameraState:I

.field public mCaptureStartTime:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mFaceDetectionStarted:Z

.field private mFirstTimeInitialized:Z

.field private mFlashRunnable:Ljava/lang/Runnable;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mFocusStartTime:J

.field private final mFormatter:Ljava/util/Formatter;

.field private final mFormatterArgs:[Ljava/lang/Object;

.field private mGData:[F

.field private final mHandler:Landroid/os/Handler;

.field private mHeading:I

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMData:[F

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mQuickCapture:Z

.field private mR:[F

.field private final mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Ljava/lang/String;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSnapshotOnIdle:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mUI:Lcom/android/camera/PhotoUI;

.field private mUpdateSet:I

.field private mZoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput v3, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 154
    iput v3, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 160
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 170
    new-instance v0, Lcom/android/camera/PhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$1;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 177
    new-instance v0, Lcom/android/camera/PhotoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$2;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashRunnable:Ljava/lang/Runnable;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    .line 185
    new-instance v0, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFormatter:Ljava/util/Formatter;

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFormatterArgs:[Ljava/lang/Object;

    .line 209
    iput v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 210
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 216
    new-instance v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    .line 218
    new-instance v0, Lcom/android/camera/PhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    .line 220
    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    .line 222
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 227
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 250
    new-instance v0, Lcom/android/camera/PhotoModule$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$MainHandler;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    .line 256
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 259
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    .line 260
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    .line 261
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mR:[F

    .line 262
    iput v3, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 264
    new-instance v0, Lcom/android/camera/PhotoModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$3;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 915
    return-void

    :cond_0
    move-object v0, v1

    .line 222
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateFlash()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onCameraOpened()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/PhotoModule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setLocationPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/camera/PhotoModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/android/camera/PhotoModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/MediaSaveService$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mOnMediaSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/PhotoModule;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$4700(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/PhotoModule;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 690
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 691
    .local v0, "queue":Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/PhotoModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$7;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 698
    return-void
.end method

.method private animateFlash()V
    .locals 4

    .prologue
    .line 975
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateFlash(I)V

    .line 979
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->enablePreviewThumb(Z)V

    .line 980
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-static {}, Lcom/android/camera/CaptureAnimManager;->getAnimationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 983
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 1463
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1558
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 1559
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1560
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1564
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1565
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1566
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1567
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 1568
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 1570
    :cond_1
    return-void
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1040
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1045
    .end local v0    # "intentCameraId":I
    :goto_0
    return v0

    .restart local v0    # "intentCameraId":I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 2013
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    .line 2014
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    .line 2015
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    .line 2016
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    .line 2017
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    .line 2019
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->initializeControlByIntent()V

    .line 452
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupCaptureParams()V

    .line 455
    :cond_0
    return-void
.end method

.method private initializeFirstTime()V
    .locals 4

    .prologue
    .line 625
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 648
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 630
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 632
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 634
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->initializeFirstTime()V

    .line 635
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 638
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_1

    .line 639
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 642
    :cond_1
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 644
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    .line 645
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addIdleHandler()V

    .line 647
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 1420
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1431
    :goto_0
    return-void

    .line 1423
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 1424
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v5, :cond_1

    .line 1425
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1427
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/FocusOverlayManager$FocusUI;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    goto :goto_0

    .line 1424
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private initializeSecondTime()V
    .locals 4

    .prologue
    .line 654
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 656
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 657
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v1

    .line 658
    .local v1, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v1, :cond_0

    .line 659
    invoke-virtual {v1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 661
    :cond_0
    new-instance v2, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 662
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/PhotoUI;->initializeSecondTime(Landroid/hardware/Camera$Parameters;)V

    .line 663
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 664
    return-void
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 619
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 1986
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1987
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1988
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1989
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 5

    .prologue
    .line 1080
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 1082
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 1083
    return-void
.end method

.method private locationFirstRun()V
    .locals 4

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v1}, Lcom/android/camera/RecordLocationPreference;->isSet(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 477
    .local v0, "backCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 482
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b031f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0320

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0322

    new-instance v3, Lcom/android/camera/PhotoModule$6;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$6;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0321

    new-instance v3, Lcom/android/camera/PhotoModule$5;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$5;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/PhotoModule$4;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$4;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private onCameraOpened()V
    .locals 4

    .prologue
    .line 516
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 519
    .local v1, "root":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 520
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 521
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3, v2, v0}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 523
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_0

    .line 524
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v3, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3, v2, v0}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 529
    :goto_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 530
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCameraCommon()V

    .line 531
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoModule;->onFullScreenChanged(Z)V

    .line 532
    return-void

    .line 526
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v3, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3, v0, v2}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_0
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 460
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 465
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->locationFirstRun()V

    .line 466
    return-void
.end method

.method private openCameraCommon()V
    .locals 4

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->loadCameraPreferences()V

    .line 586
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/camera/PhotoUI;->onCameraOpened(Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 587
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSceneMode()V

    .line 588
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToastIfNeeded()V

    .line 591
    return-void
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_camera_focusmode_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->overrideSettings([Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 602
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "value":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 606
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 607
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 609
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1982
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1983
    return-void
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1709
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1712
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1716
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 1717
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1719
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .param p1, "updateSet"    # I

    .prologue
    .line 1877
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1878
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersInitialize()V

    .line 1881
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1882
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersZoom()V

    .line 1885
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 1886
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V

    .line 1889
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1890
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 1895
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 1896
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1899
    iput v1, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 1911
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1902
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 1903
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSceneMode()V

    .line 1904
    iput v1, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    goto :goto_0

    .line 1906
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 955
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 956
    packed-switch p1, :pswitch_data_0

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 961
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->enableGestures(Z)V

    goto :goto_0

    .line 964
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->enableGestures(Z)V

    goto :goto_0

    .line 956
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    .line 1574
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    .line 1575
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    .line 1576
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->setDisplayOrientation(I)V

    .line 1577
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 1582
    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1723
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1726
    :cond_0
    return-void
.end method

.method private setLocationPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 512
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onSharedPreferenceChanged()V

    .line 513
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1730
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1734
    :cond_0
    return-void
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1928
    if-eqz v1, :cond_0

    .line 1929
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    .line 1930
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    .line 1932
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 1

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 1587
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 1588
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 1589
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 1590
    return-void
.end method

.method private showTapToFocusToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2004
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0b02c0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2006
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2007
    const-string v1, "pref_camera_first_use_hint_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2008
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2009
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 687
    :cond_0
    return-void
.end method

.method private startPreview()V
    .locals 3

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1600
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 1602
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 1604
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_2

    .line 1607
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1608
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1610
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 1612
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 1614
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_8

    .line 1615
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 1616
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getSurfaceTexture()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1617
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1618
    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_4

    .line 1619
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 1623
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 1624
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 1625
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 1626
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 1627
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1652
    :cond_3
    :goto_1
    return-void

    .line 1621
    :cond_4
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto :goto_0

    .line 1630
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoUI;->setSurfaceTexture(Ljava/lang/Object;)V

    .line 1634
    :goto_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1635
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->getSurfaceTexture()Ljava/lang/Object;

    move-result-object v0

    .line 1636
    if-eqz v0, :cond_6

    .line 1637
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1644
    :cond_6
    :goto_3
    const-string v0, "CAM_PhotoModule"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1647
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 1649
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_3

    .line 1650
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1632
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->updatePreviewSize(Lcom/android/camera/CameraScreenNail;)V

    goto :goto_2

    .line 1640
    :cond_8
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1641
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    goto :goto_3
.end method

.method private switchCamera()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 535
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start to switch camera. id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget v3, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    iput v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 539
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 540
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {p0, v3}, Lcom/android/camera/PhotoModule;->setCameraId(I)V

    .line 543
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 544
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    .line 545
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/android/camera/PhotoUI;->clearFaces()V

    .line 546
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 549
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 550
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 552
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 553
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 561
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 562
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v1, v3, v4

    .line 563
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v2, :cond_3

    .line 564
    .local v2, "mirror":Z
    :goto_1
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3, v2}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 565
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 566
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 568
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCameraCommon()V

    .line 570
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_0

    .line 573
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 554
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "mirror":Z
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Lcom/android/camera/CameraHardwareException;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0b0247

    invoke-static {v3, v4}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 557
    .end local v0    # "e":Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 558
    .local v0, "e":Lcom/android/camera/CameraDisabledException;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0b0248

    invoke-static {v3, v4}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 563
    .end local v0    # "e":Lcom/android/camera/CameraDisabledException;
    .restart local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1866
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 1871
    :goto_0
    return-void

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 1685
    if-eqz v0, :cond_0

    .line 1686
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1687
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1690
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "recording-hint"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1696
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    :cond_1
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1737
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 1738
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 1739
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setFocusAreasIfSupported()V

    .line 1740
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setMeteringAreasIfSupported()V

    .line 1743
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    invoke-virtual {v0, v1, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1745
    if-nez v0, :cond_5

    .line 1746
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 1752
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1756
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 1757
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-static {v2, v1, v3, v4}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1759
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1760
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1761
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1764
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_6

    .line 1766
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    .line 1770
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1772
    :cond_0
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_hdr_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1779
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0b0260

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1780
    const-string v0, "hdr"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 1786
    :goto_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1787
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1788
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1793
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1794
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1804
    :cond_1
    :goto_3
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 1806
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1812
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/ComboPreferences;)I

    move-result v0

    .line 1813
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 1814
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 1815
    if-lt v0, v2, :cond_9

    if-gt v0, v1, :cond_9

    .line 1816
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1821
    :goto_4
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1823
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b027f

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1826
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1827
    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1828
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1838
    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b028a

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1841
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1843
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1852
    :cond_3
    :goto_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v7}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 1853
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1858
    :goto_7
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinousFocusSupported:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_4

    .line 1859
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateAutoFocusMoveCallback()V

    .line 1861
    :cond_4
    return-void

    .line 1748
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 1749
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_0

    .line 1768
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_1

    .line 1782
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b0297

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 1797
    :cond_8
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 1798
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1799
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_3

    .line 1818
    :cond_9
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid exposure range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1830
    :cond_a
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1831
    if-nez v0, :cond_2

    .line 1832
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0b0280

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    goto/16 :goto_5

    .line 1845
    :cond_b
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1846
    if-nez v0, :cond_3

    .line 1847
    const-string v0, "auto"

    goto/16 :goto_6

    .line 1855
    :cond_c
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1705
    :cond_0
    return-void
.end method

.method private updatePreviewSize(Lcom/android/camera/CameraScreenNail;)V
    .locals 4
    .param p1, "snail"    # Lcom/android/camera/CameraScreenNail;

    .prologue
    .line 1655
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1656
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    .line 1657
    .local v2, "w":I
    iget v0, v1, Landroid/hardware/Camera$Size;->height:I

    .line 1658
    .local v0, "h":I
    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-eqz v3, :cond_0

    .line 1659
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    .line 1660
    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    .line 1662
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 1663
    :cond_1
    invoke-virtual {p1, v2, v0}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 1665
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 1666
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 1667
    return-void
.end method

.method private updateSceneMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1063
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :goto_0
    return-void

    .line 1067
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 1468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    .line 1469
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1470
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 1471
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1476
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 1477
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 1478
    return-void
.end method

.method public capture()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 989
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v0, v9, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v7, v8

    .line 1030
    :goto_0
    return v7

    .line 994
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 995
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 998
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_3

    move v2, v7

    .line 1000
    :goto_1
    if-eqz v2, :cond_2

    .line 1001
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateFlash()V

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isAutoRotateScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1009
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1013
    :goto_2
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v1, v0}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    .line 1014
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1015
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 1016
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v5}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1017
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1019
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v1, Lcom/android/camera/PhotoModule$ShutterCallback;

    if-nez v2, :cond_5

    move v2, v7

    :goto_3
    invoke-direct {v1, p0, v2}, Lcom/android/camera/PhotoModule$ShutterCallback;-><init>(Lcom/android/camera/PhotoModule;Z)V

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    new-instance v4, Lcom/android/camera/PhotoModule$JpegPictureCallback;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Landroid/location/Location;)V

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->getFocusState()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture2(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V

    .line 1024
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(Landroid/content/ContentResolver;J)V

    .line 1026
    iput-boolean v8, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1027
    invoke-direct {p0, v9}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 1028
    const-string v0, "Camera"

    const-string v1, "CaptureDone"

    const-string v2, "Photo"

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v8

    .line 998
    goto :goto_1

    .line 1011
    :cond_4
    iget v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    goto :goto_2

    :cond_5
    move v2, v8

    .line 1019
    goto :goto_3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 730
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 731
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoUI;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 2059
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    return v0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "reuseNail"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 412
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 413
    new-instance v2, Lcom/android/camera/PhotoUI;

    invoke-direct {v2, p1, p0, p2}, Lcom/android/camera/PhotoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoController;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 414
    new-instance v2, Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 415
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 416
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 418
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 422
    new-instance v2, Lcom/android/camera/PhotoModule$CameraStartUpThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 423
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 428
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    .line 429
    if-eqz p3, :cond_1

    .line 430
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 435
    :goto_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 436
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 438
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetExposureCompensation()V

    .line 441
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 443
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 444
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    .line 445
    new-instance v0, Lcom/android/camera/LocationManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 446
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    .line 448
    return-void

    :cond_0
    move v0, v1

    .line 430
    goto :goto_0

    .line 432
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 1275
    return-void
.end method

.method public isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1914
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1922
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsPieMenu()Z
    .locals 1

    .prologue
    .line 2035
    const/4 v0, 0x1

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 2030
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 2078
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1442
    packed-switch p1, :pswitch_data_0

    .line 1460
    :goto_0
    return-void

    .line 1444
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1445
    if-eqz p3, :cond_0

    .line 1446
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1447
    if-eqz v1, :cond_0

    .line 1448
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1451
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p2, v0}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1452
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1454
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v1, "crop-temp"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1455
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1442
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3

    .prologue
    .line 1949
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1962
    :cond_0
    :goto_0
    return-void

    .line 1951
    :cond_1
    iput p1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 1952
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 1953
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 1958
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    goto :goto_0

    .line 1960
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCaptureCancelled()V
    .locals 3

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1111
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1112
    return-void
.end method

.method public onCaptureDone()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 1124
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 1130
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1135
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 1138
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1139
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1140
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1142
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1143
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1147
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1144
    :catch_0
    move-exception v1

    .line 1147
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1150
    :cond_1
    invoke-static {v1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    .line 1151
    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v0

    .line 1152
    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1153
    invoke-static {v1, v0}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1154
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "inline-data"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1156
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 1163
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "crop-temp"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1164
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1165
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v4, "crop-temp"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 1166
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1167
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1168
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v1

    .line 1178
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1182
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1183
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 1186
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1190
    :goto_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1191
    const-string v2, "showWhenLocked"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1194
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1197
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1199
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1169
    :catch_1
    move-exception v1

    .line 1170
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1171
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1178
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1173
    :catch_2
    move-exception v1

    .line 1174
    :try_start_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1175
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1178
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1188
    :cond_5
    const-string v2, "return-data"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1178
    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    .line 1147
    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_1
.end method

.method public onCaptureRetake()V
    .locals 1

    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1120
    :goto_0
    return-void

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 1119
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 1973
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 1435
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 1437
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 2023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 2024
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    .line 2025
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    .line 2026
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .param p1, "full"    # Z

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/PhotoUI;->onFullScreenChanged(Z)V

    .line 1052
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 1058
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1505
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1534
    :cond_0
    :goto_0
    return v0

    .line 1509
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    .line 1510
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1511
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1515
    goto :goto_0

    .line 1517
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1518
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1524
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1528
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1529
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 1530
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->pressShutterButton()V

    goto :goto_0

    .line 1505
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1539
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1553
    :cond_0
    :goto_0
    return v0

    .line 1542
    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isInCameraApp()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_1

    .line 1543
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1546
    goto :goto_0

    .line 1548
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 1549
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 1539
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 1
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 2071
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 2072
    invoke-virtual {p1, p0}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 2074
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x6

    .line 1090
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    invoke-static {p1, v0}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mOrientation:I

    .line 1094
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1096
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->showTapToFocusToast()V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1360
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->waitCameraStartUpThread()V

    .line 1366
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/ActivityBase;->isFirstStartAfterScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1368
    invoke-static {}, Lcom/android/camera/ActivityBase;->resetFirstStartAfterScreenOn()V

    .line 1369
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraHolder;->keep(I)V

    .line 1373
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_1

    .line 1374
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1376
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 1378
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1380
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1382
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1386
    :cond_2
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 1389
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1390
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1391
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1392
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1393
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1394
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1395
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1396
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1397
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1399
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 1401
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetScreenOn()V

    .line 1402
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->onPause()V

    .line 1404
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 1405
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1406
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    .line 1407
    .local v0, "s":Lcom/android/camera/MediaSaveService;
    if-eqz v0, :cond_4

    .line 1408
    invoke-virtual {v0, v3}, Lcom/android/camera/MediaSaveService;->setListener(Lcom/android/camera/MediaSaveService$Listener;)V

    .line 1410
    :cond_4
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1345
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 1346
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1347
    .local v0, "gsensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 1348
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1351
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1352
    .local v1, "msensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_1

    .line 1353
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1355
    :cond_1
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1969
    return-void
.end method

.method public onQueueStatus(Z)V
    .locals 2
    .param p1, "full"    # Z

    .prologue
    .line 2064
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoUI;->enableShutter(Z)V

    .line 2065
    return-void

    .line 2064
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResumeAfterSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 1293
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 1296
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 1299
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 1300
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetExposureCompensation()V

    .line 1301
    new-instance v0, Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 1302
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 1307
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_4

    .line 1308
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1312
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 1315
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1316
    const-string v0, "Camera"

    const-string v1, "PhotoModule"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1320
    if-eqz v0, :cond_3

    .line 1321
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1324
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1325
    if-eqz v0, :cond_0

    .line 1326
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 1310
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 1288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 1289
    return-void
.end method

.method public onScreenSizeChanged(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I

    .prologue
    .line 594
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Preview size changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusOverlayManager;->setPreviewSize(II)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p3, p4}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 598
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 599
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 2082
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 2084
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    :goto_0
    move v1, v2

    .line 2092
    :goto_1
    if-ge v1, v4, :cond_1

    .line 2093
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    aput v3, v0, v1

    .line 2092
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2086
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2087
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    goto :goto_0

    .line 2095
    :cond_1
    new-array v0, v4, [F

    .line 2096
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mR:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mGData:[F

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mMData:[F

    invoke-static {v1, v3, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 2097
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mR:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 2098
    aget v0, v0, v2

    const/high16 v1, 0x43340000

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 2099
    iget v0, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    if-gez v0, :cond_2

    .line 2100
    iget v0, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    add-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/camera/PhotoModule;->mHeading:I

    .line 2102
    :cond_2
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 1937
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1945
    :goto_0
    return-void

    .line 1939
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 1941
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1943
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    .line 1944
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/PhotoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/PreferenceGroup;Lcom/android/camera/ComboPreferences;)V

    goto :goto_0
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onShowSwitcherPopup()V

    .line 2041
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1225
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1231
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1235
    :cond_2
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick: mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_3

    .line 1238
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 1239
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1246
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_5

    .line 1248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 1252
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_timer_key"

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b025a

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1255
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_camera_timer_sound_key"

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0b025b

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b0260

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1259
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1262
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1263
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->cancelCountDown()V

    .line 1265
    :cond_6
    if-lez v0, :cond_7

    .line 1266
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/PhotoUI;->startCountDown(IZ)V

    goto/16 :goto_0

    .line 1268
    :cond_7
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 1269
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->doSnap()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    :cond_2
    if-eqz p1, :cond_3

    .line 1213
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterDown()V

    goto :goto_0

    .line 1217
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1483
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 1496
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->removeTopLevelPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1495
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1106
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 675
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_0

    .line 676
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 1978
    :cond_0
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2046
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 2054
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return p1

    .line 2047
    .restart local p1    # "index":I
    :cond_1
    iput p1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    .line 2048
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 2050
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2051
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2052
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2053
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result p1

    goto :goto_0
.end method

.method protected setCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 579
    .local v0, "pref":Lcom/android/camera/ListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 1035
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 1036
    return-void
.end method

.method public startFaceDetection()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 703
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v2, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v2, :cond_0

    .line 705
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    if-lez v2, :cond_0

    .line 706
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 707
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    aget-object v0, v2, v3

    .line 708
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/android/camera/PhotoUI;->onStartFaceDetection(IZ)V

    .line 710
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 711
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    .line 708
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 718
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v0, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 722
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 723
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 724
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->clearFaces()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1671
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1672
    const-string v0, "CAM_PhotoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1674
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1676
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 1677
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 1678
    :cond_1
    return-void
.end method

.method public updateCameraAppView()V
    .locals 0

    .prologue
    .line 1284
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 1279
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    return v0
.end method

.method waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 1332
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->cancel()V

    .line 1334
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule$CameraStartUpThread;->join()V

    .line 1335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraStartUpThread:Lcom/android/camera/PhotoModule$CameraStartUpThread;

    .line 1336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1338
    :catch_0
    move-exception v0

    goto :goto_0
.end method
