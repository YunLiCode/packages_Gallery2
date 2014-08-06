.class Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;
.super Ljava/lang/Object;
.source "MessageDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeableMessage"
.end annotation


# instance fields
.field private mAlpha:F

.field private mDelay:D

.field private mSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

.field private mTimerFinished:Z

.field private mTimerStart:J

.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;I)V
    .locals 6
    .param p2, "stringId"    # I

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->this$0:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mAlpha:F

    .line 46
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 47
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mDelay:D

    .line 48
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mTimerStart:J

    .line 49
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mTimerFinished:Z

    .line 52
    # getter for: Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->access$000(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "text":Ljava/lang/String;
    const/16 v3, 0x12

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sget-object v5, Lcom/google/android/apps/lightcycle/Constants;->WHITE:[F

    # invokes: Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->createTextBitmap(Ljava/lang/String;ILandroid/graphics/Typeface;[F)Landroid/graphics/Bitmap;
    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->access$100(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;Ljava/lang/String;ILandroid/graphics/Typeface;[F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const v3, 0x3f51eb85

    const/high16 v4, 0x3f800000

    # invokes: Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->createOrientedSprite(Landroid/graphics/Bitmap;FF)Lcom/google/android/apps/lightcycle/opengl/Sprite;
    invoke-static {p1, v0, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->access$200(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;Landroid/graphics/Bitmap;FF)Lcom/google/android/apps/lightcycle/opengl/Sprite;

    move-result-object v1

    .line 56
    .local v1, "sprite":Lcom/google/android/apps/lightcycle/opengl/Sprite;
    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    return-void
.end method

.method private updateAlpha(F)F
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 99
    const v1, 0x3dcccccd

    mul-float/2addr v1, p1

    sub-float v0, p1, v1

    .line 100
    .local v0, "newAlpha":F
    const v1, 0x3ba3d70a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "newAlpha":F
    :cond_0
    return v0
.end method


# virtual methods
.method public activate(D)V
    .locals 2
    .param p1, "delay"    # D

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mDelay:D

    .line 62
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mAlpha:F

    .line 63
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mTimerStart:J

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mTimerFinished:Z

    .line 65
    return-void
.end method

.method public drawAndUpdate([F)V
    .locals 6
    .param p1, "transform"    # [F

    .prologue
    .line 72
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mTimerFinished:Z

    if-nez v2, :cond_2

    .line 76
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mTimerStart:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x41cdcd6500000000L

    div-double v0, v2, v4

    .line 77
    .local v0, "elapsed":D
    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mDelay:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    .line 78
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mTimerFinished:Z

    .line 81
    .end local v0    # "elapsed":D
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->this$0:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->access$300(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;)Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->bind()V

    .line 82
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->this$0:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    # getter for: Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->mTransparencyShader:Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->access$300(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;)Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mAlpha:F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/ScaledTransparencyShader;->setAlpha(F)V

    .line 83
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->this$0:Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    # invokes: Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->drawCenteredSprite(Lcom/google/android/apps/lightcycle/opengl/Sprite;[F)V
    invoke-static {v2, v3, p1}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;->access$400(Lcom/google/android/apps/lightcycle/panorama/MessageDisplay;Lcom/google/android/apps/lightcycle/opengl/Sprite;[F)V

    .line 84
    iget-boolean v2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mTimerFinished:Z

    if-eqz v2, :cond_0

    .line 85
    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mAlpha:F

    invoke-direct {p0, v2}, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->updateAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mAlpha:F

    goto :goto_0
.end method

.method public freeGLMemory()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/MessageDisplay$FadeableMessage;->mSprite:Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->freeGLMemory()V

    .line 96
    :cond_0
    return-void
.end method
