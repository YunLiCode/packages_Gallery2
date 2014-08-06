.class public Lcom/google/android/apps/lightcycle/panorama/Button;
.super Lcom/google/android/apps/lightcycle/panorama/MessageSender;
.source "Button.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/panorama/GuiManager$GuiElement;


# instance fields
.field private mEnabled:Z

.field private mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private mSelected:Z

.field private mSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mSpriteSelected:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V
    .locals 2
    .param p1, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/MessageSender;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSelected:Z

    .line 34
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mVisible:Z

    .line 35
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mEnabled:Z

    .line 38
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 39
    return-void
.end method

.method private inRect(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->getPosition()Landroid/graphics/PointF;

    move-result-object v2

    .line 150
    .local v2, "position":Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->getWidth()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 151
    .local v3, "w":I
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->getHeight()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 156
    .local v1, "h":I
    new-instance v0, Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    int-to-float v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceHeight:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/PointF;->x:F

    int-to-float v7, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceHeight:I

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    int-to-float v8, v1

    add-float/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 160
    .local v0, "eventRect":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    return v4
.end method


# virtual methods
.method public draw([F)V
    .locals 3
    .param p1, "transform"    # [F

    .prologue
    const/16 v2, 0x303

    .line 128
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mVisible:Z

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 136
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSelected:Z

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSpriteSelected:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    const/16 v1, 0x302

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_0

    .line 139
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V
    :try_end_1
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_1
.end method

.method public handleEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 170
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/Button;->inRect(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSelected:Z

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/Button;->inRect(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mEnabled:Z

    if-eqz v1, :cond_1

    .line 179
    const/high16 v1, 0x3f800000

    const-string v2, ""

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/Button;->notifyAll(IFLjava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    .line 182
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSelected:Z

    goto :goto_0

    .line 186
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/panorama/Button;->inRect(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSelected:Z

    .line 187
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSelected:Z

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init(Landroid/content/Context;IILandroid/graphics/PointF;FLcom/google/android/apps/lightcycle/opengl/Shader;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # I
    .param p3, "drawableSelected"    # I
    .param p4, "positionPct"    # Landroid/graphics/PointF;
    .param p5, "scale"    # F
    .param p6, "shader"    # Lcom/google/android/apps/lightcycle/opengl/Shader;
    .param p7, "surfaceWidth"    # I
    .param p8, "surfaceHeight"    # I

    .prologue
    const/high16 v2, -0x40800000

    .line 84
    if-ge p7, p8, :cond_0

    .line 85
    int-to-float v0, p8

    int-to-float v1, p7

    div-float/2addr v0, v1

    mul-float/2addr p5, v0

    .line 89
    :cond_0
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 90
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSpriteSelected:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0, p1, p2, v2, p5}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSpriteSelected:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0, p1, p3, v2, p5}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(Landroid/content/Context;IFF)Z

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0, p6}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSpriteSelected:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0, p6}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 97
    iput p7, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceWidth:I

    .line 98
    iput p8, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceHeight:I

    .line 100
    invoke-virtual {p0, p4}, Lcom/google/android/apps/lightcycle/panorama/Button;->setPosition(Landroid/graphics/PointF;)V

    .line 101
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mEnabled:Z

    .line 202
    return-void
.end method

.method public setPosition(Landroid/graphics/PointF;)V
    .locals 6
    .param p1, "positionPct"    # Landroid/graphics/PointF;

    .prologue
    .line 113
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceWidth:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceHeight:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 115
    .local v1, "posPortrait":Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceWidth:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000

    iget v5, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 119
    .local v0, "posLandscape":Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceWidth:I

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceHeight:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 121
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSpriteSelected:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceWidth:I

    iget v4, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mSurfaceHeight:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 123
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/Button;->mVisible:Z

    .line 197
    return-void
.end method
