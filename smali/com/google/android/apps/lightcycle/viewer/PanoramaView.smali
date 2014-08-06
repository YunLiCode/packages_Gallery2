.class public Lcom/google/android/apps/lightcycle/viewer/PanoramaView;
.super Landroid/opengl/GLSurfaceView;
.source "PanoramaView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoSpinTapEnabled:Z

.field private mDownPitchYawPointer:Lcom/google/android/apps/lightcycle/math/PitchYaw;

.field private mDownPos:Landroid/graphics/PointF;

.field private mIgnoreNextActionUpForThrowing:Z

.field private mLastUpPitchYawPointer:Lcom/google/android/apps/lightcycle/math/PitchYaw;

.field private mLastZoom:Z

.field private mPitchAngleDegrees:F

.field private mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

.field private mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

.field private mThrowPos:Landroid/graphics/PointF;

.field private mTimeTouchDown:J

.field private mTouchReleaseCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mYawAngleDegrees:F

.field private mZoomCurrentDistance:F

.field private mZoomStartingDistance:F

.field private mZooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "image"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;
    .param p3, "enableIntroAnimation"    # Z

    .prologue
    .line 67
    const v0, 0x7f02019b

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;ZI)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;ZI)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "image"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;
    .param p3, "enableIntroAnimation"    # Z
    .param p4, "cubemapResourceId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 39
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mYawAngleDegrees:F

    .line 40
    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mPitchAngleDegrees:F

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->autoSpinTapEnabled:Z

    .line 49
    new-instance v1, Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    .line 50
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mIgnoreNextActionUpForThrowing:Z

    .line 51
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowPos:Landroid/graphics/PointF;

    .line 90
    :try_start_0
    new-instance v1, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;-><init>(Lcom/google/android/apps/lightcycle/viewer/PanoramaView;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    if-eqz p3, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    new-instance v2, Lcom/google/android/apps/lightcycle/viewer/PanoramaView$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView$1;-><init>(Lcom/google/android/apps/lightcycle/viewer/PanoramaView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setOnInitializedCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 110
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setEGLContextClientVersion(I)V

    .line 111
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 112
    invoke-virtual {p0, v3}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->setRenderMode(I)V

    .line 113
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    sget-object v1, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->TAG:Ljava/lang/String;

    const-string v2, "Error creating Panorama view renderer."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/viewer/PanoramaView;)Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    return-object v0
.end method

.method private static getDistance(Landroid/view/MotionEvent;Landroid/graphics/PointF;)D
    .locals 6
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pos"    # Landroid/graphics/PointF;

    .prologue
    .line 393
    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 394
    .local v0, "dx":F
    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 395
    .local v1, "dy":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method private getPinchDistance(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 204
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 205
    .local v0, "dx":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 206
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 208
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private stopThrowInProgress()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->stopThrow()V

    .line 387
    return-void
.end method


# virtual methods
.method public onDrawFrame()V
    .locals 6

    .prologue
    .line 174
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowPos:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->getThrowDelta(Landroid/graphics/PointF;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->screenToPitchYaw(FF)Lcom/google/android/apps/lightcycle/math/PitchYaw;

    move-result-object v2

    .line 184
    .local v2, "throwNowPitchYaw":Lcom/google/android/apps/lightcycle/math/PitchYaw;
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mLastUpPitchYawPointer:Lcom/google/android/apps/lightcycle/math/PitchYaw;

    iget v3, v3, Lcom/google/android/apps/lightcycle/math/PitchYaw;->pitch:F

    iget v4, v2, Lcom/google/android/apps/lightcycle/math/PitchYaw;->pitch:F

    sub-float v0, v3, v4

    .line 185
    .local v0, "dPitch":F
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mLastUpPitchYawPointer:Lcom/google/android/apps/lightcycle/math/PitchYaw;

    iget v3, v3, Lcom/google/android/apps/lightcycle/math/PitchYaw;->yaw:F

    iget v4, v2, Lcom/google/android/apps/lightcycle/math/PitchYaw;->yaw:F

    sub-float v1, v3, v4

    .line 186
    .local v1, "dYaw":F
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getPitchDegrees()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setPitchAngleDegrees(F)V

    .line 187
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getYawDegrees()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setYawAngleDegrees(F)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->requestRender()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->processMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public processMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    packed-switch v8, :pswitch_data_0

    .line 379
    :pswitch_0
    const/4 v8, 0x0

    :goto_0
    return v8

    .line 282
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->stopThrowInProgress()V

    .line 283
    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPos:Landroid/graphics/PointF;

    .line 284
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->screenToPitchYaw(FF)Lcom/google/android/apps/lightcycle/math/PitchYaw;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPitchYawPointer:Lcom/google/android/apps/lightcycle/math/PitchYaw;

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mTimeTouchDown:J

    .line 287
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->onPointerDown(FFJ)V

    .line 289
    const/4 v8, 0x1

    goto :goto_0

    .line 292
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->getPinchDistance(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomStartingDistance:F

    .line 293
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZooming:Z

    .line 294
    const/4 v8, 0x1

    goto :goto_0

    .line 297
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 298
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->onPointerMove(FFJ)V

    .line 303
    :cond_0
    iget-boolean v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mLastZoom:Z

    if-eqz v8, :cond_1

    .line 304
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->screenToPitchYaw(FF)Lcom/google/android/apps/lightcycle/math/PitchYaw;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPitchYawPointer:Lcom/google/android/apps/lightcycle/math/PitchYaw;

    .line 306
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mLastZoom:Z

    .line 310
    :cond_1
    iget-boolean v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZooming:Z

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 311
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->getPinchDistance(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomCurrentDistance:F

    .line 312
    iget v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomCurrentDistance:F

    iget v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomStartingDistance:F

    div-float v7, v8, v9

    .line 313
    .local v7, "zoomRatio":F
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v8, v7}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->pinchZoom(F)V

    .line 314
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->requestRender()V

    .line 333
    .end local v7    # "zoomRatio":F
    :cond_2
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 320
    :cond_3
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->screenToPitchYaw(FF)Lcom/google/android/apps/lightcycle/math/PitchYaw;

    move-result-object v6

    .line 323
    .local v6, "pitchYaw":Lcom/google/android/apps/lightcycle/math/PitchYaw;
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPitchYawPointer:Lcom/google/android/apps/lightcycle/math/PitchYaw;

    iget v8, v8, Lcom/google/android/apps/lightcycle/math/PitchYaw;->pitch:F

    iget v9, v6, Lcom/google/android/apps/lightcycle/math/PitchYaw;->pitch:F

    sub-float v0, v8, v9

    .line 324
    .local v0, "dPitch":F
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPitchYawPointer:Lcom/google/android/apps/lightcycle/math/PitchYaw;

    iget v8, v8, Lcom/google/android/apps/lightcycle/math/PitchYaw;->yaw:F

    iget v9, v6, Lcom/google/android/apps/lightcycle/math/PitchYaw;->yaw:F

    sub-float v1, v8, v9

    .line 326
    .local v1, "dYaw":F
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPos:Landroid/graphics/PointF;

    invoke-static {p1, v8}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->getDistance(Landroid/view/MotionEvent;Landroid/graphics/PointF;)D

    move-result-wide v8

    const-wide/high16 v10, 0x4010000000000000L

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_2

    .line 327
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v9}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getPitchDegrees()F

    move-result v9

    sub-float/2addr v9, v0

    invoke-virtual {v8, v9}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setPitchAngleDegrees(F)V

    .line 329
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v9}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->getYawDegrees()F

    move-result v9

    sub-float/2addr v9, v1

    invoke-virtual {v8, v9}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setYawAngleDegrees(F)V

    .line 330
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->requestRender()V

    goto :goto_1

    .line 339
    .end local v0    # "dPitch":F
    .end local v1    # "dYaw":F
    .end local v6    # "pitchYaw":Lcom/google/android/apps/lightcycle/math/PitchYaw;
    :pswitch_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZooming:Z

    .line 340
    iget v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomCurrentDistance:F

    iget v9, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mZoomStartingDistance:F

    div-float v7, v8, v9

    .line 341
    .restart local v7    # "zoomRatio":F
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v8, v7}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->endPinchZoom(F)V

    .line 342
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mLastZoom:Z

    .line 343
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mIgnoreNextActionUpForThrowing:Z

    .line 344
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 348
    .end local v7    # "zoomRatio":F
    :pswitch_5
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float v4, v8, v9

    .line 349
    .local v4, "dx":F
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mDownPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float v5, v8, v9

    .line 350
    .local v5, "dy":F
    float-to-double v8, v4

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    .line 351
    .local v2, "dist":D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mTimeTouchDown:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x190

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    const-wide/high16 v8, 0x4024000000000000L

    cmpg-double v8, v2, v8

    if-gez v8, :cond_4

    iget-boolean v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->autoSpinTapEnabled:Z

    if-eqz v8, :cond_4

    .line 353
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v8}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->toggleAutoSpin()V

    .line 355
    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mLastZoom:Z

    .line 356
    iget-boolean v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mIgnoreNextActionUpForThrowing:Z

    if-nez v8, :cond_7

    .line 359
    const-wide/high16 v8, 0x4024000000000000L

    cmpl-double v8, v2, v8

    if-lez v8, :cond_5

    .line 360
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->screenToPitchYaw(FF)Lcom/google/android/apps/lightcycle/math/PitchYaw;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mLastUpPitchYawPointer:Lcom/google/android/apps/lightcycle/math/PitchYaw;

    .line 362
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mThrowController:Lcom/google/android/apps/lightcycle/viewer/ThrowController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/android/apps/lightcycle/viewer/ThrowController;->onPointerUp(FFJ)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 367
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->requestRender()V

    .line 374
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mTouchReleaseCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz v8, :cond_6

    .line 375
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mTouchReleaseCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 377
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 371
    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mIgnoreNextActionUpForThrowing:Z

    goto :goto_2

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setAutoRotationCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "autoRotationCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setAutoRotationCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 197
    return-void
.end method

.method public setSensorReader(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V
    .locals 1
    .param p1, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;
    .param p2, "sensorReader"    # Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->mRenderer:Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/lightcycle/viewer/PanoramaViewRenderer;->setSensorReader(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    .line 135
    new-instance v0, Lcom/google/android/apps/lightcycle/viewer/PanoramaView$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView$2;-><init>(Lcom/google/android/apps/lightcycle/viewer/PanoramaView;)V

    invoke-virtual {p2, v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->setSensorVelocityCallback(Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 141
    return-void
.end method
