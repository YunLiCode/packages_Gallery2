.class public Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;
.super Ljava/lang/Object;
.source "DeviceOrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;
    }
.end annotation


# instance fields
.field private initialized:Z

.field private isLandscape:Z

.field private landscapeNatural:Z

.field private lockedRotation:I

.field private orientationAngleDegrees:F

.field private final sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;


# direct methods
.method public constructor <init>(Landroid/view/Display;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 5
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    .line 54
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->initialized:Z

    .line 64
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 65
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->initialized:Z

    .line 66
    iput v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    .line 67
    iget v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    .line 71
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 73
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 75
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 76
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    if-nez v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->landscapeNatural:Z

    .line 78
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->update()V

    .line 79
    return-void

    .restart local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    move v1, v2

    .line 76
    goto :goto_0
.end method

.method private static normalizeAngle(F)F
    .locals 2
    .param p0, "angle"    # F

    .prologue
    const/high16 v1, 0x43b40000

    .line 180
    const/high16 v0, 0x43340000

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 181
    sub-float/2addr p0, v1

    .line 185
    .end local p0    # "angle":F
    :cond_0
    :goto_0
    return p0

    .line 182
    .restart local p0    # "angle":F
    :cond_1
    const/high16 v0, -0x3d4c0000

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 183
    add-float/2addr p0, v1

    goto :goto_0
.end method

.method private orientationChanged(Lcom/google/android/apps/lightcycle/math/Vector3;)Z
    .locals 5
    .param p1, "gravity"    # Lcom/google/android/apps/lightcycle/math/Vector3;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3fc00000

    .line 168
    iget-boolean v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->landscapeNatural:Z

    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p1, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getDisplayInitialOrientationDegrees()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    return v0
.end method

.method public getOrientation()Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-nez v1, :cond_0

    .line 134
    const-string v1, "LightCycle"

    const-string v2, "Sensor reader is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x0

    .line 142
    :goto_0
    return-object v1

    .line 140
    :cond_0
    iget v1, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    iget v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 141
    .local v0, "relativeAngle":F
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->normalizeAngle(F)F

    move-result v0

    .line 142
    new-instance v1, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;

    iget v2, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;-><init>(FFF)V

    goto :goto_0
.end method

.method public setInitialOrientation()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->update()V

    .line 157
    iget v0, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->lockedRotation:I

    .line 158
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 88
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->isFilteredAccelerationInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 90
    :cond_0
    const-string v3, "LightCycle"

    const-string v4, "Sensor reader is not initialized."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getFilteredAcceleration()Lcom/google/android/apps/lightcycle/math/Vector3;

    move-result-object v0

    .line 94
    .local v0, "gravity":Lcom/google/android/apps/lightcycle/math/Vector3;
    const/high16 v1, 0x3fc00000

    .line 96
    .local v1, "kComparisonFactor":F
    const/4 v2, 0x0

    .line 97
    .local v2, "needsToUpdateOrientation":Z
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->initialized:Z

    if-nez v3, :cond_6

    .line 98
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->landscapeNatural:Z

    if-nez v3, :cond_5

    move v3, v4

    :goto_1
    iget v6, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    move v5, v4

    :cond_3
    xor-int/2addr v3, v5

    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    .line 100
    const/4 v2, 0x1

    .line 101
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->initialized:Z

    .line 107
    :cond_4
    :goto_2
    if-eqz v2, :cond_1

    .line 108
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    iget-boolean v4, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->landscapeNatural:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_9

    .line 109
    iget v3, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->x:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_8

    .line 110
    const/high16 v3, 0x42b40000

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    .line 121
    :goto_3
    iget v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->normalizeAngle(F)F

    move-result v3

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    goto :goto_0

    :cond_5
    move v3, v5

    .line 98
    goto :goto_1

    .line 102
    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationChanged(Lcom/google/android/apps/lightcycle/math/Vector3;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    if-nez v3, :cond_7

    :goto_4
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->isLandscape:Z

    .line 104
    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    move v4, v5

    .line 103
    goto :goto_4

    .line 112
    :cond_8
    const/high16 v3, -0x3d4c0000

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    goto :goto_3

    .line 115
    :cond_9
    iget v3, v0, Lcom/google/android/apps/lightcycle/math/Vector3;->y:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_a

    .line 116
    iput v8, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    goto :goto_3

    .line 118
    :cond_a
    const/high16 v3, 0x43340000

    iput v3, p0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->orientationAngleDegrees:F

    goto :goto_3
.end method
