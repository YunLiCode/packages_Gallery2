.class Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;
.super Ljava/lang/Object;
.source "CameraApiProxyAndroidImpl.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/camera/CameraApiProxy$CameraProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraProxyAndroidImpl"
.end annotation


# instance fields
.field private camera:Lcom/android/camera/CameraManager$CameraProxy;

.field final synthetic this$0:Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0
    .param p2, "camera"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->this$0:Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 32
    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 61
    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->this$0:Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;

    # getter for: Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;->mCanDisableShutterSound:Z
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;->access$000(Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->enableShutterSound(Z)V

    .line 107
    :cond_0
    return-void
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    .line 40
    :cond_0
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 94
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 50
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 71
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 82
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->waitDone()Z

    .line 77
    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->waitDone()Z

    .line 89
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->waitDone()Z

    .line 56
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 66
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/camera/CameraApiProxyAndroidImpl$CameraProxyAndroidImpl;->camera:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 100
    return-void
.end method
