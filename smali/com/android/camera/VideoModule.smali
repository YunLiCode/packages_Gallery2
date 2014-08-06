.class public Lcom/android/camera/VideoModule;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/CameraModule;
.implements Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/EffectsRecorder$EffectsListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/VideoController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/VideoModule$MainHandler;,
        Lcom/android/camera/VideoModule$CameraOpenThread;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCameraOpened:Ljava/lang/Boolean;

.field private mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectType:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mEffectsDisplayResult:Z

.field private mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsInReviewMode:Z

.field private mIsVideoCaptureIntent:Z

.field private mLocationManager:Lcom/android/camera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private final mOnPhotoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mOnResumeTime:J

.field private final mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field private mPendingSwitchCameraId:I

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mResetEffect:Z

.field private mRestoreFlash:Z

.field private mSnapshotInProgress:Z

.field private mSwitchingCamera:Z

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mUI:Lcom/android/camera/VideoUI;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mZoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCameraOpened:Ljava/lang/Boolean;

    .line 117
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 121
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 130
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 136
    iput v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 137
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 138
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 164
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 166
    iput v1, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 168
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 182
    new-instance v0, Lcom/android/camera/VideoModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 192
    new-instance v0, Lcom/android/camera/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$1;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 205
    new-instance v0, Lcom/android/camera/VideoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$2;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOnPhotoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    .line 312
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2203
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/VideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 2130
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2131
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 2132
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2133
    .local v0, "size":Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 2135
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2138
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2139
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1089
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1095
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->closeCamera(Z)V

    .line 910
    return-void
.end method

.method private closeCamera(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 924
    const-string v0, "CAM_VideoModule"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 926
    const-string v0, "CAM_VideoModule"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :goto_0
    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectCamera()V

    .line 935
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeEffects()V

    .line 936
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 937
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 938
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraOpened:Ljava/lang/Boolean;

    monitor-enter v1

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraOpened:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 940
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 942
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCameraOpened:Ljava/lang/Boolean;

    .line 943
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v3, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 945
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 946
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0

    .line 943
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private closeEffects()V
    .locals 2

    .prologue
    .line 895
    const-string v0, "CAM_VideoModule"

    const-string v1, "Closing effects"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 897
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_0

    .line 898
    const-string v0, "CAM_VideoModule"

    const-string v1, "Effects are already closed. Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :goto_0
    return-void

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 904
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2260
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2264
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2266
    :cond_0
    return-void

    .line 2261
    :catch_0
    move-exception v0

    .line 2262
    const-string v1, "CAM_VideoModule"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2251
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2252
    const-string v0, ".mp4"

    .line 2254
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2244
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2245
    const-string v0, "video/mp4"

    .line 2247
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 4
    .param p1, "dateTaken"    # J

    .prologue
    .line 328
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 329
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b02b5

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1407
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 1075
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1077
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1078
    const/4 v0, -0x1

    .line 1079
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1083
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1084
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1085
    return-void

    .line 1081
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 1999
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .param p1, "screen"    # Lcom/android/camera/PreferenceGroup;

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1417
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1422
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1423
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1426
    :cond_1
    return-object p1
.end method

.method private generateVideoFilename(I)V
    .locals 9

    .prologue
    .line 1363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1364
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1367
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1370
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1371
    iget-object v7, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1374
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "date_modified"

    const-wide/16 v7, 0x3e8

    div-long/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1375
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1381
    if-eqz v0, :cond_0

    .line 1382
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1383
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1385
    :cond_0
    iput-object v6, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1386
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 697
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v6, v6, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 698
    sget-boolean v6, Lcom/android/gallery3d/common/ApiHelper;->HAS_GET_SUPPORTED_VIDEO_SIZE:Z

    if-eqz v6, :cond_4

    .line 699
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 700
    :cond_0
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 701
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    .line 723
    :goto_0
    const-string v6, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDesiredPreviewWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". mDesiredPreviewHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void

    .line 703
    :cond_1
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 704
    .local v5, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 705
    .local v2, "preferred":Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    .line 706
    .local v3, "product":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 708
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 709
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 710
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_2

    .line 711
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 714
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v7, v7

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-static {v6, v5, v7, v8}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 716
    .local v1, "optimalSize":Landroid/hardware/Camera$Size;
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 717
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0

    .line 720
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v1    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v2    # "preferred":Landroid/hardware/Camera$Size;
    .end local v3    # "product":I
    .end local v5    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_4
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 721
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0
.end method

.method private static getLowVideoQuality()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 499
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x4

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I
    .locals 2
    .param p1, "preferences"    # Lcom/android/camera/ComboPreferences;

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 337
    .local v0, "intentCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 342
    .end local v0    # "intentCameraId":I
    :goto_0
    return v0

    .restart local v0    # "intentCameraId":I
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .param p1, "deltaMs"    # J

    .prologue
    .line 1735
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 1736
    .local v0, "numberOfFrames":D
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private initializeEffectsPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1245
    const-string v1, "CAM_VideoModule"

    const-string v2, "initializeEffectsPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1287
    :goto_0
    return-void

    .line 1249
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 1252
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v1, v1, v2

    .line 1254
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 1255
    new-instance v2, Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/android/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1259
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 1260
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setCamera(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 1261
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v2, v1}, Lcom/android/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 1262
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1263
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V

    .line 1264
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1265
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, p0}, Lcom/android/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1272
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1273
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 1275
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1277
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 1278
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1281
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1283
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1285
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 1290
    const-string v0, "CAM_VideoModule"

    const-string v1, "initializeEffectsRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1293
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1296
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1297
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1298
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1299
    if-eqz v0, :cond_0

    .line 1301
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1303
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    :cond_0
    :goto_0
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1312
    :goto_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1316
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_1

    .line 1317
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide v5, 0x408f400000000000L

    iget v7, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 1323
    :goto_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 1324
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1331
    :goto_3
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x2faf080

    sub-long/2addr v4, v6

    .line 1332
    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 1335
    :goto_4
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 1336
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 1337
    return-void

    .line 1304
    :catch_0
    move-exception v0

    .line 1306
    const-string v4, "CAM_VideoModule"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1319
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_2

    .line 1326
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1327
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-wide v0, v4

    goto :goto_4

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method private initializeRecorder()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    .line 1123
    const-string v0, "CAM_VideoModule"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 1132
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->showSurfaceView()V

    .line 1133
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->isSurfaceViewReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1140
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1141
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 1142
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1143
    if-eqz v0, :cond_3

    .line 1145
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "rw"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1147
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :cond_3
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1155
    :goto_2
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1157
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setupMediaRecorderPreviewDisplay()V

    .line 1159
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1160
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, v4, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->waitDone()Z

    .line 1161
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, v5, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v5}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1162
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v4, :cond_4

    .line 1163
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1165
    :cond_4
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1166
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1167
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v5, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1168
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_5

    .line 1169
    const-wide v4, 0x408f400000000000L

    iget v6, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 1170
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v6, v4, v5}, Lcom/android/camera/VideoModule;->setCaptureRate(Landroid/media/MediaRecorder;D)V

    .line 1173
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setRecordLocation()V

    .line 1178
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_7

    .line 1179
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1186
    :goto_3
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x2faf080

    sub-long/2addr v4, v6

    .line 1187
    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    cmp-long v2, v0, v4

    if-gez v2, :cond_9

    .line 1192
    :goto_4
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1205
    :goto_5
    const/4 v0, 0x0

    .line 1206
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 1207
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 1208
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v8, :cond_8

    .line 1209
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1214
    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1217
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1224
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1225
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1148
    :catch_0
    move-exception v0

    .line 1150
    const-string v4, "CAM_VideoModule"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1181
    :cond_7
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1182
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    .line 1211
    :cond_8
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 1218
    :catch_1
    move-exception v0

    .line 1219
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1221
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1193
    :catch_2
    move-exception v0

    goto :goto_5

    :cond_9
    move-wide v0, v4

    goto/16 :goto_4

    :cond_a
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private initializeSurfaceView()V
    .locals 2

    .prologue
    .line 347
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/android/camera/VideoModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$3;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    .line 354
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 356
    :cond_0
    return-void
.end method

.method private initializeVideoControl()V
    .locals 4

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->loadCameraPreferences()V

    .line 489
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->initializePopup(Lcom/android/camera/PreferenceGroup;)V

    .line 490
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_video_quality_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/camera/VideoModule;->getLowVideoQuality()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->overrideSettings([Ljava/lang/String;)V

    .line 495
    :cond_0
    return-void
.end method

.method private initializeVideoSnapshot()V
    .locals 4

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2149
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_2

    .line 2150
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2152
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2158
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1789
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1684
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1685
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1677
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1678
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1679
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1680
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 5

    .prologue
    .line 480
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 483
    .local v0, "settings":Lcom/android/camera/CameraSettings;
    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 485
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 1688
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 1689
    .local v10, "seconds":J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 1690
    .local v2, "minutes":J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 1691
    .local v0, "hours":J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 1692
    .local v6, "remainderMinutes":J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 1694
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1697
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 1698
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 1699
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1701
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1703
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1707
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 1708
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1710
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1711
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1714
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 1715
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1717
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1720
    if-eqz p2, :cond_5

    .line 1721
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1722
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 1723
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 1724
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1726
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1729
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 885
    return-void
.end method

.method private onStopVideoRecording()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v2, 0x1

    .line 568
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 569
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    .line 570
    .local v0, "recordFail":Z
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    .line 571
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 572
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v1, :cond_2

    .line 573
    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 597
    :cond_0
    :goto_1
    return-void

    .line 573
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 574
    :cond_2
    if-nez v0, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    goto :goto_1

    .line 578
    :cond_3
    if-nez v0, :cond_0

    .line 580
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/camera/CameraScreenNail;

    iget v3, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 588
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enablePreviewThumb(Z)V

    .line 592
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 593
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/camera/CaptureAnimManager;->getAnimationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private openCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraOpened:Ljava/lang/Boolean;

    monitor-enter v2
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraOpened:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v4, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 228
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mCameraOpened:Ljava/lang/Boolean;

    .line 230
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_2
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_2 .. :try_end_2} :catch_1

    .line 237
    :goto_0
    return-void

    .line 230
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_4 .. :try_end_4} :catch_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v5, v1, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    goto :goto_0

    .line 234
    .end local v0    # "e":Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 235
    .local v0, "e":Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-boolean v5, v1, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 1461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1462
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1465
    return-void
.end method

.method private readVideoPreferences()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 633
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0262

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "defaultQuality":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_video_quality_key"

    invoke-virtual {v9, v10, v0}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 638
    .local v7, "videoQuality":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 641
    .local v5, "quality":I
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 642
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 643
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 645
    .local v1, "extraVideoQuality":I
    if-lez v1, :cond_5

    .line 646
    const/4 v5, 0x1

    .line 654
    .end local v1    # "extraVideoQuality":I
    :cond_0
    :goto_0
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 655
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 657
    .local v6, "seconds":I
    mul-int/lit16 v9, v6, 0x3e8

    iput v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 663
    .end local v6    # "seconds":I
    :goto_1
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 664
    iget v9, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-eqz v9, :cond_7

    .line 665
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 667
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v9, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 668
    .local v4, "profile":Landroid/media/CamcorderProfile;
    iget v9, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v10, 0x1e0

    if-le v9, v10, :cond_1

    .line 669
    invoke-static {}, Lcom/android/camera/VideoModule;->getLowVideoQuality()I

    move-result v5

    .line 675
    .end local v4    # "profile":Landroid/media/CamcorderProfile;
    :cond_1
    :goto_2
    sget-boolean v9, Lcom/android/gallery3d/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    if-eqz v9, :cond_3

    .line 676
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v10, "pref_video_time_lapse_frame_interval_key"

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f0b0269

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "frameIntervalStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 680
    iget v9, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    :cond_2
    iput-boolean v8, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    .line 683
    .end local v2    # "frameIntervalStr":Ljava/lang/String;
    :cond_3
    iget-boolean v8, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v8, :cond_4

    add-int/lit16 v5, v5, 0x3e8

    .line 684
    :cond_4
    iget v8, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v8, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 685
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->getDesiredPreviewSize()V

    .line 686
    return-void

    .line 648
    .restart local v1    # "extraVideoQuality":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 659
    .end local v1    # "extraVideoQuality":I
    :cond_6
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v9}, Lcom/android/camera/CameraSettings;->getMaxVideoDuration(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_1

    .line 672
    :cond_7
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    goto :goto_2
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1352
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1354
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1355
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1356
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1358
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 1359
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1360
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1341
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1343
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1344
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1345
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1346
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1348
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1349
    return-void
.end method

.method private releasePreviewResources()V
    .locals 3

    .prologue
    .line 950
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v1, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    .line 952
    .local v0, "screenNail":Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 953
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 955
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->hideSurfaceView()V

    .line 958
    .end local v0    # "screenNail":Lcom/android/camera/CameraScreenNail;
    :cond_0
    return-void
.end method

.method private resetEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2231
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    if-eqz v2, :cond_0

    .line 2232
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_video_effect_key"

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2234
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2235
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 2240
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return v1

    .line 2239
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    .line 2240
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1673
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1674
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->setAspectRatio(D)V

    .line 730
    return-void
.end method

.method private saveVideo()V
    .locals 7

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    .line 1391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long v2, v0, v2

    .line 1392
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 1393
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_0

    .line 1394
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v2

    .line 1399
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mOnVideoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/MediaSaveService;->addVideo(Ljava/lang/String;JLandroid/content/ContentValues;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    .line 1403
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1404
    return-void

    .line 1397
    :cond_2
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video duration <= 0 : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 5

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1795
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1799
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_6

    .line 1800
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b0289

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1806
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1807
    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1808
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1818
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b028a

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1821
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1823
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1832
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1833
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1837
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 1838
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/camera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1839
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1842
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "recording-hint"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1847
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1848
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 1856
    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1858
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1859
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1860
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1862
    :cond_5
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video snapshot size is "

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

    .line 1866
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 1868
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1870
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1872
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1874
    iget v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->updateCameraScreenNailSize(II)V

    .line 1875
    return-void

    .line 1804
    :cond_6
    const-string v0, "off"

    goto/16 :goto_0

    .line 1810
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1811
    if-nez v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0b0280

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    goto/16 :goto_1

    .line 1825
    :cond_8
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1826
    if-nez v0, :cond_1

    .line 1827
    const-string v0, "auto"

    goto/16 :goto_2
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 0
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "fps"    # D
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1230
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1231
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    .line 804
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 806
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    .line 812
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 813
    return-void

    .line 809
    :cond_0
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    goto :goto_0
.end method

.method private setRecordLocation()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1235
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1237
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1238
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1242
    .end local v0    # "loc":Landroid/location/Location;
    :cond_0
    return-void
.end method

.method private setupMediaRecorderPreviewDisplay()V
    .locals 3

    .prologue
    .line 1099
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 1104
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1105
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 1113
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1115
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1117
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method private showCaptureResult()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1551
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 1552
    const/4 v0, 0x0

    .line 1553
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_2

    .line 1554
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-static {v4, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1560
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1563
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1564
    .local v1, "info":[Landroid/hardware/Camera$CameraInfo;
    iget v4, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    aget-object v4, v1, v4

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v2, :cond_3

    .line 1565
    .local v2, "mirror":Z
    :goto_1
    invoke-static {v0, v3, v2}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1566
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v4, v0}, Lcom/android/camera/VideoUI;->showReviewImage(Landroid/graphics/Bitmap;)V

    .line 1569
    .end local v1    # "info":[Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "mirror":Z
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v4}, Lcom/android/camera/VideoUI;->showReviewControls()V

    .line 1570
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v4, v3}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 1571
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v4, v3}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 1572
    return-void

    .line 1556
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1557
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget v5, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-static {v4, v5}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .restart local v1    # "info":[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v2, v3

    .line 1564
    goto :goto_1
.end method

.method private showTapToSnapshotToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2269
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0b02ce

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2272
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2273
    const-string v1, "pref_video_first_use_hint_shown_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2275
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 535
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 829
    const-string v0, "CAM_VideoModule"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 832
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v0, v2, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 834
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 840
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 841
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 842
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    .line 845
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 846
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 847
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 849
    if-nez v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/VideoModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$6;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 881
    :goto_0
    return-void

    .line 852
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 856
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 858
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onPreviewStarted()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 869
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/VideoModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$6;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 854
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 865
    :catch_0
    move-exception v0

    .line 866
    :try_start_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 867
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 869
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/VideoModule$6;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoModule$6;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v0

    .line 860
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeEffectsPreview()V

    .line 861
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startPreview()V

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 863
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onPreviewStarted()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private startVideoRecording()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1473
    const-string v0, "CAM_VideoModule"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v4}, Lcom/android/camera/VideoUI;->enablePreviewThumb(Z)V

    .line 1475
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1477
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1478
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 1479
    const-string v0, "CAM_VideoModule"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_0
    :goto_0
    return-void

    .line 1483
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->waitDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1485
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1486
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeEffectsRecording()V

    .line 1487
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_3

    .line 1488
    const-string v0, "CAM_VideoModule"

    const-string v1, "Fail to initialize effect recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1492
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeRecorder()V

    .line 1493
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_3

    .line 1494
    const-string v0, "CAM_VideoModule"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1499
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->pauseAudioPlayback()V

    .line 1501
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1503
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0b02cf

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/AccessibilityUtils;->makeAnnouncement(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1528
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->refreshParameters()V

    .line 1533
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-eqz v0, :cond_4

    .line 1534
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1537
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v4}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 1539
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 1540
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 1541
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 1542
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    invoke-virtual {v0, v5, v1}, Lcom/android/camera/VideoUI;->showRecordingUI(ZZ)V

    .line 1544
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 1545
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOn()V

    .line 1546
    const-string v0, "Camera"

    const-string v1, "CaptureStart"

    const-string v2, "Video"

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1506
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseEffectsRecorder()V

    goto/16 :goto_0

    .line 1511
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1512
    :catch_1
    move-exception v0

    .line 1513
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1514
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1516
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto/16 :goto_0
.end method

.method private stopVideoRecording()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1583
    const-string v0, "CAM_VideoModule"

    const-string v1, "stopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1585
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->showSwitcher()V

    .line 1588
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_9

    .line 1592
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1597
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1604
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1605
    const-string v1, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getShutterButton()Lcom/android/camera/ShutterButton;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0b02d0

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/gallery3d/util/AccessibilityUtils;->makeAnnouncement(Landroid/view/View;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    .line 1614
    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 1615
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 1626
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 1629
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v3

    .line 1630
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/camera/VideoModule;->closeCamera(Z)V

    .line 1633
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/camera/VideoUI;->showRecordingUI(ZZ)V

    .line 1634
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v4, :cond_1

    .line 1635
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v4, v3}, Lcom/android/camera/VideoUI;->enableCameraControls(Z)V

    .line 1639
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v4, v2, v3}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 1640
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1641
    if-eqz v0, :cond_2

    .line 1642
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->saveVideo()V

    .line 1646
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1647
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 1648
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_3

    .line 1649
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    .line 1650
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->waitDone()Z

    .line 1651
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_3

    .line 1653
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1655
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mFrameDrawnListener:Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraScreenNail;->setOneTimeOnFrameDrawnListener(Lcom/android/camera/CameraScreenNail$OnFrameDrawnListener;)V

    .line 1657
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 1663
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1664
    :cond_4
    const-string v2, "Camera"

    if-eqz v1, :cond_8

    const-string v0, "CaptureFail"

    :goto_4
    const-string v3, "Video"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v2, v0, v3, v4, v5}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1668
    return v1

    .line 1599
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1600
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1601
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    .line 1602
    goto/16 :goto_0

    .line 1609
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 1610
    :goto_5
    const-string v4, "CAM_VideoModule"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1611
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    :cond_6
    move v1, v3

    .line 1612
    goto/16 :goto_1

    :cond_7
    move v4, v2

    .line 1629
    goto/16 :goto_2

    .line 1664
    :cond_8
    const-string v0, "CaptureDone"

    goto :goto_4

    .line 1609
    :catch_1
    move-exception v1

    goto :goto_5

    :cond_9
    move v1, v2

    goto/16 :goto_3
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 13
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 2220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2221
    .local v3, "dateTaken":J
    invoke-static {v3, v4}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 2222
    .local v2, "title":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v9

    .line 2223
    .local v9, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-static {v9}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v8

    .line 2224
    .local v8, "orientation":I
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 2225
    .local v12, "s":Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v0

    iget v6, v12, Landroid/hardware/Camera$Size;->width:I

    iget v7, v12, Landroid/hardware/Camera$Size;->height:I

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mOnPhotoSavedListener:Lcom/android/camera/MediaSaveService$OnMediaSavedListener;

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v11}, Lcom/android/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/gallery3d/exif/ExifInterface;Lcom/android/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;)V

    .line 2228
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2045
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2074
    :goto_0
    return-void

    .line 2047
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 2049
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 2050
    iget v0, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->setCameraId(I)V

    .line 2052
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 2053
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->collapseCameraControls()Z

    .line 2055
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2056
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2057
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 2058
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2059
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2060
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 2061
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2062
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 2065
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 2066
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 2068
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    .line 2071
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2073
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    goto :goto_0
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1878
    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v4, :cond_1

    .line 1899
    :cond_0
    :goto_0
    return-void

    .line 1880
    :cond_1
    iget v4, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_2

    .line 1881
    move v3, p1

    .line 1882
    .local v3, "tmp":I
    move p1, p2

    .line 1883
    move p2, v3

    .line 1886
    .end local v3    # "tmp":I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v4, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/android/camera/CameraScreenNail;

    .line 1887
    .local v2, "screenNail":Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    .line 1888
    .local v1, "oldWidth":I
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    .line 1890
    .local v0, "oldHeight":I
    if-ne v1, p1, :cond_3

    if-eq v0, p2, :cond_4

    .line 1891
    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 1892
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 1893
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 1896
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1897
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    goto :goto_0
.end method

.method private updateEffectSelection()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2088
    iget v2, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 2089
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 2090
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    .line 2091
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 2093
    iget v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-ne v4, v2, :cond_2

    .line 2094
    iget v4, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-nez v4, :cond_1

    .line 2124
    :cond_0
    :goto_0
    return v0

    .line 2095
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2097
    :cond_2
    const-string v3, "CAM_VideoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New effect selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v6, "pref_video_effect_key"

    const-string v7, "none"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iget v3, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    if-nez v3, :cond_3

    .line 2102
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->stopPreview()V

    .line 2103
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    move v0, v1

    .line 2104
    goto :goto_0

    .line 2106
    :cond_3
    iget v0, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2109
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2110
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2112
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2113
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 2114
    goto :goto_0

    .line 2116
    :cond_4
    if-nez v2, :cond_5

    .line 2118
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2119
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkQualityAndStartPreview()V

    :goto_1
    move v0, v1

    .line 2124
    goto :goto_0

    .line 2122
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/VideoModule;->mEffectType:I

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateRecordingTime()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1740
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 1786
    :goto_0
    return-void

    .line 1743
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1744
    iget-wide v2, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long v2, v0, v2

    .line 1748
    iget v0, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    move v5, v4

    .line 1752
    :goto_1
    if-eqz v5, :cond_5

    .line 1753
    const-wide/16 v0, 0x0

    iget v7, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    int-to-long v7, v7

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x3e7

    add-long/2addr v0, v7

    .line 1758
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v7, :cond_3

    .line 1759
    invoke-static {v0, v1, v6}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 1760
    const-wide/16 v0, 0x3e8

    .line 1769
    :goto_3
    iget-object v6, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v6, v4}, Lcom/android/camera/VideoUI;->setRecordingTime(Ljava/lang/String;)V

    .line 1771
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v4, v5, :cond_1

    .line 1774
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 1776
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v5, :cond_4

    const v4, 0x7f090041

    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1780
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v5, v4}, Lcom/android/camera/VideoUI;->setRecordingTimeTextColor(I)V

    .line 1783
    :cond_1
    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 1784
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 1748
    goto :goto_1

    .line 1765
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 1766
    iget v0, p0, Lcom/android/camera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v0, v0

    goto :goto_3

    .line 1776
    :cond_4
    const v4, 0x7f090040

    goto :goto_4

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 4

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 690
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b02c1

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 692
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 693
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 2143
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public init(Lcom/android/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 6
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "reuseScreenNail"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 360
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 361
    new-instance v3, Lcom/android/camera/VideoUI;

    invoke-direct {v3, p1, p0, p2}, Lcom/android/camera/VideoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    .line 362
    new-instance v3, Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v3, v4}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 363
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 364
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->getPreferredCameraId(Lcom/android/camera/ComboPreferences;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 366
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v5, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 367
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 369
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v4

    iput v4, v3, Lcom/android/camera/ActivityBase;->mNumberOfCameras:I

    .line 370
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0b02c1

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 371
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetEffect()Z

    .line 377
    new-instance v0, Lcom/android/camera/VideoModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$CameraOpenThread;-><init>(Lcom/android/camera/VideoModule;)V

    .line 378
    .local v0, "cameraOpenThread":Lcom/android/camera/VideoModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->start()V

    .line 380
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 384
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    .line 385
    if-eqz p3, :cond_2

    .line 386
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 390
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeSurfaceView()V

    .line 394
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/VideoModule$CameraOpenThread;->join()V

    .line 395
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v1, :cond_4

    .line 396
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b0247

    invoke-static {v1, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 386
    goto :goto_0

    .line 388
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v4, :cond_3

    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_3

    .line 398
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v1, :cond_5

    .line 399
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0b0248

    invoke-static {v1, v3}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 402
    :catch_0
    move-exception v1

    .line 406
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 407
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, p0}, Lcom/android/camera/VideoUI;->setPrefChangedListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 408
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/camera/VideoModule$4;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoModule$4;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 415
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.quickCapture"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    .line 416
    new-instance v1, Lcom/android/camera/LocationManager;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/camera/LocationManager$Listener;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    .line 418
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2, v2}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 419
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 421
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v1, v3}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 422
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 423
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 425
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoControl()V

    .line 426
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 427
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 435
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    goto :goto_2
.end method

.method public installIntentFilter()V
    .locals 3

    .prologue
    .line 735
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 737
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 739
    new-instance v1, Lcom/android/camera/VideoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 740
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 741
    return-void
.end method

.method public isInReviewMode()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1071
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public needsPieMenu()Z
    .locals 1

    .prologue
    .line 2307
    const/4 v0, 0x1

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 2302
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1903
    packed-switch p1, :pswitch_data_0

    .line 1918
    :goto_0
    return-void

    .line 1905
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1908
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 1909
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 1912
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 1913
    const-string v0, "CAM_VideoModule"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 1903
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1020
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return v0

    .line 1021
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    .line 1022
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1024
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->hidePieRenderer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 2

    .prologue
    .line 2285
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2298
    :cond_0
    :goto_0
    return-void

    .line 2287
    :cond_1
    iput p1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 2288
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 2289
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->copyTexture()V

    .line 2294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    goto :goto_0

    .line 2296
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1959
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 1961
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onSharedPreferenceChanged()V

    .line 1962
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 2085
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 1985
    const-string v0, "CAM_VideoModule"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 1987
    return-void
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1968
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    invoke-direct {p0, p2}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1972
    :cond_0
    :try_start_1
    const-string v0, "android.filterpacks.videosink.MediaRecorderStopException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1974
    const-string v0, "CAM_VideoModule"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1975
    monitor-exit p0

    return-void

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
    :try_start_2
    const-string v1, "CAM_VideoModule"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1980
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error during recording!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1968
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1922
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectsUpdate. Effect Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 1926
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkQualityAndStartPreview()V

    .line 1951
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1952
    const-string v0, "CAM_VideoModule"

    const-string v1, "OnEffectsUpdate: closing effects if activity paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeEffects()V

    .line 1955
    :cond_1
    return-void

    .line 1927
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 1929
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    if-eqz v0, :cond_3

    .line 1930
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->saveVideo()V

    .line 1931
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 1932
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v0, :cond_4

    .line 1933
    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 1939
    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mEffectsDisplayResult:Z

    .line 1942
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1943
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    goto :goto_0

    .line 1935
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    goto :goto_1

    .line 1945
    :cond_5
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v3}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    .prologue
    .line 1432
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1435
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 1436
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 1438
    :cond_0
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .param p1, "full"    # Z

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->onFullScreenChanged(Z)V

    .line 2195
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 2196
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_0

    .line 2197
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 2201
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    .prologue
    .line 1443
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1444
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1446
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 1449
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0b02b7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1034
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1055
    :goto_0
    return v0

    .line 1038
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1055
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1040
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1041
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->clickShutter()V

    goto :goto_0

    .line 1046
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1047
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->clickShutter()V

    goto :goto_0

    .line 1052
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1038
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1060
    packed-switch p1, :pswitch_data_0

    .line 1065
    :goto_0
    return v0

    .line 1062
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoUI;->pressShutter(Z)V

    .line 1063
    const/4 v0, 0x1

    goto :goto_0

    .line 1060
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaSaveServiceConnected(Lcom/android/camera/MediaSaveService;)V
    .locals 0
    .param p1, "s"    # Lcom/android/camera/MediaSaveService;

    .prologue
    .line 2318
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x7

    .line 512
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v0

    .line 515
    .local v0, "newOrientation":I
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    if-eq v1, v0, :cond_2

    .line 516
    iput v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 522
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showTapToSnapshotToast()V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 0

    .prologue
    .line 1009
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 964
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 966
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 971
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 976
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectDisplay()V

    .line 988
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releasePreviewResources()V

    .line 990
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 994
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetScreenOn()V

    .line 996
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 998
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 999
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1001
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 1002
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 1005
    return-void

    .line 968
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 969
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    goto :goto_0

    .line 985
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    goto :goto_1
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2081
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 601
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 753
    iput v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 755
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 757
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v0, :cond_5

    .line 758
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetEffect()Z

    .line 759
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->openCamera()V

    .line 760
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0b0247

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 764
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mCameraDisabled:Z

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0b0248

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 768
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 769
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 770
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/VideoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoModule$5;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 782
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 784
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 787
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 789
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 791
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_4

    .line 792
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    .line 793
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 796
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 798
    const-string v0, "Camera"

    const-string v1, "VideoModule"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    goto :goto_1
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 746
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 558
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 559
    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 560
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 553
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPlayVideoActivity()V

    .line 547
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 6

    .prologue
    .line 2005
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2037
    :goto_0
    return-void

    .line 2006
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v3

    .line 2009
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, v2, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2036
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2011
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2013
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2016
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateEffectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 2018
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2019
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mCaptureTimeLapse:Z

    invoke-virtual {v2, v4}, Lcom/android/camera/VideoUI;->showTimeLapseUI(Z)V

    .line 2021
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2022
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_3

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    if-eq v2, v4, :cond_5

    .line 2024
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2025
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2030
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2031
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2035
    :goto_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Landroid/hardware/Camera$Parameters;Lcom/android/camera/ComboPreferences;)V

    .line 2036
    monitor-exit v3

    goto :goto_0

    .line 2027
    :cond_4
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 2028
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    goto :goto_1

    .line 2033
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->onShowSwitcherPopup()V

    .line 2313
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 609
    .local v0, "stop":Z
    if-eqz v0, :cond_3

    .line 610
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()V

    .line 614
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    .line 619
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 620
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 612
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->setShutterPressed(Z)V

    .line 628
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 444
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    new-instance v3, Lcom/android/camera/ui/RotateTextToast;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0b02d1

    iget v6, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v3}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getMediaSaveService()Lcom/android/camera/MediaSaveService;

    move-result-object v2

    .line 451
    .local v2, "s":Lcom/android/camera/MediaSaveService;
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->effectsActive()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/MediaSaveService;->isQueueFull()Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v3, :cond_2

    .line 457
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v5}, Lcom/android/camera/VideoUI;->dismissPopup(Z)V

    goto :goto_0

    .line 462
    :cond_2
    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    iget v4, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v1

    .line 463
    .local v1, "rotation":I
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 464
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/LocationManager;

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 465
    .local v0, "loc":Landroid/location/Location;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 466
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 468
    const-string v3, "CAM_VideoModule"

    const-string v4, "Video snapshot start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, v3, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v4, Lcom/android/camera/VideoModule$JpegPictureCallback;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/VideoModule;Landroid/location/Location;)V

    invoke-virtual {v3, v6, v6, v6, v4}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 470
    invoke-virtual {p0, v5}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 471
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 472
    const-string v3, "Camera"

    const-string v4, "CaptureDone"

    const-string v5, "VideoSnapshot"

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 477
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1013
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->keepScreenOnAwhile()V

    .line 1016
    :cond_0
    return-void
.end method

.method public onZoomChanged(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 818
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 826
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return p1

    .line 819
    .restart local p1    # "index":I
    :cond_1
    iput p1, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    .line 820
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/VideoModule;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 823
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 824
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 825
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result p1

    goto :goto_0
.end method

.method protected setCameraId(I)V
    .locals 3

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 2041
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

    .line 2042
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 2172
    :cond_0
    :goto_0
    return-void

    .line 2164
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2165
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2166
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/camera/CameraScreenNail;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 2170
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/camera/VideoUI;->enableShutter(Z)V

    goto :goto_0

    .line 2168
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoUI;->showPreviewBorder(Z)V

    goto :goto_1

    .line 2170
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 890
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 891
    return-void
.end method

.method public updateCameraAppView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2176
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2190
    :cond_0
    :goto_0
    return-void

    .line 2179
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_3

    .line 2180
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2181
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    goto :goto_0

    .line 2184
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    .line 2185
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    goto :goto_0

    .line 2186
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    if-eqz v0, :cond_0

    .line 2187
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRestoreFlash:Z

    .line 2188
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    goto :goto_0
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 2279
    const/4 v0, 0x1

    return v0
.end method
