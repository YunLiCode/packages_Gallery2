.class public Lcom/google/android/apps/lightcycle/LightCycleApp;
.super Ljava/lang/Object;
.source "LightCycleApp.java"


# static fields
.field private static appVersion:Ljava/lang/String;

.field private static cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "999"

    sput-object v0, Lcom/google/android/apps/lightcycle/LightCycleApp;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/apps/lightcycle/LightCycleApp;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getCameraUtility()Lcom/google/android/apps/lightcycle/camera/CameraUtility;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/apps/lightcycle/LightCycleApp;->cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    return-object v0
.end method

.method public static initLightCycleNative()V
    .locals 5

    .prologue
    .line 50
    new-instance v2, Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    const/16 v3, 0x140

    const/16 v4, 0xf0

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;-><init>(II)V

    sput-object v2, Lcom/google/android/apps/lightcycle/LightCycleApp;->cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    .line 52
    sget-object v2, Lcom/google/android/apps/lightcycle/LightCycleApp;->cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getPreviewSize()Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v1

    .line 53
    .local v1, "previewSize":Lcom/google/android/apps/lightcycle/util/Size;
    sget-object v2, Lcom/google/android/apps/lightcycle/LightCycleApp;->cameraUtil:Lcom/google/android/apps/lightcycle/camera/CameraUtility;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/camera/CameraUtility;->getFieldOfViewDegrees()F

    move-result v0

    .line 56
    .local v0, "fov":F
    iget v2, v1, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    iget v3, v1, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->InitNative(IIFZ)V

    .line 58
    return-void
.end method
