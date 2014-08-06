.class public Lcom/android/camera/PanoramaModule;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/ui/LayoutChangeNotifier$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoramaModule$WaitProcessorTask;,
        Lcom/android/camera/PanoramaModule$FlipBitmapDrawable;,
        Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;,
        Lcom/android/camera/PanoramaModule$MosaicJpeg;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraOrientation:I

.field private mCameraState:I

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCancelComputation:Z

.field private mCaptureIndicator:Landroid/view/View;

.field private mCaptureLayout:Landroid/widget/LinearLayout;

.field private mCaptureState:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDialogWaitingPreviousString:Ljava/lang/String;

.field private mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

.field private mHorizontalViewAngle:F

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mIsCreatingRenderer:Z

.field private mLeftIndicator:Landroid/view/View;

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMainHandler:Landroid/os/Handler;

.field private mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

.field private mMosaicFrameProcessorInitialized:Z

.field private mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

.field private mPanoLayout:Landroid/view/ViewGroup;

.field private mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPaused:Z

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressAngle:[F

.field private mProgressDirectionMatrix:Landroid/graphics/Matrix;

.field private mRendererLock:Ljava/lang/Object;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewBackground:I

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mRotateDialog:Lcom/android/camera/RotateDialogController;

.field private mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mSoundPlayer:Lcom/android/camera/SoundClips$Player;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    .line 158
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    .line 1207
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/PanoramaModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PanoramaModule;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->resetToPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/RotateDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/PanoramaModule;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PanoramaModule;->configMosaicPreview(II)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/camera/PanoramaModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/camera/PanoramaModule;->mIsCreatingRenderer:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/PanoramaModule;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/PanoramaModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/PanoramaModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/camera/PanoramaModule;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/PanoramaModule;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/camera/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/PanoramaModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/PanoramaModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/PanoramaModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/PanoramaModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/PanoramaModule;FFFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaModule;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/PanoramaModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule;->showDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->cancelHighResComputation()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/PanoramaModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/PanoProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->getCaptureOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/PanoramaModule;[BIII)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/ui/LayoutNotifyView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/PanoramaModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicPreviewRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/PanoramaModule;Lcom/android/camera/MosaicPreviewRenderer;)Lcom/android/camera/MosaicPreviewRenderer;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # Lcom/android/camera/MosaicPreviewRenderer;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/MosaicFrameProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->onBackgroundThreadFinished()V

    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mCancelComputation:Z

    .line 840
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 842
    monitor-exit v1

    .line 843
    return-void

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->clear()V

    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private configMosaicPreview(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v0, 0x1

    .line 440
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v3

    .line 441
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mIsCreatingRenderer:Z

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 444
    monitor-exit v3

    .line 487
    :goto_0
    return-void

    .line 446
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mIsCreatingRenderer:Z

    .line 447
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->stopCameraPreview()V

    .line 449
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v2, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    .line 450
    .local v1, "screenNail":Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 451
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v3

    .line 452
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v2}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 455
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 456
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 457
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 458
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 459
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 460
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 461
    .local v0, "isLandscape":Z
    :goto_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/camera/PanoramaModule$3;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/android/camera/PanoramaModule$3;-><init>(Lcom/android/camera/PanoramaModule;IIZ)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 447
    .end local v0    # "isLandscape":Z
    .end local v1    # "screenNail":Lcom/android/camera/CameraScreenNail;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 458
    .restart local v1    # "screenNail":Lcom/android/camera/CameraScreenNail;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 460
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 437
    return-void
.end method

.method private createContentView()V
    .locals 4

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04005d

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 716
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 717
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0137

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    .line 718
    const v0, 0x7f09004d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColor:I

    .line 719
    const v0, 0x7f090045

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mReviewBackground:I

    .line 720
    const v0, 0x7f09004e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColorFast:I

    .line 721
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0084

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    .line 722
    new-instance v0, Lcom/android/camera/RotateDialogController;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f040070

    invoke-direct {v0, v2, v3}, Lcom/android/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    .line 723
    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V

    .line 724
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .param p2, "need4To3"    # Z
    .param p3, "needSmaller"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v4, 0xa8c00

    .line 371
    .local v4, "pixelsDiff":I
    const/4 v2, 0x0

    .line 372
    .local v2, "hasFound":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 373
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 374
    .local v1, "h":I
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    .line 376
    .local v6, "w":I
    const v7, 0xa8c00

    mul-int v8, v1, v6

    sub-int v0, v7, v8

    .line 377
    .local v0, "d":I
    if-eqz p3, :cond_1

    if-ltz v0, :cond_0

    .line 380
    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v6, 0x3

    if-ne v7, v8, :cond_0

    .line 383
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 384
    if-ge v0, v4, :cond_0

    .line 385
    iput v6, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    .line 386
    iput v1, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    .line 387
    move v4, v0

    .line 388
    const/4 v2, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "d":I
    .end local v1    # "h":I
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    .end local v6    # "w":I
    :cond_3
    return v2
.end method

.method private getCaptureOrientation()I
    .locals 3

    .prologue
    .line 787
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mUsingFrontCamera:Z

    if-eqz v1, :cond_0

    .line 790
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mCameraOrientation:I

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    .line 794
    .local v0, "orientation":I
    :goto_0
    return v0

    .line 792
    .end local v0    # "orientation":I
    :cond_0
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mCameraOrientation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .restart local v0    # "orientation":I
    goto :goto_0
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 508
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 510
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 625
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/LayoutNotifyView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 630
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 631
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 632
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->getPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/MosaicFrameProcessor;->initialize(III)V

    .line 957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1204
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1205
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1197
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1198
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1200
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    .line 835
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 836
    return-void
.end method

.method private openCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 362
    .local v0, "cameraId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1, v0}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 364
    invoke-static {v0}, Lcom/android/camera/Util;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaModule;->mCameraOrientation:I

    .line 365
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mUsingFrontCamera:Z

    .line 366
    :cond_1
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 350
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 351
    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    .line 354
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 847
    iput v2, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 849
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 854
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 855
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 856
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showUI()V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->reset()V

    .line 866
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1194
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->reset()V

    .line 870
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->startCameraPreview()V

    .line 871
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    .line 830
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 831
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 10

    .prologue
    .line 908
    if-eqz p1, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {v0, v1, v2}, Lcom/android/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 911
    invoke-static {v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 913
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 914
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 916
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 917
    iget-wide v2, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 918
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    iget-wide v5, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v2, v5, v6, v3}, Lcom/android/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 920
    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {p4}, Lcom/android/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    .line 922
    invoke-static {v4, v0}, Lcom/android/camera/PanoramaModule;->writeLocation(Landroid/location/Location;Lcom/android/gallery3d/exif/ExifInterface;)V

    .line 923
    invoke-virtual {v0, p1, v7}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v6, v2

    .line 929
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    move v5, p4

    move v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 932
    :goto_1
    return-object v0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    const-string v2, "CAM PanoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set exif for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 926
    invoke-static {v7, p1}, Lcom/android/camera/Storage;->writeFile(Ljava/lang/String;[B)V

    goto :goto_0

    .line 932
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setViews(Landroid/content/res/Resources;)V
    .locals 4

    .prologue
    const v3, 0x7f09004b

    const/4 v2, 0x0

    .line 659
    iput v2, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 660
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0a015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PanoProgressBar;

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 661
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 662
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const v1, 0x7f09004c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 663
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 664
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    new-instance v1, Lcom/android/camera/PanoramaModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaModule$6;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 674
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    .line 675
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    .line 676
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 677
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 678
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    .line 680
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0a015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/LayoutNotifyView;

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    .line 681
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/LayoutNotifyView;->setOnLayoutChangeListener(Lcom/android/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 683
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0a013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PanoProgressBar;

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    .line 684
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 685
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 686
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 687
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const v1, 0x7f09004d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setDoneColor(I)V

    .line 689
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0a015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    .line 691
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    .line 692
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    .line 693
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mReviewBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 694
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0a013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 695
    new-instance v1, Lcom/android/camera/PanoramaModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaModule$7;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 704
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 705
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 707
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v1, 0x7f0a013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/Rotatable;

    .line 710
    const/16 v1, 0x10e

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 712
    :cond_0
    return-void
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->openCamera()V

    .line 342
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 343
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 344
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 345
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 395
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 396
    .local v5, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5, v10, v10}, Lcom/android/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 397
    const-string v6, "CAM PanoModule"

    const-string v7, "No 4:3 ratio preview size supported."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0, v5, v9, v10}, Lcom/android/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 399
    const-string v6, "CAM PanoModule"

    const-string v7, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0, v5, v9, v9}, Lcom/android/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 403
    :cond_0
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget v6, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 406
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 407
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 408
    .local v1, "last":I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 409
    .local v3, "minFps":I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v2, v6, v10

    .line 410
    .local v2, "maxFps":I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 411
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 414
    .local v4, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 415
    iget-object v6, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 422
    :goto_0
    const-string v6, "recording-hint"

    const-string v7, "false"

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaModule;->mHorizontalViewAngle:F

    .line 425
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/camera/PanoramaModule;->mVerticalViewAngle:F

    .line 426
    return-void

    .line 418
    :cond_1
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDirectionIndicators(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 513
    packed-switch p1, :pswitch_data_0

    .line 527
    :goto_0
    return-void

    .line 515
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 519
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 523
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 892
    if-eqz p1, :cond_0

    .line 893
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->getCaptureOrientation()I

    move-result v0

    .line 894
    .local v0, "orientation":I
    const/16 v1, 0xb4

    if-lt v0, v1, :cond_1

    .line 896
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/camera/PanoramaModule$FlipBitmapDrawable;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/camera/PanoramaModule$FlipBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 903
    .end local v0    # "orientation":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 904
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 905
    return-void

    .line 899
    .restart local v0    # "orientation":I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 616
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/LayoutNotifyView;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 620
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 621
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 622
    return-void
.end method

.method private startCameraPreview()V
    .locals 3

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1168
    :goto_0
    return-void

    .line 1151
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1152
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1156
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->stopCameraPreview()V

    .line 1161
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1164
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1165
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1166
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1167
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    goto :goto_0
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1172
    const-string v0, "CAM PanoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1175
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    .line 1176
    return-void
.end method

.method private stopCapture(Z)V
    .locals 3
    .param p1, "aborted"    # Z

    .prologue
    const/4 v2, 0x0

    .line 580
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 581
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 582
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideTooFastIndication()V

    .line 583
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideDirectionIndicators()V

    .line 585
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, v2}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 586
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->stopCameraPreview()V

    .line 588
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 590
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 595
    new-instance v0, Lcom/android/camera/PanoramaModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$5;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->keepScreenOnAwhile()V

    .line 613
    return-void
.end method

.method private updateProgress(FFFF)V
    .locals 5
    .param p1, "panningRateXInDegree"    # F
    .param p2, "panningRateYInDegree"    # F
    .param p3, "progressHorizontalAngle"    # F
    .param p4, "progressVerticalAngle"    # F

    .prologue
    const/high16 v2, 0x40200000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 636
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 638
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->showTooFastIndication()V

    .line 647
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aput p3, v1, v3

    .line 648
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aput p4, v1, v4

    .line 649
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 651
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v3

    float-to-int v0, v1

    .line 655
    .local v0, "angleInMajorDirection":I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/camera/PanoProgressBar;->setProgress(I)V

    .line 656
    return-void

    .line 642
    .end local v0    # "angleInMajorDirection":I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->hideTooFastIndication()V

    goto :goto_0

    .line 651
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v4

    float-to-int v0, v1

    goto :goto_1
.end method

.method private static writeLocation(Landroid/location/Location;Lcom/android/gallery3d/exif/ExifInterface;)V
    .locals 4
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "exif"    # Lcom/android/gallery3d/exif/ExifInterface;

    .prologue
    .line 936
    if-nez p0, :cond_0

    .line 941
    :goto_0
    return-void

    .line 939
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->addGpsTags(DD)Z

    .line 940
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public generateFinalMosaic(Z)Lcom/android/camera/PanoramaModule$MosaicJpeg;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1101
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0, p1}, Lcom/android/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v0

    .line 1102
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1137
    :goto_0
    return-object v5

    .line 1104
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1105
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1109
    if-nez v1, :cond_2

    .line 1110
    const-string v0, "CAM PanoModule"

    const-string v1, "getFinalMosaicNV21() returned null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto :goto_0

    .line 1114
    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, -0x8

    .line 1115
    add-int/lit8 v2, v0, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 1117
    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x7

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 1119
    const-string v2, "CAM PanoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImLength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", W = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", H = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1123
    :cond_3
    const-string v1, "CAM PanoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width|height <= 0!!, len = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", W = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", H = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto/16 :goto_0

    .line 1128
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1129
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1130
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1132
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v5, p0, v0, v3, v4}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;[BII)V

    goto/16 :goto_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    const-string v1, "CAM PanoModule"

    const-string v2, "Exception in storing final mosaic"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1135
    new-instance v5, Lcom/android/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/android/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/android/camera/PanoramaModule;)V

    goto/16 :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 429
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 430
    .local v0, "pixelInfo":Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 432
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "reuseScreenNail"    # Z

    .prologue
    const/4 v4, 0x1

    .line 229
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 230
    iput-object p2, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    .line 232
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->createContentView()V

    .line 234
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 235
    if-eqz p3, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 242
    :goto_0
    new-instance v2, Lcom/android/camera/PanoramaModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaModule$1;-><init>(Lcom/android/camera/PanoramaModule;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 270
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 271
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "Panorama"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 273
    new-instance v2, Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, p0, v3}, Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;-><init>(Lcom/android/camera/PanoramaModule;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    .line 275
    invoke-static {}, Lcom/android/camera/MosaicFrameProcessor;->getInstance()Lcom/android/camera/MosaicFrameProcessor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    .line 277
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    .local v0, "appRes":Landroid/content/res/Resources;
    const v2, 0x7f0b02b9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    .line 279
    const v2, 0x7f0b02bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    .line 280
    const v2, 0x7f0b02b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    .line 281
    const v2, 0x7f0b02ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 282
    const v2, 0x7f0b02bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    .line 284
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 286
    new-instance v2, Lcom/android/camera/ComboPreferences;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 287
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 288
    new-instance v2, Lcom/android/camera/LocationManager;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 290
    new-instance v2, Lcom/android/camera/PanoramaModule$2;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaModule$2;-><init>(Lcom/android/camera/PanoramaModule;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    .line 333
    return-void

    .line 238
    .end local v0    # "appRes":Landroid/content/res/Resources;
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v4}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto/16 :goto_0
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 1248
    return-void
.end method

.method public needsPieMenu()Z
    .locals 1

    .prologue
    .line 1293
    const/4 v0, 0x0

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 1288
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1252
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1187
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 1275
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1008
    const/4 v0, 0x0

    .line 1009
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1012
    :cond_0
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1015
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1016
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1017
    const v3, 0x7f04006d

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1019
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1020
    const v3, 0x7f04005c

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1022
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V

    .line 1023
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v1, :cond_1

    .line 1024
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1025
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    :cond_1
    return-void

    .line 1012
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 505
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 0
    .param p1, "full"    # Z

    .prologue
    .line 1239
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1257
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1262
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 494
    const-string v0, "CAM PanoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p4, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p5, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/CameraActivity;->onLayoutChange(Landroid/view/View;IIII)V

    .line 496
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/camera/PanoramaModule;->configMosaicPreview(II)V

    .line 497
    return-void
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 1303
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 1032
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 968
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;->disable()V

    .line 969
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1004
    :goto_0
    return-void

    .line 974
    :cond_0
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    if-ne v1, v4, :cond_1

    .line 975
    invoke-direct {p0, v4}, Lcom/android/camera/PanoramaModule;->stopCapture(Z)V

    .line 976
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->reset()V

    .line 979
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->releaseCamera()V

    .line 980
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v2

    .line 981
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 985
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    if-eqz v1, :cond_2

    .line 986
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/camera/MosaicPreviewRenderer;->release()V

    .line 987
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/camera/MosaicPreviewRenderer;

    .line 989
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    .line 992
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_3

    .line 993
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 994
    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 996
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->resetScreenOn()V

    .line 997
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    if-eqz v1, :cond_4

    .line 998
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    invoke-interface {v1}, Lcom/android/camera/SoundClips$Player;->release()V

    .line 999
    iput-object v3, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 1001
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v1, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 1002
    .local v0, "screenNail":Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1003
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 989
    .end local v0    # "screenNail":Lcom/android/camera/CameraScreenNail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPauseBeforeSuper()V
    .locals 2

    .prologue
    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    .line 963
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 964
    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 1271
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1041
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mOrientationEventListener:Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaModule$PanoOrientationEventListener;->enable()V

    .line 1043
    iput v2, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 1046
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setupCamera()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1056
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/camera/SoundClips$Player;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    .line 1059
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/camera/RotateDialogController;->dismissDialog()V

    .line 1060
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1062
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRotateDialog:Lcom/android/camera/RotateDialogController;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideUI()V

    .line 1066
    new-instance v0, Lcom/android/camera/PanoramaModule$WaitProcessorTask;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/PanoramaModule$WaitProcessorTask;-><init>(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaModule$WaitProcessorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1078
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->keepScreenOnAwhile()V

    .line 1081
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 1083
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1087
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1088
    const-string v0, "Camera"

    const-string v1, "PanoramaModule"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :goto_1
    return-void

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0b0247

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1050
    :catch_1
    move-exception v0

    .line 1051
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0b0248

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1071
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    .line 1072
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v0}, Lcom/android/camera/ui/LayoutNotifyView;->getWidth()I

    move-result v0

    .line 1073
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mPreviewArea:Lcom/android/camera/ui/LayoutNotifyView;

    invoke-virtual {v1}, Lcom/android/camera/ui/LayoutNotifyView;->getHeight()I

    move-result v1

    .line 1074
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1075
    invoke-direct {p0, v0, v1}, Lcom/android/camera/PanoramaModule;->configMosaicPreview(II)V

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    .line 1037
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 1298
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 4

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 735
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 737
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->startCapture()V

    goto :goto_0

    .line 740
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSoundPlayer:Lcom/android/camera/SoundClips$Player;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/SoundClips$Player;->play(I)V

    .line 741
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->stopCapture(Z)V

    goto :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 747
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1244
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1180
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->keepScreenOnAwhile()V

    .line 1181
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 751
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSavingProgressBar:Lcom/android/camera/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 752
    new-instance v0, Lcom/android/camera/PanoramaModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$8;-><init>(Lcom/android/camera/PanoramaModule;)V

    .line 776
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 777
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 1

    .prologue
    .line 798
    new-instance v0, Lcom/android/camera/PanoramaModule$9;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$9;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->reportProgress()V

    .line 826
    return-void
.end method

.method setupProgressDirectionMatrix()V
    .locals 5

    .prologue
    .line 572
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 573
    .local v1, "degrees":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 574
    .local v0, "cameraId":I
    invoke-static {v1, v0}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v2

    .line 575
    .local v2, "orientation":I
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 576
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 577
    return-void
.end method

.method public startCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 531
    iput-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mCancelComputation:Z

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PanoramaModule;->mTimeTaken:J

    .line 533
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->hideSwitcher()V

    .line 535
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 536
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureState:I

    .line 537
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 538
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaModule;->showDirectionIndicators(I)V

    .line 540
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/camera/MosaicFrameProcessor;

    new-instance v1, Lcom/android/camera/PanoramaModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaModule$4;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/MosaicFrameProcessor;->setProgressListener(Lcom/android/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 559
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/camera/PanoProgressBar;->reset()V

    .line 562
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/high16 v1, 0x41a00000

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 563
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 564
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mPanoProgressBar:Lcom/android/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/camera/PanoProgressBar;->setVisibility(I)V

    .line 565
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientation:I

    iput v0, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    .line 566
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->keepScreenOn()V

    .line 567
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 568
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->setupProgressDirectionMatrix()V

    .line 569
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
    const/4 v0, 0x0

    return v0
.end method
