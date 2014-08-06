.class public Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "MessageDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;,
        Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;
    }
.end annotation


# instance fields
.field private mConfidential:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private mContext:Landroid/content/Context;

.field mHitToStartMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

.field mHoldStillMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

.field private mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private mRotateDeviceCcw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mRotateDeviceCw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;Ljava/lang/String;ILandroid/graphics/Typeface;[F)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/Typeface;
    .param p4, "x4"    # [F

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->createTextBitmap(Ljava/lang/String;ILandroid/graphics/Typeface;[F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;Landroid/graphics/Bitmap;FF)Lcom/google/android/apps/lightcycle/opengl/Sprite;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->createOrientedSprite(Landroid/graphics/Bitmap;FF)Lcom/google/android/apps/lightcycle/opengl/Sprite;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;)Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;Lcom/google/android/apps/lightcycle/opengl/Sprite;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;
    .param p1, "x1"    # Lcom/google/android/apps/lightcycle/opengl/Sprite;
    .param p2, "x2"    # [F

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->drawCenteredSprite(Lcom/google/android/apps/lightcycle/opengl/Sprite;[F)V

    return-void
.end method

.method private createOrientedSprite(Landroid/graphics/Bitmap;FF)Lcom/google/android/apps/lightcycle/opengl/Sprite;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "heightPct"    # F
    .param p3, "scale"    # F

    .prologue
    .line 277
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    .line 279
    .local v0, "sprite":Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;
    const/high16 v2, -0x40800000

    iget v6, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mSurfaceWidth:I

    iget v7, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mSurfaceHeight:I

    move-object v1, p1

    move v3, p3

    move v4, p2

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->initCentered(Landroid/graphics/Bitmap;FFFFII)Z

    .line 281
    return-object v0
.end method

.method private createTextBitmap(Ljava/lang/String;ILandroid/graphics/Typeface;[F)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "heightDips"    # I
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "color"    # [F

    .prologue
    const/4 v9, 0x0

    const/high16 v10, 0x437f0000

    .line 169
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 170
    .local v4, "scale":F
    int-to-float v6, p2

    mul-float/2addr v6, v4

    const/high16 v7, 0x3f000000

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 171
    .local v2, "heightPixels":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 172
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 173
    int-to-float v6, v2

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 174
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v5, v6

    .line 176
    .local v5, "widthPixels":I
    add-int/lit8 v6, v5, 0xa

    int-to-float v7, v2

    const/high16 v8, 0x3fc00000

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 180
    .local v1, "canvas":Landroid/graphics/Canvas;
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v9, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 182
    aget v6, p4, v9

    mul-float/2addr v6, v10

    float-to-int v6, v6

    const/4 v7, 0x1

    aget v7, p4, v7

    mul-float/2addr v7, v10

    float-to-int v7, v7

    const/4 v8, 0x2

    aget v8, p4, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    const/4 v9, 0x3

    aget v9, p4, v9

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 184
    const/high16 v6, 0x40a00000

    add-int/lit8 v7, v2, 0x5

    int-to-float v7, v7

    invoke-virtual {v1, p1, v6, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    return-object v0
.end method

.method private drawCenteredSprite(Lcom/google/android/apps/lightcycle/opengl/Sprite;[F)V
    .locals 2
    .param p1, "sprite"    # Lcom/google/android/apps/lightcycle/opengl/Sprite;
    .param p2, "transform"    # [F

    .prologue
    .line 258
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 260
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->draw([F)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    const-string v1, "Draw sprite failed."

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public activateMessage(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;D)V
    .locals 1
    .param p1, "message"    # Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;
    .param p2, "delay"    # D

    .prologue
    .line 210
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->HOLDSTILL:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    if-ne p1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mHoldStillMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->activate(D)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    sget-object v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;->HITTOSTART:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$Message;

    if-ne p1, v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mHitToStartMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->activate(D)V

    goto :goto_0
.end method

.method public drawMessages([F)V
    .locals 1
    .param p1, "transform"    # [F

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mHoldStillMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->drawAndUpdate([F)V

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mHitToStartMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->drawAndUpdate([F)V

    .line 220
    return-void
.end method

.method public drawObject([F)V
    .locals 0
    .param p1, "transform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 189
    return-void
.end method

.method public drawRotateDevice([FZ)V
    .locals 2
    .param p1, "transform"    # [F
    .param p2, "cw"    # Z

    .prologue
    const/16 v1, 0x303

    .line 248
    const/4 v0, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 249
    if-eqz p2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mRotateDeviceCw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->drawCenteredSprite(Lcom/google/android/apps/lightcycle/opengl/Sprite;[F)V

    .line 254
    :goto_0
    const/16 v0, 0x302

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 255
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mRotateDeviceCcw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->drawCenteredSprite(Lcom/google/android/apps/lightcycle/opengl/Sprite;[F)V

    goto :goto_0
.end method

.method public freeGLMemory()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->freeGLMemory()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mConfidential:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mConfidential:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->freeGLMemory()V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mRotateDeviceCw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mRotateDeviceCw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->freeGLMemory()V

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mRotateDeviceCcw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mRotateDeviceCcw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->freeGLMemory()V

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mHitToStartMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mHitToStartMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->freeGLMemory()V

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mHoldStillMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    if-eqz v0, :cond_5

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mHoldStillMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->freeGLMemory()V

    .line 308
    :cond_5
    return-void
.end method

.method public init(Landroid/content/Context;IILcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I
    .param p4, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .prologue
    const/high16 v4, 0x3f800000

    const/high16 v3, -0x40800000

    const v5, 0x3f59999a

    .line 129
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mContext:Landroid/content/Context;

    .line 130
    iput p2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mSurfaceWidth:I

    .line 131
    iput p3, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mSurfaceHeight:I

    .line 132
    iput-object p4, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 136
    :try_start_0
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mRotateDeviceCw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mRotateDeviceCw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    const v2, 0x7f02012a

    move-object v1, p1

    move v6, v5

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->initCentered(Landroid/content/Context;IFFFFII)Z

    .line 146
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mRotateDeviceCcw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mRotateDeviceCcw:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    const v2, 0x7f020129

    move-object v1, p1

    move v6, v5

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->initCentered(Landroid/content/Context;IFFFFII)Z

    .line 152
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    const v1, 0x7f0b0053

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;-><init>(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;I)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mHitToStartMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    .line 155
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    const v1, 0x7f0b0052

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;-><init>(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;I)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mHoldStillMessage:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;

    .line 156
    return-void

    .line 137
    :catch_0
    move-exception v9

    .line 138
    .local v9, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v9}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method
