.class Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;
.super Ljava/lang/Object;
.source "LightCycleController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/LightCycleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "imageData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v4, 0x1

    .line 568
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilterOutput()[F

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->get3x3Matrix([F)[F

    move-result-object v1

    # invokes: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->writeOrientationString([F)V
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[F)V

    .line 573
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->photosTaken:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/16 v5, 0x640

    .line 578
    .local v5, "desiredPhotoWidth":I
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mCameraPreview:Lcom/google/android/apps/lightcycle/camera/CameraPreview;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$300(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/camera/CameraPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1400(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    const/16 v2, 0x140

    const/16 v3, 0xf0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/camera/CameraPreview;->initCamera(Landroid/hardware/Camera$PreviewCallback;IIZI)Lcom/google/android/apps/lightcycle/util/Size;

    .line 582
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    # invokes: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->writePictureToFileAsync([B)V
    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;[B)V

    .line 584
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mTakingPhoto:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$702(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z

    .line 587
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$500(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAccelInPlaneRotationRadians()F

    move-result v6

    .line 590
    .local v6, "angle":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    # setter for: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->mFirstFrame:Z
    invoke-static {v0, v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1102(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Z)Z

    .line 591
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/LightCycleController$8;->this$0:Lcom/google/android/apps/lightcycle/panorama/LightCycleController;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->startPreview(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleController;->access$1600(Lcom/google/android/apps/lightcycle/panorama/LightCycleController;Ljava/lang/Object;)V

    .line 592
    return-void

    .line 573
    .end local v5    # "desiredPhotoWidth":I
    .end local v6    # "angle":F
    :cond_0
    const/16 v5, 0x4b0

    goto :goto_0
.end method
