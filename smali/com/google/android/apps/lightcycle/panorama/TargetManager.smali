.class public Lcom/google/android/apps/lightcycle/panorama/TargetManager;
.super Ljava/lang/Object;
.source "TargetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/TargetManager$1;,
        Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;,
        Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;
    }
.end annotation


# static fields
.field private static final MAX_ANGLE_THRESHOLD_RAD:F

.field private static final MIN_ANGLE_THRESHOLD_RAD:F


# instance fields
.field private activeTargetAlpha:F

.field private activeTargetIndex:I

.field private alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

.field private currentDeviceTransform:[F

.field private deviceOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private halfSurfaceHeight:F

.field private halfSurfaceWidth:F

.field private hitTargetAlpha:F

.field private hitTargetTransform:[F

.field private mAnimateAvailableTargets:Z

.field private mAnimateFirstTargetFadeIn:Z

.field private mAnimatedTargetAlpha:F

.field private mAnimatedTargetStartTime:J

.field private mContext:Landroid/content/Context;

.field private mHitTargetQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetInRange:Z

.field private mTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation
.end field

.field private mUpdateTargetCount:I

.field private nearestSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private projected:[F

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field private targetHitAngleDeg:F

.field private targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

.field private targetSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private tempTransform:[F

.field private transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

.field private unitVector:[F

.field private viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private viewfinderActivatedSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private viewfinderCoord:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/high16 v0, 0x41b00000

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->degreesToRadians(F)F

    move-result v0

    sput v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MAX_ANGLE_THRESHOLD_RAD:F

    .line 72
    const/high16 v0, 0x41400000

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->degreesToRadians(F)F

    move-result v0

    sput v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mHitTargetQueue:Ljava/util/ArrayList;

    .line 150
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->unitVector:[F

    .line 151
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    .line 152
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    .line 153
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    .line 158
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargetInRange:Z

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetIndex:I

    .line 162
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    .line 163
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    .line 164
    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    .line 167
    const/high16 v0, 0x40000000

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetHitAngleDeg:F

    .line 170
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->deviceOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 171
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 174
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;-><init>(Lcom/google/android/apps/lightcycle/panorama/TargetManager;Lcom/google/android/apps/lightcycle/panorama/TargetManager$1;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    .line 177
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimateAvailableTargets:Z

    .line 178
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimateFirstTargetFadeIn:Z

    .line 179
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetStartTime:J

    .line 181
    iput v3, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mUpdateTargetCount:I

    .line 185
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    .line 186
    return-void

    .line 150
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000
        0x3f800000
    .end array-data
.end method

.method private computeProximityAlphaAndScale([FLcom/google/android/apps/lightcycle/math/Vector3;Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;)V
    .locals 11
    .param p1, "targetTransform"    # [F
    .param p2, "camVector"    # Lcom/google/android/apps/lightcycle/math/Vector3;
    .param p3, "pair"    # Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    .prologue
    const v10, 0x3ecccccd

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000

    .line 555
    new-instance v4, Lcom/google/android/apps/lightcycle/math/Vector3;

    const/16 v5, 0x8

    aget v5, p1, v5

    neg-float v5, v5

    const/16 v6, 0x9

    aget v6, p1, v6

    neg-float v6, v6

    const/16 v7, 0xa

    aget v7, p1, v7

    neg-float v7, v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>(FFF)V

    .line 557
    .local v4, "targetVector":Lcom/google/android/apps/lightcycle/math/Vector3;
    invoke-virtual {v4, p2}, Lcom/google/android/apps/lightcycle/math/Vector3;->dot(Lcom/google/android/apps/lightcycle/math/Vector3;)F

    move-result v2

    .line 558
    .local v2, "dotProduct":F
    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 561
    .local v0, "angle":F
    sget v5, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    .line 562
    iput v8, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    .line 563
    iput v8, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    .line 582
    :goto_0
    return-void

    .line 566
    :cond_0
    sget v5, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MAX_ANGLE_THRESHOLD_RAD:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 568
    sget v5, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MAX_ANGLE_THRESHOLD_RAD:F

    sget v6, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    sub-float v1, v5, v6

    .line 569
    .local v1, "angleRange":F
    sget v5, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->MIN_ANGLE_THRESHOLD_RAD:F

    sub-float v5, v0, v5

    div-float/2addr v5, v1

    sub-float v3, v8, v5

    .line 570
    .local v3, "ratio":F
    mul-float v5, v3, v8

    add-float/2addr v5, v9

    iput v5, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    .line 573
    const v5, 0x3f19999a

    mul-float/2addr v5, v3

    add-float/2addr v5, v10

    iput v5, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    goto :goto_0

    .line 578
    .end local v1    # "angleRange":F
    .end local v3    # "ratio":F
    :cond_1
    iput v9, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    .line 579
    iput v10, p3, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    goto :goto_0
.end method

.method private static degreesToRadians(F)F
    .locals 1
    .param p0, "degrees"    # F

    .prologue
    .line 687
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method private drawHitTarget([F[F)V
    .locals 2
    .param p1, "globalTransform"    # [F
    .param p2, "orthographicTransform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    if-nez v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->bind()V

    .line 623
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 624
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawTarget([F[F[FLcom/google/android/apps/lightcycle/opengl/Sprite;)V

    .line 628
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    const v1, 0x3f666666

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    .line 631
    iget v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    const v1, 0x3d4ccccd

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 632
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    goto :goto_0
.end method

.method private drawTarget([F[F[FLcom/google/android/apps/lightcycle/opengl/Sprite;)V
    .locals 6
    .param p1, "globalTransform"    # [F
    .param p2, "orthographicTransform"    # [F
    .param p3, "targetTransform"    # [F
    .param p4, "sprite"    # Lcom/google/android/apps/lightcycle/opengl/Sprite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 601
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    move-object v2, p1

    move v3, v1

    move-object v4, p3

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 603
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->unitVector:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 607
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->normalize([F)V

    .line 608
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    aget v0, v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    add-float v2, v0, v1

    .line 609
    .local v2, "u":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    add-float v3, v0, v1

    .line 613
    .local v3, "v":F
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    move-object v0, p4

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V

    .line 614
    return-void
.end method

.method private drawViewfinder([F)V
    .locals 7
    .param p1, "orthographicTransform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x42b40000

    const v0, 0x3ecccccd

    const/4 v4, 0x0

    .line 639
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->deviceOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v5}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getOrientation()Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;

    move-result-object v5

    iget v2, v5, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->nearestOrthoAngleDegrees:F

    .line 641
    .local v2, "nearestRotation":F
    cmpl-float v5, v2, v3

    if-eqz v5, :cond_0

    const/high16 v5, -0x3d4c0000

    cmpl-float v5, v2, v5

    if-nez v5, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 644
    .local v1, "isLandscape":Z
    :goto_0
    const/16 v5, 0xbe2

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 645
    const/16 v5, 0x302

    const/16 v6, 0x303

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 646
    if-eqz v1, :cond_3

    .line 648
    .local v3, "viewFinderAngle":F
    :goto_1
    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    const/high16 v5, 0x3f800000

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 652
    .local v0, "alpha":F
    :cond_1
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 653
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 654
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderCoord:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderCoord:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, p1, v5, v6, v3}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotatedCentered([FFFF)V

    .line 656
    return-void

    .line 641
    .end local v0    # "alpha":F
    .end local v1    # "isLandscape":Z
    .end local v3    # "viewFinderAngle":F
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "isLandscape":Z
    :cond_3
    move v3, v4

    .line 646
    goto :goto_1
.end method

.method private normalize([F)V
    .locals 4
    .param p1, "vec4"    # [F

    .prologue
    const/4 v3, 0x3

    .line 659
    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p1, v3

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 660
    const/4 v0, 0x1

    aget v1, p1, v0

    aget v2, p1, v3

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 661
    const/4 v0, 0x2

    aget v1, p1, v0

    aget v2, p1, v3

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 662
    const/high16 v0, 0x3f800000

    aput v0, p1, v3

    .line 663
    return-void
.end method

.method private setRotationTranspose([FI[F)V
    .locals 3
    .param p1, "r"    # [F
    .param p2, "offset"    # I
    .param p3, "t"    # [F

    .prologue
    const/4 v2, 0x0

    .line 668
    const/4 v0, 0x0

    aget v1, p1, p2

    aput v1, p3, v0

    .line 669
    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    aput v1, p3, v0

    .line 670
    const/4 v0, 0x2

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    aput v1, p3, v0

    .line 671
    const/4 v0, 0x3

    aput v2, p3, v0

    .line 672
    const/4 v0, 0x4

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    aput v1, p3, v0

    .line 673
    const/4 v0, 0x5

    add-int/lit8 v1, p2, 0x4

    aget v1, p1, v1

    aput v1, p3, v0

    .line 674
    const/4 v0, 0x6

    add-int/lit8 v1, p2, 0x5

    aget v1, p1, v1

    aput v1, p3, v0

    .line 675
    const/4 v0, 0x7

    aput v2, p3, v0

    .line 676
    const/16 v0, 0x8

    add-int/lit8 v1, p2, 0x6

    aget v1, p1, v1

    aput v1, p3, v0

    .line 677
    const/16 v0, 0x9

    add-int/lit8 v1, p2, 0x7

    aget v1, p1, v1

    aput v1, p3, v0

    .line 678
    const/16 v0, 0xa

    add-int/lit8 v1, p2, 0x8

    aget v1, p1, v1

    aput v1, p3, v0

    .line 679
    const/16 v0, 0xb

    aput v2, p3, v0

    .line 680
    const/16 v0, 0xc

    aput v2, p3, v0

    .line 681
    const/16 v0, 0xd

    aput v2, p3, v0

    .line 682
    const/16 v0, 0xe

    aput v2, p3, v0

    .line 683
    const/16 v0, 0xf

    const/high16 v1, 0x3f800000

    aput v1, p3, v0

    .line 684
    return-void
.end method

.method private setTargetHitAngle()V
    .locals 6

    .prologue
    const v5, 0x3e32b8c2

    .line 585
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->getAngularVelocitySquaredRad()F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 587
    .local v2, "velRad":F
    const v4, 0x3f32b8c2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 588
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 589
    const/high16 v1, 0x3fc00000

    .line 590
    .local v1, "hitAngleRange":F
    const v3, 0x3f060a92

    .line 592
    .local v3, "velRange":F
    const/high16 v4, 0x40000000

    sub-float v5, v2, v5

    div-float/2addr v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    const v5, 0x3c8efa35

    mul-float v0, v4, v5

    .line 595
    .local v0, "hitAngleRadians":F
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetTargetHitAngleRadians(F)V

    .line 596
    return-void
.end method


# virtual methods
.method public drawTargetsOrthographic([F[F)V
    .locals 27
    .param p1, "globalTransform"    # [F
    .param p2, "orthographicTransform"    # [F

    .prologue
    .line 381
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetTargetInRange()I

    move-result v23

    .line 382
    .local v23, "nearest":I
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetIndex:I

    .line 383
    if-ltz v23, :cond_2

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargetInRange:Z

    .line 384
    if-ltz v23, :cond_3

    .line 385
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    const/high16 v3, 0x3f800000

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    sub-float/2addr v3, v4

    const v4, 0x3dcccccd

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    .line 391
    :goto_1
    const/high16 v16, 0x3f800000

    .line 395
    .local v16, "contrastFactor":F
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setTargetHitAngle()V

    .line 398
    new-instance v15, Lcom/google/android/apps/lightcycle/math/Vector3;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    neg-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    neg-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    const/16 v5, 0xa

    aget v4, v4, v5

    neg-float v4, v4

    invoke-direct {v15, v2, v3, v4}, Lcom/google/android/apps/lightcycle/math/Vector3;-><init>(FFF)V

    .line 403
    .local v15, "cameraVector":Lcom/google/android/apps/lightcycle/math/Vector3;
    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->bind()V

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setContrastFactor(F)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 410
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    neg-float v0, v2

    move/from16 v17, v0

    .line 414
    .local v17, "deviceRise":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    .line 416
    .local v24, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 417
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 418
    .local v6, "targetTransform":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 420
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->tempTransform:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->unitVector:[F

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->computeProximityAlphaAndScale([FLcom/google/android/apps/lightcycle/math/Vector3;Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    iget v0, v2, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->alpha:F

    move/from16 v25, v0

    .line 428
    .local v25, "targetAlpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->alphaScalePair:Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;

    iget v12, v2, Lcom/google/android/apps/lightcycle/panorama/TargetManager$AlphaScalePair;->scale:F

    .line 431
    .local v12, "targetScale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 432
    const/high16 v2, 0x3f400000

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 433
    const/high16 v12, 0x3f800000

    .line 466
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->normalize([F)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    add-float v9, v2, v3

    .line 474
    .local v9, "u":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->projected:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    add-float v10, v2, v3

    .line 478
    .local v10, "v":F
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v23

    if-ne v2, v0, :cond_9

    .line 483
    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    sub-float/2addr v2, v3

    mul-float v14, v2, v25

    .line 484
    .local v14, "alphaTarget":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    mul-float v13, v2, v25

    .line 485
    .local v13, "alphaNearest":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v2, v13}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 486
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    const/4 v11, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v2, v14}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 489
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    const/4 v11, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    goto/16 :goto_2

    .line 498
    .end local v6    # "targetTransform":[F
    .end local v9    # "u":F
    .end local v10    # "v":F
    .end local v12    # "targetScale":F
    .end local v13    # "alphaNearest":F
    .end local v14    # "alphaTarget":F
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v24    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;>;"
    .end local v25    # "targetAlpha":F
    :catchall_0
    move-exception v2

    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 506
    .end local v17    # "deviceRise":F
    :catch_0
    move-exception v18

    .line 507
    .local v18, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    .line 509
    .end local v18    # "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    :goto_4
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 510
    return-void

    .line 383
    .end local v15    # "cameraVector":Lcom/google/android/apps/lightcycle/math/Vector3;
    .end local v16    # "contrastFactor":F
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 388
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetAlpha:F

    goto/16 :goto_1

    .line 437
    .restart local v6    # "targetTransform":[F
    .restart local v12    # "targetScale":F
    .restart local v15    # "cameraVector":Lcom/google/android/apps/lightcycle/math/Vector3;
    .restart local v16    # "contrastFactor":F
    .restart local v17    # "deviceRise":F
    .restart local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    .restart local v22    # "i$":Ljava/util/Iterator;
    .restart local v24    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;>;"
    .restart local v25    # "targetAlpha":F
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimateAvailableTargets:Z

    if-eqz v2, :cond_1

    .line 438
    const/high16 v12, 0x3f800000

    .line 439
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 440
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimateFirstTargetFadeIn:Z

    if-eqz v2, :cond_8

    .line 441
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    const/high16 v3, 0x3f800000

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    sub-float/2addr v3, v4

    const v4, 0x3c23d70a

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    .line 443
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    const v3, 0x3f666666

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 444
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 445
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetStartTime:J

    .line 458
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    const v3, 0x3c23d70a

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 459
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    .line 460
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimateAvailableTargets:Z

    goto/16 :goto_3

    .line 447
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetStartTime:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x41cdcd6500000000L

    div-double v19, v2, v4

    .line 449
    .local v19, "elapsed":D
    const-wide/high16 v2, 0x3fe0000000000000L

    cmpl-double v2, v19, v2

    if-lez v2, :cond_7

    .line 450
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimateFirstTargetFadeIn:Z

    .line 452
    :cond_7
    const v2, 0x3f666666

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    goto :goto_5

    .line 456
    .end local v19    # "elapsed":D
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    const v3, 0x3f7c28f6

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    goto :goto_5

    .line 493
    .restart local v9    # "u":F
    .restart local v10    # "v":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->setAlpha(F)V

    .line 494
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    const/4 v11, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->drawRotated([FFFFF)V

    goto/16 :goto_2

    .line 498
    .end local v6    # "targetTransform":[F
    .end local v9    # "u":F
    .end local v10    # "v":F
    .end local v12    # "targetScale":F
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[F>;"
    .end local v25    # "targetAlpha":F
    :cond_a
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 501
    :try_start_4
    invoke-direct/range {p0 .. p2}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawHitTarget([F[F)V

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->drawViewfinder([F)V
    :try_end_4
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4
.end method

.method public finalizeHitTargets()V
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mHitTargetQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mHitTargetQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;

    .line 291
    .local v0, "hitTarget":Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;
    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;->mTransform:[F

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    .line 292
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    .line 295
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    iget v2, v0, Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .end local v0    # "hitTarget":Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;
    :cond_0
    return-void
.end method

.method public freeGLMemory()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;->freeGLMemory()V

    .line 696
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->freeGLMemory()V

    .line 698
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->freeGLMemory()V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderActivatedSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderActivatedSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->freeGLMemory()V

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->freeGLMemory()V

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v0, :cond_3

    .line 708
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->freeGLMemory()V

    .line 710
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v0, :cond_4

    .line 711
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->freeGLMemory()V

    .line 713
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v0, :cond_5

    .line 714
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->freeGLMemory()V

    .line 716
    :cond_5
    return-void
.end method

.method public init(II)V
    .locals 13
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .prologue
    const/high16 v12, 0x40800000

    const/high16 v11, 0x40000000

    const/high16 v10, 0x3f800000

    const/high16 v9, -0x40800000

    const/4 v8, 0x0

    .line 210
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 211
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 212
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02019a

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    const/high16 v4, 0x3f800000

    .line 218
    .local v4, "scale":F
    new-instance v5, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 219
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    const v7, 0x7f02019a

    invoke-virtual {v5, v6, v7, v9, v4}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 221
    new-instance v5, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 222
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    const v7, 0x7f020199

    invoke-virtual {v5, v6, v7, v9, v4}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 226
    :try_start_0
    new-instance v5, Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/shaders/TargetShader;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    .line 227
    new-instance v5, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    if-nez v5, :cond_0

    .line 232
    const-string v5, "Failed to create target shader"

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 234
    :cond_0
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-nez v5, :cond_1

    .line 235
    const-string v5, "Failed to create texture shader"

    invoke-static {v5}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 239
    :cond_1
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 240
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->nearestSpriteOrtho:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->targetShader:Lcom/google/android/apps/lightcycle/shaders/TargetShader;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 243
    int-to-float v5, p1

    div-float/2addr v5, v11

    iput v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceWidth:F

    .line 244
    int-to-float v5, p2

    div-float/2addr v5, v11

    iput v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->halfSurfaceHeight:F

    .line 246
    const/16 v5, 0x10

    new-array v2, v5, [F

    .line 247
    .local v2, "identity":[F
    invoke-static {v2, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 248
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v5, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 252
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    const v7, 0x7f020196

    invoke-virtual {v5, v6, v7, v12, v10}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 254
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 255
    new-instance v5, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v5}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderActivatedSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 256
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderActivatedSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mContext:Landroid/content/Context;

    const v7, 0x7f020195

    invoke-virtual {v5, v6, v7, v12, v10}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 258
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderActivatedSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->transparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 261
    new-instance v5, Landroid/graphics/Point;

    div-int/lit8 v6, p1, 0x2

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v7}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    div-int/lit8 v7, p2, 0x2

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewFinderSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v8}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->viewfinderCoord:Landroid/graphics/Point;

    .line 264
    return-void

    .line 228
    .end local v2    # "identity":[F
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 270
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 271
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 272
    .local v0, "identity":[F
    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 273
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimateAvailableTargets:Z

    .line 275
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimateFirstTargetFadeIn:Z

    .line 276
    const v1, 0x3dcccccd

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetAlpha:F

    .line 277
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimatedTargetStartTime:J

    .line 278
    iput v3, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mUpdateTargetCount:I

    .line 279
    return-void
.end method

.method public setCurrentOrientation([F)V
    .locals 0
    .param p1, "transform"    # [F

    .prologue
    .line 350
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->currentDeviceTransform:[F

    .line 351
    return-void
.end method

.method public setDeviceOrientationDetector(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V
    .locals 0
    .param p1, "detector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->deviceOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 360
    return-void
.end method

.method public setSensorReader(Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 0
    .param p1, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 370
    return-void
.end method

.method public updateTargets()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 303
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetDeletedTargets()[I

    move-result-object v0

    .line 304
    .local v0, "deletedTargets":[I
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNewTargets()[Lcom/google/android/apps/lightcycle/panorama/NewTarget;

    move-result-object v3

    .line 307
    .local v3, "newTargets":[Lcom/google/android/apps/lightcycle/panorama/NewTarget;
    iget v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mUpdateTargetCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mUpdateTargetCount:I

    if-lez v6, :cond_0

    .line 308
    iput-boolean v9, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mAnimateAvailableTargets:Z

    .line 312
    :cond_0
    if-eqz v0, :cond_3

    .line 313
    array-length v6, v0

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 316
    aget v6, v0, v1

    iget v7, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->activeTargetIndex:I

    if-ne v6, v7, :cond_2

    .line 317
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    aget v7, v0, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 318
    .local v5, "transform":[F
    if-eqz v5, :cond_1

    .line 319
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mHitTargetQueue:Ljava/util/ArrayList;

    new-instance v7, Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;

    aget v8, v0, v1

    invoke-direct {v7, p0, v8, v5}, Lcom/google/android/apps/lightcycle/panorama/TargetManager$HitTarget;-><init>(Lcom/google/android/apps/lightcycle/panorama/TargetManager;I[F)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v5    # "transform":[F
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 321
    .restart local v5    # "transform":[F
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetTransform:[F

    .line 322
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->hitTargetAlpha:F

    goto :goto_1

    .line 326
    .end local v5    # "transform":[F
    :cond_2
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    aget v7, v0, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 332
    .end local v1    # "i":I
    :cond_3
    if-eqz v3, :cond_5

    .line 333
    array-length v2, v3

    .line 334
    .local v2, "n":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 335
    const/16 v6, 0x10

    new-array v4, v6, [F

    .line 336
    .local v4, "tform":[F
    aget-object v6, v3, v1

    iget-object v6, v6, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->orientation:[F

    invoke-direct {p0, v6, v9, v4}, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->setRotationTranspose([FI[F)V

    .line 337
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    aget-object v7, v3, v1

    iget v7, v7, Lcom/google/android/apps/lightcycle/panorama/NewTarget;->key:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 339
    .end local v4    # "tform":[F
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of targets "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/TargetManager;->mTargets:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 341
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_5
    return-void
.end method
