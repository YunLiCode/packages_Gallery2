.class public Lcom/google/android/apps/lightcycle/PanoramaModule;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraScreenNail$DrawClient;
.implements Lcom/android/camera/ui/ListPrefSettingPopup$Listener;
.implements Lcom/android/camera/ui/MoreSettingPopup$Listener;


# static fields
.field private static final SETTING_KEYS:[Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

.field private mCaptureListener:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/view/ViewGroup;

.field private mDisplayRotation:I

.field private mFullScreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mIndicators:Lcom/android/camera/OnScreenIndicators;

.field private mInitializeRenderer:Z

.field private mIsPaused:Z

.field private mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

.field private mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mMenuButton:Landroid/view/View;

.field private mNumberOfImages:I

.field private mOnLayoutChangeListener:Lcom/android/camera/ui/LayoutChangeNotifier$Listener;

.field private mPhotoSpherePreviewWriter:Ljava/lang/Thread;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewThumb:Landroid/view/View;

.field private mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

.field private mRendererLock:Ljava/lang/Object;

.field private mRootView:Landroid/view/ViewGroup;

.field private mRunInCalibrationMode:Z

.field private mScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

.field private mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

.field private mShowHelpOverlay:Z

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSingleImageShutterSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStatFirstPhotoTimeMillis:J

.field private mStatNumUndos:I

.field private mStitchingPaused:Z

.field private mStorageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

.field private mTempRect:Landroid/graphics/Rect;

.field private mUndoButton:Lcom/android/camera/ui/RotateImageView;

.field private mUndoEnabledListener:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUndoListener:Landroid/view/View$OnClickListener;

.field private mUndoVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final startCameraWaiter:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_camera_recordlocation_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_photosphere_picturesize_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->SETTING_KEYS:[Ljava/lang/String;

    .line 237
    new-instance v0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;-><init>()V

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->setActiveProxy(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;)V

    .line 238
    invoke-static {}, Lcom/google/android/apps/lightcycle/LightCycleApp;->initLightCycleNative()V

    .line 239
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 128
    invoke-static {}, Lcom/google/android/apps/lightcycle/storage/StorageManagerFactory;->getStorageManager()Lcom/google/android/apps/lightcycle/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStorageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    .line 137
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStitchingPaused:Z

    .line 140
    iput v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    .line 141
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mFullScreen:Z

    .line 144
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mShowHelpOverlay:Z

    .line 149
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mIsPaused:Z

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mTempRect:Landroid/graphics/Rect;

    .line 153
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mInitializeRenderer:Z

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    .line 160
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRunInCalibrationMode:Z

    .line 168
    iput v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStatNumUndos:I

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStatFirstPhotoTimeMillis:J

    .line 177
    const-class v0, Lcom/google/android/apps/lightcycle/PanoramaCaptureActivity;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->startCameraWaiter:Ljava/lang/Object;

    .line 179
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$1;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoListener:Landroid/view/View$OnClickListener;

    .line 191
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$2;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mCaptureListener:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 212
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$3;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoEnabledListener:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 219
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$4;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 227
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$5;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mOnLayoutChangeListener:Lcom/android/camera/ui/LayoutChangeNotifier$Listener;

    return-void
.end method

.method static synthetic access$008(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStatNumUndos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStatNumUndos:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraScreenNail;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method static synthetic access$108(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    return v0
.end method

.method static synthetic access$110(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoButton:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;
    .param p1, "x1"    # Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->startStitchService(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->stopCapture()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->startCapture()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPreviewThumb:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/ui/MoreSettingPopup;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->removeHelpOverlay()V

    return-void
.end method

.method static synthetic access$2102(Lcom/google/android/apps/lightcycle/PanoramaModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mShowHelpOverlay:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPhotoSpherePreviewWriter:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/lightcycle/PanoramaModule;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;
    .param p1, "x1"    # J

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStatFirstPhotoTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSingleImageShutterSoundId:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStitchingPaused:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/lightcycle/PanoramaModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStitchingPaused:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/PanoramaModule;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    return-object v0
.end method

.method private addPopup(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 396
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 398
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 399
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    return-void
.end method

.method private adjustPhotoSphereHelpOverlay()V
    .locals 3

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mShowHelpOverlay:Z

    if-nez v0, :cond_0

    .line 918
    :goto_0
    return-void

    .line 912
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->removeHelpOverlay()V

    .line 913
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 914
    const v1, 0x7f040066

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 916
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->initHelpOverlayButton()V

    .line 917
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    goto :goto_0
.end method

.method private adjustUiAndSwipe()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 861
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mFullScreen:Z

    if-nez v0, :cond_1

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    if-eqz v0, :cond_6

    move v0, v1

    .line 865
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/MoreSettingPopup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/AbstractSettingPopup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    :cond_3
    move v3, v1

    .line 868
    :goto_2
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v0, :cond_8

    if-nez v3, :cond_8

    move v4, v1

    :goto_3
    invoke-virtual {v5, v4}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 869
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setKeepScreenOn(Z)V

    .line 872
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-eqz v4, :cond_4

    .line 873
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setDisablePhotoTaking(Z)V

    .line 877
    :cond_4
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    const v5, 0x7f0a0150

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    move v4, v1

    .line 878
    :goto_4
    if-eqz v4, :cond_a

    .line 879
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 885
    :goto_5
    if-eqz v0, :cond_b

    .line 886
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 892
    :goto_6
    if-nez v0, :cond_5

    if-eqz v3, :cond_c

    .line 893
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->showPieMenuButton(Z)V

    .line 894
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 900
    :goto_7
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    if-eqz v0, :cond_d

    if-nez v3, :cond_d

    :goto_8
    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 864
    goto :goto_1

    :cond_7
    move v3, v2

    .line 865
    goto :goto_2

    :cond_8
    move v4, v2

    .line 868
    goto :goto_3

    :cond_9
    move v4, v2

    .line 877
    goto :goto_4

    .line 881
    :cond_a
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->showUI()V

    goto :goto_5

    .line 888
    :cond_b
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    goto :goto_6

    .line 896
    :cond_c
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v1}, Lcom/android/camera/CameraActivity;->showPieMenuButton(Z)V

    .line 897
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    goto :goto_7

    .line 901
    :cond_d
    const/16 v2, 0x8

    goto :goto_8
.end method

.method private applyPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 674
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    const-string v2, "useGyro"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->enableEkf(Z)V

    .line 683
    const-string v1, "displayLiveImage"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 685
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setLiveImageDisplay(Z)V

    .line 688
    const-string v1, "allowFastMotion"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 690
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->AllowFastMotion(Z)V

    .line 694
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 696
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setLocationProviderEnabled(Z)V

    .line 697
    return-void
.end method

.method private displayErrorAndExit(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 844
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 845
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/google/android/apps/lightcycle/PanoramaModule$12;

    invoke-direct {v3, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$12;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 852
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 854
    return-void
.end method

.method private fieldOfViewCalibrationRequired()Z
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    return v0
.end method

.method private initButtons()V
    .locals 3

    .prologue
    .line 469
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoButton:Lcom/android/camera/ui/RotateImageView;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 471
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 472
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040062

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 475
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0a0146

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoButton:Lcom/android/camera/ui/RotateImageView;

    .line 476
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoButton:Lcom/android/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 477
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoButton:Lcom/android/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mMenuButton:Landroid/view/View;

    .line 479
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mMenuButton:Landroid/view/View;

    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$8;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$8;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 494
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 496
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$9;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$9;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 506
    return-void
.end method

.method private initHelpOverlayButton()V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0150

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 930
    const v1, 0x7f0a0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 931
    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule$13;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$13;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    return-void
.end method

.method private initializeSecondPopup(Lcom/android/camera/ListPreference;)V
    .locals 5
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 408
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 411
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040051

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ListPrefSettingPopup;

    .line 413
    .local v0, "basic":Lcom/android/camera/ui/ListPrefSettingPopup;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ListPrefSettingPopup;->initialize(Lcom/android/camera/ListPreference;)V

    .line 414
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ListPrefSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/ListPrefSettingPopup$Listener;)V

    .line 415
    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 416
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-direct {p0, v2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->addPopup(Landroid/view/View;)V

    .line 417
    return-void
.end method

.method private isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "m"    # Landroid/view/MotionEvent;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1069
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1070
    .local v0, "location":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1071
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aget v4, v0, v2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aget v4, v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aget v4, v0, v1

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aget v4, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/16 v3, 0x69

    .line 949
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 950
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 951
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 952
    return-void
.end method

.method private pauseCapture()V
    .locals 4

    .prologue
    .line 784
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->stopCamera()V

    .line 785
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 788
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .line 789
    .local v0, "renderer":Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    .line 790
    .local v1, "surfaceView":Landroid/opengl/GLSurfaceView;
    new-instance v2, Lcom/google/android/apps/lightcycle/PanoramaModule$11;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaModule$11;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 797
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v3

    .line 798
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .line 799
    monitor-exit v3

    .line 800
    return-void

    .line 799
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeHelpOverlay()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0150

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 922
    if-eqz v1, :cond_0

    .line 923
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 925
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    .line 926
    return-void
.end method

.method private removeTopLevelPopup()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 960
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/AbstractSettingPopup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 961
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 962
    iput-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 963
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/MoreSettingPopup;->setVisibility(I)V

    .line 964
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    .line 974
    :goto_0
    return v0

    .line 968
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/MoreSettingPopup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 969
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 970
    iput-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    .line 971
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 974
    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 945
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 946
    return-void
.end method

.method private saveCalibratedFieldOfView(F)V
    .locals 3
    .param p1, "fieldOfViewDegrees"    # F

    .prologue
    .line 666
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 668
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "photoSphereFieldOfView"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 671
    return-void
.end method

.method private setDisplayRotation()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mDisplayRotation:I

    .line 1003
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 1004
    return-void
.end method

.method private startCapture()V
    .locals 21

    .prologue
    .line 548
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    .line 549
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStatNumUndos:I

    .line 550
    invoke-static {}, Lcom/google/android/apps/lightcycle/LightCycleApp;->getCameraUtility()Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    move-result-object v15

    .line 556
    .local v15, "cameraUtil":Lcom/google/android/apps/lightcycle/camera/CameraUtility;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 558
    new-instance v4, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;

    invoke-direct {v4, v15}, Lcom/google/android/apps/lightcycle/camera/NullSurfaceCameraPreview;-><init>(Lcom/google/android/apps/lightcycle/camera/CameraUtility;)V

    .line 566
    .local v4, "cameraPreview":Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 568
    .local v17, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "useRealtimeAlignment"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 571
    .local v20, "useRealtimeAlignment":Z
    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    move/from16 v0, v20

    invoke-direct {v2, v0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    .line 572
    new-instance v19, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;-><init>()V

    .line 573
    .local v19, "renderedGui":Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setShowOwnDoneButton(Z)V

    .line 574
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setShowOwnUndoButton(Z)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoEnabledListener:Lcom/google/android/apps/lightcycle/util/Callback;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonStatusListener(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoVisibilityListener:Lcom/google/android/apps/lightcycle/util/Callback;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->setUndoButtonVisibilityListener(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 581
    :try_start_0
    new-instance v8, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v8, v2, v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/panorama/RenderedGui;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .local v8, "renderer":Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->start(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStorageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v2}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->getLocalSessionStorage()Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->metadataFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->orientationFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->thumbnailFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 593
    new-instance v2, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v9

    check-cast v9, Landroid/opengl/GLSurfaceView;

    invoke-direct/range {v2 .. v9}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;-><init>(Landroid/app/Activity;Lcom/google/android/apps/lightcycle/camera/CameraPreview;Lcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;Landroid/opengl/GLSurfaceView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mCaptureListener:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setOnPhotoTakenCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 600
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 607
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->getPreviewCallback()Landroid/hardware/Camera$PreviewCallback;

    move-result-object v10

    const/16 v11, 0x140

    const/16 v12, 0xf0

    const/4 v13, 0x1

    const/16 v14, 0x640

    move-object v9, v4

    invoke-interface/range {v9 .. v14}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->initCamera(Landroid/hardware/Camera$PreviewCallback;IIZI)Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v18

    .line 611
    .local v18, "previewSize":Lcom/google/android/apps/lightcycle/util/Size;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-virtual {v2, v3, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->setFrameDimensions(II)V

    .line 612
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->fieldOfViewCalibrationRequired()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRunInCalibrationMode:Z

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->startCameraWaiter:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRunInCalibrationMode:Z

    invoke-virtual {v2, v3, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->startCamera(Ljava/lang/Object;Z)V

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->startCameraWaiter:Ljava/lang/Object;

    monitor-enter v3

    .line 621
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->startCameraWaiter:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 629
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->applyPreferences()V

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->start()V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/UiUtil;->switchSystemUiToLightsOut(Landroid/view/Window;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mUndoButton:Lcom/android/camera/ui/RotateImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v3

    .line 640
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mInitializeRenderer:Z

    .line 641
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .line 642
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    check-cast v2, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 644
    .end local v8    # "renderer":Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .end local v18    # "previewSize":Lcom/google/android/apps/lightcycle/util/Size;
    :goto_2
    return-void

    .line 563
    .end local v4    # "cameraPreview":Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    .end local v17    # "prefs":Landroid/content/SharedPreferences;
    .end local v19    # "renderedGui":Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
    .end local v20    # "useRealtimeAlignment":Z
    :cond_1
    new-instance v4, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;

    const/4 v2, 0x0

    invoke-direct {v4, v15, v2}, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;-><init>(Lcom/google/android/apps/lightcycle/camera/CameraUtility;Z)V

    .restart local v4    # "cameraPreview":Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    goto/16 :goto_0

    .line 582
    .restart local v17    # "prefs":Landroid/content/SharedPreferences;
    .restart local v19    # "renderedGui":Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
    .restart local v20    # "useRealtimeAlignment":Z
    :catch_0
    move-exception v16

    .line 583
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "LightCycle"

    const-string v3, "Error creating PanoRenderer."

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 622
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v8    # "renderer":Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    .restart local v18    # "previewSize":Lcom/google/android/apps/lightcycle/util/Size;
    :catch_1
    move-exception v16

    .line 623
    .local v16, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "LightCycle"

    const-string v5, "Interrupted while waiting for camera to be started."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 625
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 642
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

.method private startStitchService(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V
    .locals 3

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRunInCalibrationMode:Z

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->FinishCapture(Z)V

    .line 810
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/photos/data/GalleryBitmapPool;->clear()V

    .line 813
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStorageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->addSessionData(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 818
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRunInCalibrationMode:Z

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CalibrateFieldOfViewDeg(Ljava/lang/String;)F

    move-result v0

    .line 822
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 823
    const-string v1, "LightCycle"

    const-string v2, "FOV Calibration Succeeded!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->saveCalibratedFieldOfView(F)V

    .line 832
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStorageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    iget-object v1, p1, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->deleteSession(Ljava/lang/String;)V

    .line 841
    :goto_1
    return-void

    .line 830
    :cond_0
    const-string v0, "LightCycle"

    const-string v1, "FOV Calibration failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->getStitchingServiceManager(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    move-result-object v0

    .line 839
    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->newTask(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    goto :goto_1
.end method

.method private stopCapture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 534
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStitchingPaused:Z

    .line 535
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.lightcycle.panorama.RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 539
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->stopCamera()V

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .line 543
    :cond_0
    iput v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    .line 544
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    .line 545
    return-void
.end method

.method private updateIndicators()V
    .locals 3

    .prologue
    .line 349
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mIndicators:Lcom/android/camera/OnScreenIndicators;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 352
    .local v0, "useLocation":Z
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenIndicators;->updateLocationIndicator(Z)V

    .line 354
    .end local v0    # "useLocation":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public copyToTexture(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/glrenderer/RawTexture;II)Lcom/android/gallery3d/glrenderer/RawTexture;
    .locals 10
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "newTexture"    # Lcom/android/gallery3d/glrenderer/RawTexture;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/high16 v9, 0x3f800000

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1151
    new-instance v6, Lcom/android/gallery3d/glrenderer/RawTexture;

    invoke-direct {v6, p3, p4, v7}, Lcom/android/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    .line 1152
    .local v6, "tempTexture":Lcom/android/gallery3d/glrenderer/RawTexture;
    invoke-virtual {v6, v7}, Lcom/android/gallery3d/glrenderer/RawTexture;->setIsFlippedVertically(Z)V

    .line 1153
    invoke-interface {p1, v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p3

    move v5, p4

    .line 1154
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/PanoramaModule;->onDraw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 1155
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    .line 1157
    if-nez p2, :cond_0

    .line 1158
    new-instance p2, Lcom/android/gallery3d/glrenderer/RawTexture;

    .end local p2    # "newTexture":Lcom/android/gallery3d/glrenderer/RawTexture;
    invoke-direct {p2, p3, p4, v7}, Lcom/android/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    .line 1160
    .restart local p2    # "newTexture":Lcom/android/gallery3d/glrenderer/RawTexture;
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V

    .line 1161
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    .line 1162
    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p4, 0x2

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 1163
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mDisplayRotation:I

    int-to-float v0, v0

    invoke-interface {p1, v0, v8, v8, v9}, Lcom/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 1164
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mDisplayRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_1

    .line 1165
    int-to-float v0, p4

    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v1, p3

    int-to-float v3, p4

    div-float/2addr v1, v3

    invoke-interface {p1, v0, v1, v9}, Lcom/android/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 1167
    :cond_1
    neg-int v0, p3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    move-object v0, p1

    move-object v1, v6

    move v3, v2

    move v4, p3

    move v5, p4

    .line 1168
    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 1169
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    .line 1170
    invoke-virtual {v6}, Lcom/android/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 1171
    return-object p2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1046
    iget-boolean v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mShowHelpOverlay:Z

    if-eqz v2, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1064
    :goto_0
    return v1

    .line 1049
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1050
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1051
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->removeTopLevelPopup()Z

    goto :goto_0

    .line 1054
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1055
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->removeTopLevelPopup()Z

    goto :goto_0

    .line 1059
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1060
    .local v0, "handled":Z
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    if-eqz v2, :cond_4

    .line 1062
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    move v1, v0

    .line 1064
    goto :goto_0

    .line 1062
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 11
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "reuse"    # Z

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 244
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v8, 0x7f0a0083

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPreviewThumb:Landroid/view/View;

    .line 245
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPreviewThumb:Landroid/view/View;

    new-instance v8, Lcom/google/android/apps/lightcycle/PanoramaModule$6;

    invoke-direct {v8, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$6;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    new-instance v7, Lcom/android/camera/OnScreenIndicators;

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v10, 0x7f0a0129

    invoke-virtual {v9, v10}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/camera/OnScreenIndicators;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mIndicators:Lcom/android/camera/OnScreenIndicators;

    .line 255
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mIndicators:Lcom/android/camera/OnScreenIndicators;

    invoke-virtual {v7}, Lcom/android/camera/OnScreenIndicators;->resetToDefault()V

    .line 258
    invoke-static {}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->instance()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->canDisableShutterSound()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 259
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSoundPool:Landroid/media/SoundPool;

    if-nez v7, :cond_0

    .line 260
    invoke-static {}, Lcom/android/camera/SoundClips;->getAudioTypeForSoundPool()I

    move-result v0

    .line 261
    .local v0, "audioType":I
    new-instance v7, Landroid/media/SoundPool;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v7, v8, v0, v9}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSoundPool:Landroid/media/SoundPool;

    .line 262
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSoundPool:Landroid/media/SoundPool;

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f080016

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v7

    iput v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSingleImageShutterSoundId:I

    .line 266
    .end local v0    # "audioType":I
    :cond_0
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-nez v7, :cond_1

    .line 267
    new-instance v7, Landroid/media/MediaActionSound;

    invoke-direct {v7}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 271
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "parent":Landroid/view/View;
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    .line 272
    new-instance v7, Lcom/android/camera/ComboPreferences;

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v7, v8}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 273
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 274
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v7}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 276
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 277
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040061

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 278
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    const v8, 0x7f0a0084

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mContainer:Landroid/view/ViewGroup;

    .line 279
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    const v8, 0x7f0a0145

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/LayoutNotifyView;

    .line 281
    .local v3, "layoutNotifier":Lcom/android/camera/ui/LayoutNotifyView;
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mOnLayoutChangeListener:Lcom/android/camera/ui/LayoutChangeNotifier$Listener;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/LayoutNotifyView;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 282
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v7

    check-cast v7, Lcom/android/camera/CameraScreenNail;

    iput-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 283
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    .line 284
    .local v6, "width":I
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 285
    .local v1, "height":I
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v7}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v7

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_2

    .line 286
    move v5, v6

    .line 287
    .local v5, "t":I
    move v6, v1

    .line 288
    move v1, v5

    .line 290
    .end local v5    # "t":I
    :cond_2
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v7, v6, v1}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 291
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 292
    new-instance v7, Lcom/google/android/apps/lightcycle/PanoramaModule$7;

    invoke-direct {v7, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$7;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mHandler:Landroid/os/Handler;

    .line 341
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 343
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "photosphere_show_help_overlay"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mShowHelpOverlay:Z

    .line 344
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustPhotoSphereHelpOverlay()V

    .line 345
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->updateIndicators()V

    .line 346
    return-void
.end method

.method protected initializeSettingsPopup()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 444
    new-instance v2, Lcom/android/camera/PreferenceInflater;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v5}, Lcom/android/camera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 445
    .local v2, "pInflater":Lcom/android/camera/PreferenceInflater;
    const/high16 v5, 0x7f070000

    invoke-virtual {v2, v5}, Lcom/android/camera/PreferenceInflater;->inflate(I)Lcom/android/camera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreferenceGroup;

    .line 448
    .local v0, "group":Lcom/android/camera/PreferenceGroup;
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 451
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    if-eqz v5, :cond_0

    .line 452
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 464
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-direct {p0, v4}, Lcom/google/android/apps/lightcycle/PanoramaModule;->addPopup(Landroid/view/View;)V

    .line 465
    return-void

    .line 454
    :cond_0
    const v5, 0x7f040056

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/MoreSettingPopup;

    .line 456
    .local v3, "popup":Lcom/android/camera/ui/MoreSettingPopup;
    sget-object v5, Lcom/google/android/apps/lightcycle/PanoramaModule;->SETTING_KEYS:[Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Lcom/android/camera/ui/MoreSettingPopup;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V

    .line 458
    const-string v5, "pref_camera_recordlocation_key"

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {v3, v5, v4}, Lcom/android/camera/ui/MoreSettingPopup;->setPreferenceEnabled(Ljava/lang/String;Z)V

    .line 460
    invoke-virtual {v3, p0}, Lcom/android/camera/ui/MoreSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/MoreSettingPopup$Listener;)V

    .line 461
    iput-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    goto :goto_0
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 1012
    return-void
.end method

.method public needsPieMenu()Z
    .locals 1

    .prologue
    .line 1142
    const/4 v0, 0x1

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 1137
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1016
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1020
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->removeTopLevelPopup()Z

    move-result v0

    return v0
.end method

.method public onCaptureTextureCopied()V
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    if-nez v0, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1085
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->pauseCapture()V

    .line 1086
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLightCycleController:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->clearRendering()V

    .line 1087
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    new-instance v1, Lcom/google/android/apps/lightcycle/PanoramaModule$14;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$14;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->shutdown(Lcom/google/android/apps/lightcycle/util/Callback;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->initButtons()V

    .line 991
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->setDisplayRotation()V

    .line 992
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    .line 993
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustPhotoSphereHelpOverlay()V

    .line 994
    return-void
.end method

.method public onDoneButtonPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 705
    iget v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    if-nez v0, :cond_0

    .line 776
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v5}, Landroid/media/MediaActionSound;->play(I)V

    .line 715
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    .line 716
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPreviewThumb:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 719
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-static {}, Lcom/android/camera/CaptureAnimManager;->getAnimationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 722
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule$10;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/PanoramaModule$10;-><init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPhotoSpherePreviewWriter:Ljava/lang/Thread;

    .line 758
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPhotoSpherePreviewWriter:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 761
    const-string v0, "Lightcycle"

    const-string v1, "CaptureDone"

    const-string v2, "NumImages"

    iget v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 763
    const-string v0, "Lightcycle"

    const-string v1, "CaptureDone"

    const-string v2, "NumUndos"

    iget v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStatNumUndos:I

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStatFirstPhotoTimeMillis:J

    sub-long/2addr v0, v2

    .line 766
    const-string v2, "Lightcycle"

    const-string v3, "CaptureDone"

    const-string v4, "SessionDurationMillis"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 769
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 771
    const-string v1, "Lightcycle"

    const-string v2, "CaptureDone"

    if-eqz v0, :cond_2

    const-string v0, "gpsEnabled"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iput v5, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mNumberOfImages:I

    goto :goto_0

    .line 771
    :cond_2
    const-string v0, "gpsDisabled"

    goto :goto_1
.end method

.method public onDraw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 11
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1177
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1178
    :try_start_0
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    .line 1179
    .local v8, "renderer":Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mInitializeRenderer:Z

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    .line 1180
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1181
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    .line 1182
    .local v10, "surfaceWidth":I
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    .line 1183
    .local v9, "surfaceHeight":I
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v10, v9}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1184
    invoke-virtual {v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->resetOrientation()V

    .line 1185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mInitializeRenderer:Z

    .line 1187
    .end local v9    # "surfaceHeight":I
    .end local v10    # "surfaceWidth":I
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    if-nez v8, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getAnimationTexture()Lcom/android/gallery3d/glrenderer/RawTexture;

    move-result-object v1

    .line 1190
    .local v1, "animationTexture":Lcom/android/gallery3d/glrenderer/RawTexture;
    if-eqz v1, :cond_1

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    .line 1191
    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 1200
    .end local v1    # "animationTexture":Lcom/android/gallery3d/glrenderer/RawTexture;
    :cond_1
    :goto_0
    return-void

    .line 1187
    .end local v8    # "renderer":Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1194
    .restart local v8    # "renderer":Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mTempRect:Landroid/graphics/Rect;

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/gallery3d/glrenderer/GLCanvas;->getBounds(Landroid/graphics/Rect;IIII)V

    .line 1195
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v8, v0, v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setViewport(IIII)V

    .line 1197
    invoke-virtual {v8}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->drawFrame()V

    .line 1198
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->recoverFromLightCycle()V

    goto :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 2
    .param p1, "full"    # Z

    .prologue
    .line 979
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mFullScreen:Z

    .line 980
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 981
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-eqz v0, :cond_0

    .line 982
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRenderer:Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleRenderer;->setDisablePhotoTaking(Z)V

    .line 984
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    .line 985
    return-void

    .line 982
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1025
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 1026
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/DeviceManager;->isWingman()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->startStitchService(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 1028
    const/4 v0, 0x1

    .line 1031
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1036
    const/4 v0, 0x0

    return v0
.end method

.method public onListPrefChanged(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/MoreSettingPopup;->reloadPreference()V

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MoreSettingPopup;->setVisibility(I)V

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    .line 441
    return-void
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 1210
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 998
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setDraw(Lcom/android/camera/CameraScreenNail$DrawClient;)V

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mIsPaused:Z

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 514
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStorageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mLocalStorage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->addSessionData(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->stopCapture()V

    .line 519
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mAligner:Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;->interrupt()V

    .line 526
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->resetScreenOn()V

    .line 527
    return-void
.end method

.method public onPreferenceClicked(Lcom/android/camera/ListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 424
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->initializeSecondPopup(Lcom/android/camera/ListPreference;)V

    .line 425
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSettingsPopup:Lcom/android/camera/ui/MoreSettingPopup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MoreSettingPopup;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mSecondPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 427
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->adjustUiAndSwipe()V

    .line 428
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 1078
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 4

    .prologue
    .line 362
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mIsPaused:Z

    .line 363
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->initButtons()V

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "deviceName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/google/android/apps/lightcycle/LightCycleApp;->getCameraUtility()Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    move-result-object v0

    .line 371
    .local v0, "cameraUtil":Lcom/google/android/apps/lightcycle/camera/CameraUtility;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->hasBackFacingCamera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    const-string v2, "Sorry, your device does not have a back facing camera"

    invoke-direct {p0, v2}, Lcom/google/android/apps/lightcycle/PanoramaModule;->displayErrorAndExit(Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 377
    :cond_0
    const/16 v2, -0x13

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 380
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->keepScreenOnAwhile()V

    .line 382
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStorageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-interface {v2, v3}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->init(Landroid/content/Context;)V

    .line 386
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mStorageManager:Lcom/google/android/apps/lightcycle/storage/StorageManager;

    sget-object v3, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->setPanoramaDestination(Ljava/lang/String;)Z

    .line 387
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->setDisplayRotation()V

    .line 389
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->startCapture()V

    .line 390
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2, p0}, Lcom/android/camera/CameraScreenNail;->setDraw(Lcom/android/camera/CameraScreenNail$DrawClient;)V

    .line 391
    const-string v2, "Camera"

    const-string v3, "LightcycleModule"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/camera/ListPreference;

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->updateIndicators()V

    .line 405
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 1147
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1008
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->keepScreenOnAwhile()V

    .line 1124
    :cond_0
    return-void
.end method

.method public requiresSurfaceTexture()Z
    .locals 1

    .prologue
    .line 1204
    const/4 v0, 0x0

    return v0
.end method

.method public updateCameraAppView()V
    .locals 0

    .prologue
    .line 1133
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x0

    return v0
.end method
