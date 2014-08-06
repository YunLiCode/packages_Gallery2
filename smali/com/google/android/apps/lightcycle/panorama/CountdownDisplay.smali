.class public Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;
.super Ljava/lang/Object;
.source "CountdownDisplay.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFinished:Z

.field private mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

.field private mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mLightOnShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

.field private mLightStates:[Z

.field private mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private mPositionsLandscape:[Landroid/graphics/PointF;

.field private mPositionsPortrait:[Landroid/graphics/PointF;

.field private mRunning:Z

.field private mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private mStartTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array v0, v1, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsPortrait:[Landroid/graphics/PointF;

    .line 48
    new-array v0, v1, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsLandscape:[Landroid/graphics/PointF;

    .line 49
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightStates:[Z

    .line 53
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    .line 54
    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mFinished:Z

    .line 60
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private turnOffLights()V
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightStates:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method private updateLights()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mStartTime:J

    sub-long v1, v7, v9

    .line 187
    .local v1, "elapsed":J
    const-wide/16 v7, 0x320

    div-long v7, v1, v7

    long-to-int v7, v7

    add-int/lit8 v6, v7, 0x1

    .line 188
    .local v6, "numLit":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 189
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightStates:[Z

    aput-boolean v11, v7, v3

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_0
    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    .line 192
    iput-boolean v12, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    .line 193
    iput-boolean v11, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mFinished:Z

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mStartTime:J

    sub-long v1, v7, v9

    .line 195
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v7}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getNumGyroSamples()I

    move-result v5

    .line 196
    .local v5, "numGyroSamples":I
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v7}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAndResetGyroData()[F

    move-result-object v4

    .line 197
    .local v4, "integratedGyro":[F
    invoke-static {v4, v5, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->EndGyroCalibration([FIJ)[F

    move-result-object v0

    .line 199
    .local v0, "bias":[F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bias : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v0, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 200
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v7, v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setGyroBias([F)V

    .line 202
    .end local v0    # "bias":[F
    .end local v4    # "integratedGyro":[F
    .end local v5    # "numGyroSamples":I
    :cond_1
    return-void
.end method


# virtual methods
.method public draw([FII)V
    .locals 7
    .param p1, "orthographicTransform"    # [F
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I

    .prologue
    const/16 v6, 0x303

    const/16 v5, 0x302

    .line 213
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->updateLights()V

    .line 215
    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightStates:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsLandscape:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsPortrait:[Landroid/graphics/PointF;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 223
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V

    .line 218
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsLandscape:[Landroid/graphics/PointF;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsPortrait:[Landroid/graphics/PointF;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 227
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 228
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    const v3, 0x3e99999a

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 229
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    .line 235
    .end local v0    # "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    :cond_1
    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 236
    return-void
.end method

.method public finished()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mFinished:Z

    return v0
.end method

.method public freeGLMemory()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->freeGLMemory()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOnShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOnShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;->freeGLMemory()V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->freeGLMemory()V

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->freeGLMemory()V

    .line 255
    :cond_3
    return-void
.end method

.method public init(IILcom/google/android/apps/lightcycle/sensor/SensorReader;Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V
    .locals 17
    .param p1, "surfaceWidthPixels"    # I
    .param p2, "surfaceHeightPixels"    # I
    .param p3, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;
    .param p4, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .prologue
    .line 74
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 75
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 77
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mContext:Landroid/content/Context;

    const v13, 0x7f020199

    invoke-static {v12, v13}, Lcom/google/android/apps/lightcycle/util/UiUtil;->getDrawableDimensions(Landroid/content/Context;I)Lcom/google/android/apps/lightcycle/util/Size;

    move-result-object v8

    .line 83
    .local v8, "targetSize":Lcom/google/android/apps/lightcycle/util/Size;
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    move/from16 v0, p2

    int-to-float v12, v0

    move/from16 v0, p1

    int-to-float v13, v0

    div-float v11, v12, v13

    .line 87
    .local v11, "widthScale":F
    :goto_0
    const v12, 0x3d11eb85

    mul-float/2addr v12, v11

    move/from16 v0, p1

    int-to-float v13, v0

    mul-float/2addr v12, v13

    iget v13, v8, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    int-to-float v13, v13

    div-float v6, v12, v13

    .line 91
    .local v6, "scale":F
    new-instance v12, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v12, v13}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 92
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mContext:Landroid/content/Context;

    const v14, 0x7f020198

    const/high16 v15, -0x40800000

    const/high16 v16, 0x3f800000

    invoke-virtual/range {v12 .. v16}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 93
    new-instance v12, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v12, v13}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mContext:Landroid/content/Context;

    const v14, 0x7f020197

    const/high16 v15, -0x40800000

    const/high16 v16, 0x3f800000

    invoke-virtual/range {v12 .. v16}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 97
    :try_start_0
    new-instance v12, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-direct {v12}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    .line 98
    new-instance v12, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-direct {v12}, Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOnShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOnShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    if-nez v12, :cond_1

    .line 104
    :cond_0
    const-string v12, "Failed to initialize - shader is null."

    invoke-static {v12}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 108
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOn:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOnShader:Lcom/google/android/apps/lightcycle/opengl/SimpleTextureShader;

    invoke-virtual {v12, v13}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOff:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightOffShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v12, v13}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 112
    move/from16 v0, p1

    int-to-float v12, v0

    const v13, 0x3d68f5c3

    mul-float/2addr v12, v13

    mul-float v7, v12, v11

    .line 114
    .local v7, "spacingPixels":F
    move/from16 v0, p1

    int-to-float v12, v0

    const v13, 0x3d11eb85

    mul-float/2addr v12, v13

    mul-float v5, v12, v11

    .line 116
    .local v5, "lightWidthPixels":F
    const/high16 v12, 0x40400000

    mul-float/2addr v12, v5

    const/high16 v13, 0x40000000

    mul-float/2addr v13, v7

    add-float v10, v12, v13

    .line 120
    .local v10, "totalWidth":F
    move/from16 v0, p1

    int-to-float v12, v0

    sub-float/2addr v12, v10

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    const/high16 v13, 0x40000000

    div-float v13, v5, v13

    add-float v4, v12, v13

    .line 121
    .local v4, "left":F
    move/from16 v0, p2

    int-to-float v12, v0

    const/high16 v13, 0x3f400000

    mul-float v9, v12, v13

    .line 122
    .local v9, "top":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/4 v12, 0x3

    if-ge v3, v12, :cond_3

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsPortrait:[Landroid/graphics/PointF;

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v13, v12, v3

    .line 124
    add-float v12, v5, v7

    add-float/2addr v4, v12

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mLightStates:[Z

    const/4 v13, 0x0

    aput-boolean v13, v12, v3

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 83
    .end local v3    # "i":I
    .end local v4    # "left":F
    .end local v5    # "lightWidthPixels":F
    .end local v6    # "scale":F
    .end local v7    # "spacingPixels":F
    .end local v9    # "top":F
    .end local v10    # "totalWidth":F
    .end local v11    # "widthScale":F
    :cond_2
    const/high16 v11, 0x3f800000

    goto/16 :goto_0

    .line 99
    .restart local v6    # "scale":F
    .restart local v11    # "widthScale":F
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    const-string v12, "LightCycle"

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    .end local v2    # "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    .restart local v3    # "i":I
    .restart local v4    # "left":F
    .restart local v5    # "lightWidthPixels":F
    .restart local v7    # "spacingPixels":F
    .restart local v9    # "top":F
    .restart local v10    # "totalWidth":F
    :cond_3
    move/from16 v0, p1

    int-to-float v12, v0

    const/high16 v13, 0x3f400000

    mul-float v4, v12, v13

    .line 130
    move/from16 v0, p2

    int-to-float v12, v0

    add-float/2addr v12, v10

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    const/high16 v13, 0x40000000

    div-float v13, v5, v13

    sub-float v9, v12, v13

    .line 131
    const/4 v3, 0x0

    :goto_3
    const/4 v12, 0x3

    if-ge v3, v12, :cond_4

    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mPositionsLandscape:[Landroid/graphics/PointF;

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v13, v12, v3

    .line 133
    add-float v12, v5, v7

    sub-float/2addr v9, v12

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 135
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    .line 162
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mFinished:Z

    .line 163
    return-void
.end method

.method public running()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    return v0
.end method

.method public startCountdown()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->resetGyroBias()V

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAndResetGyroData()[F

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mStartTime:J

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getImuOrientationDegrees()F

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->StartGyroCalibration(F)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mFinished:Z

    .line 148
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->turnOffLights()V

    .line 149
    return-void
.end method

.method public stopCountdown()V
    .locals 8

    .prologue
    .line 152
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getNumGyroSamples()I

    move-result v3

    .line 153
    .local v3, "numGyroSamples":I
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mSensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAndResetGyroData()[F

    move-result-object v2

    .line 154
    .local v2, "integratedGyro":[F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mStartTime:J

    sub-long v0, v4, v6

    .line 155
    .local v0, "elapsed":J
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->EndGyroCalibration([FIJ)[F

    .line 157
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/CountdownDisplay;->mRunning:Z

    .line 158
    return-void
.end method
