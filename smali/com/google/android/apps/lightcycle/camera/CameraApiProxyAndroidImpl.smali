.class public Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;
.super Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;
.source "CameraApiProxyAndroidImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;
    }
.end annotation


# instance fields
.field private final mCanDisableShutterSound:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxy;-><init>()V

    .line 110
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;->canDisableShutterSoundInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;->mCanDisableShutterSound:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;->mCanDisableShutterSound:Z

    return v0
.end method

.method private canDisableShutterSoundInternal()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 143
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v3

    .line 148
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 149
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 150
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 151
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 152
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_2

    .line 153
    iget-boolean v3, v0, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    goto :goto_0

    .line 150
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public canDisableShutterSound()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;->mCanDisableShutterSound:Z

    return v0
.end method

.method public openBackCamera()Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;
    .locals 5

    .prologue
    .line 116
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 117
    .local v3, "numberOfCameras":I
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 118
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v0, 0x0

    .line 120
    .local v0, "camera":Lcom/android/camera/CameraManager$CameraProxy;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 121
    :try_start_0
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 122
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_1

    .line 123
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :cond_0
    :goto_1
    if-nez v0, :cond_2

    .line 131
    const/4 v4, 0x0

    .line 133
    :goto_2
    return-object v4

    .line 120
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_2
    new-instance v4, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;

    invoke-direct {v4, p0, v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;-><init>(Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;Lcom/android/camera/CameraManager$CameraProxy;)V

    goto :goto_2

    .line 127
    :catch_0
    move-exception v4

    goto :goto_1
.end method
