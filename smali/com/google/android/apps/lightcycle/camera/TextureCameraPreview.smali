.class public Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;
.super Ljava/lang/Object;
.source "TextureCameraPreview.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/camera/CameraPreview;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

.field private final mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

.field private final mEnableHdr:Z

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mUsePreviewBuffers:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/camera/CameraUtility;Z)V
    .locals 2
    .param p1, "cameraUtil"    # Lcom/google/android/apps/lightcycle/camera/CameraUtility;
    .param p2, "enableHdr"    # Z

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    .line 37
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 46
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    .line 47
    iput-boolean p2, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mEnableHdr:Z

    .line 48
    return-void
.end method


# virtual methods
.method public getCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    return-object v0
.end method

.method public getReportedHorizontalFovDegrees()F
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    return v0
.end method

.method public initCamera(Landroid/hardware/Camera$PreviewCallback;IIZI)Lcom/google/android/apps/lightcycle/util/Size;
    .locals 8
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;
    .param p2, "desiredPreviewWidth"    # I
    .param p3, "desiredPreviewHeight"    # I
    .param p4, "usePreviewBuffers"    # Z
    .param p5, "desiredPhotoWidth"    # I

    .prologue
    const/4 v5, 0x0

    .line 77
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 78
    iput-boolean p4, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mUsePreviewBuffers:Z

    .line 79
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    if-nez v3, :cond_0

    .line 80
    invoke-static {}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->instance()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;->openBackCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    if-nez v3, :cond_1

    .line 83
    const-string v3, "LightCycle"

    const-string v4, "Camera is null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v3, 0x0

    .line 137
    :goto_0
    return-object v3

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v3, v5}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->enableShutterSound(Z)V

    .line 90
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v3}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 91
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFocusMode(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFlashMode(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 96
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getPreviewSize()Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    .line 98
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v3, v3, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    iget v4, v4, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 100
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->setFrameRate(Landroid/hardware/Camera$Parameters;)V

    .line 101
    invoke-virtual {v2, v5, v5}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 102
    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 103
    invoke-virtual {p0, v2, p5}, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->setPictureWidth(Landroid/hardware/Camera$Parameters;I)V

    .line 105
    invoke-virtual {v2, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 107
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mEnableHdr:Z

    if-eqz v3, :cond_2

    .line 108
    const-string v3, "LightCycle"

    const-string v4, "Setting scene mode to HDR."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v3, "hdr"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v3, v2}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 117
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v1

    .line 118
    .local v1, "fov":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field of view reported = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 121
    const-string v3, "Setting the preview display."

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 124
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mUsePreviewBuffers:Z

    if-eqz v3, :cond_3

    .line 131
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->allocateBuffers(Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;Lcom/google/android/apps/lightcycle/util/Size;ILandroid/hardware/Camera$PreviewCallback;)V

    .line 137
    :goto_2
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mPreviewSize:Lcom/google/android/apps/lightcycle/util/Size;

    goto/16 :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_2
.end method

.method public releaseCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->stopPreview()V

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0, v2}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 188
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->enableShutterSound(Z)V

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->release()V

    .line 191
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    .line 193
    :cond_0
    return-void
.end method

.method public returnCallbackBuffer([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mUsePreviewBuffers:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->addCallbackBuffer([B)V

    .line 177
    :cond_0
    return-void
.end method

.method public setController(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0
    .param p1, "controller"    # Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    .prologue
    .line 61
    return-void
.end method

.method public setPictureWidth(Landroid/hardware/Camera$Parameters;I)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "desiredWidth"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getCameraSizeUtility()Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/lightcycle/camera/CameraSizeUtility;->setPictureWidth(Landroid/hardware/Camera$Parameters;I)V

    .line 198
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/TextureCameraPreview;->mCamera:Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;->startPreview()V

    .line 144
    return-void
.end method
