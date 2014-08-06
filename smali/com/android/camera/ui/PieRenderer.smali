.class public Lcom/android/camera/ui/PieRenderer;
.super Lcom/android/camera/ui/OverlayRenderer;
.source "PieRenderer.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PieRenderer$LinearAnimation;,
        Lcom/android/camera/ui/PieRenderer$ScaleAnimation;,
        Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;,
        Lcom/android/camera/ui/PieRenderer$Disappear;,
        Lcom/android/camera/ui/PieRenderer$EndAction;,
        Lcom/android/camera/ui/PieRenderer$PieListener;
    }
.end annotation


# static fields
.field protected static CENTER:F

.field protected static RAD24:F


# instance fields
.field private mAngleZone:I

.field private mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

.field private mArcCenterY:I

.field private mArcOffset:I

.field private mArcRadius:I

.field private mBlockFocus:Z

.field private mCenterAngle:F

.field private mCenterX:I

.field private mCenterY:I

.field private mCircle:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private mCurrentItem:Lcom/android/camera/ui/PieItem;

.field private mDeadZone:I

.field private mDial:Landroid/graphics/RectF;

.field private mDialAngle:I

.field private mDisappear:Ljava/lang/Runnable;

.field private mDown:Landroid/graphics/Point;

.field private mEndAction:Landroid/view/animation/Animation$AnimationListener;

.field private mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

.field private mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

.field private mFailColor:I

.field private volatile mFocusCancelled:Z

.field private mFocusPaint:Landroid/graphics/Paint;

.field private mFocusX:I

.field private mFocusY:I

.field private mFocused:Z

.field private mHandler:Landroid/os/Handler;

.field private mInnerOffset:I

.field private mInnerStroke:I

.field private mLabel:Lcom/android/camera/drawable/TextDrawable;

.field private mListener:Lcom/android/camera/ui/PieRenderer$PieListener;

.field private mMenuArcPaint:Landroid/graphics/Paint;

.field private mOpen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOpening:Z

.field private mOuterStroke:I

.field private mPieCenterX:I

.field private mPieCenterY:I

.field private mPoint1:Landroid/graphics/Point;

.field private mPoint2:Landroid/graphics/Point;

.field private mPolar:Landroid/graphics/PointF;

.field private mRadius:I

.field private mRadiusInc:I

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSlice:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

.field private mSliceCenterY:I

.field private mSliceRadius:I

.field private mStartAnimationAngle:I

.field private volatile mState:I

.field private mSubPaint:Landroid/graphics/Paint;

.field private mSuccessColor:I

.field private mTapMode:Z

.field private mTouchOffset:I

.field private mTouchSlopSquared:I

.field private mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const v0, 0x3fc90fdb

    sput v0, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    .line 81
    const v0, 0x3ed67750

    sput v0, Lcom/android/camera/ui/PieRenderer;->RAD24:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Lcom/android/camera/ui/OverlayRenderer;-><init>()V

    .line 53
    new-instance v0, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    .line 61
    new-instance v0, Lcom/android/camera/ui/PieRenderer$Disappear;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/PieRenderer$Disappear;-><init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/android/camera/ui/PieRenderer$EndAction;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/PieRenderer$EndAction;-><init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    .line 139
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    .line 147
    new-instance v0, Lcom/android/camera/ui/PieRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/PieRenderer$1;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->init(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/PieRenderer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$LinearAnimation;)Lcom/android/camera/ui/PieRenderer$LinearAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$LinearAnimation;)Lcom/android/camera/ui/PieRenderer$LinearAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/camera/ui/PieRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/PieRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusCancelled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/PieRenderer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mListener:Lcom/android/camera/ui/PieRenderer$PieListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterY:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/PieRenderer;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PieRenderer;->setCircle(II)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/camera/ui/PieRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/camera/ui/PieRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->onEnterOpen()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$LinearAnimation;)Lcom/android/camera/ui/PieRenderer$LinearAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;)Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p1, "x1"    # Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/PieRenderer;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->deselect()V

    return-void
.end method

.method private cancelFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusCancelled:Z

    .line 979
    iget-object v0, p0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 980
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->cancel()V

    .line 983
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusCancelled:Z

    .line 984
    iput-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    .line 985
    iput v2, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 986
    return-void
.end method

.method private closeOpenItem()Lcom/android/camera/ui/PieItem;
    .locals 3

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 485
    .local v0, "item":Lcom/android/camera/ui/PieItem;
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 486
    return-object v0
.end method

.method private static convertCart(IILandroid/graphics/Point;)V
    .locals 8
    .param p0, "angle"    # I
    .param p1, "radius"    # I
    .param p2, "out"    # Landroid/graphics/Point;

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L

    .line 941
    const-wide v2, 0x401921fb54442d18L

    rem-int/lit16 v4, p0, 0x168

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L

    div-double v0, v2, v4

    .line 942
    .local v0, "a":D
    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 943
    int-to-double v2, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, p2, Landroid/graphics/Point;->y:I

    .line 944
    return-void
.end method

.method private deselect()V
    .locals 3

    .prologue
    .line 764
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 767
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->closeOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v0

    .line 769
    .local v0, "item":Lcom/android/camera/ui/PieItem;
    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->onEnter(Lcom/android/camera/ui/PieItem;)V

    .line 773
    .end local v0    # "item":Lcom/android/camera/ui/PieItem;
    :goto_0
    return-void

    .line 771
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    goto :goto_0
.end method

.method private drawArc(Landroid/graphics/Canvas;ILcom/android/camera/ui/PieItem;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "level"    # I
    .param p3, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    const/high16 v3, 0x40000000

    const v2, 0x3e6b851f

    .line 558
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 559
    invoke-virtual {p3}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 560
    .local v6, "count":I
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterAngle:F

    int-to-float v1, v6

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float v9, v0, v1

    .line 561
    .local v9, "start":F
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterAngle:F

    int-to-float v1, v6

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float v8, v0, v1

    .line 562
    .local v8, "end":F
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v1, p2

    sub-int v7, v0, v1

    .line 563
    .local v7, "cy":I
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    sub-int v2, v7, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    float-to-double v2, v8

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v2

    float-to-double v3, v9

    invoke-direct {p0, v3, v4}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v0

    float-to-double v3, v8

    invoke-direct {p0, v3, v4}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v3

    sub-float v3, v0, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 567
    .end local v6    # "count":I
    .end local v7    # "cy":I
    .end local v8    # "end":F
    .end local v9    # "start":F
    :cond_0
    return-void
.end method

.method private drawItem(IIILandroid/graphics/Canvas;Lcom/android/camera/ui/PieItem;F)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "pos"    # I
    .param p3, "count"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "item"    # Lcom/android/camera/ui/PieItem;
    .param p6, "alpha"    # F

    .prologue
    .line 570
    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 571
    invoke-virtual {p5}, Lcom/android/camera/ui/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 572
    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    iget v5, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v5, p1

    sub-int v3, v4, v5

    .line 573
    .local v3, "y":I
    invoke-virtual {p5}, Lcom/android/camera/ui/PieItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    .line 575
    .local v1, "p":Landroid/graphics/Paint;
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 576
    .local v2, "state":I
    const/4 v0, 0x0

    .line 577
    .local v0, "angle":F
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v4, :cond_5

    .line 578
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v4}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->getValue()F

    move-result v0

    .line 582
    :goto_0
    float-to-double v4, v0

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v0

    .line 583
    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {p4, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 584
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    if-eqz v4, :cond_0

    .line 585
    const/high16 v4, 0x437f0000

    mul-float/2addr v4, p6

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 587
    :cond_0
    invoke-virtual {p5}, Lcom/android/camera/ui/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {p4, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 588
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    if-eqz v4, :cond_1

    .line 589
    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 591
    :cond_1
    invoke-virtual {p4, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 593
    .end local v0    # "angle":F
    .end local v1    # "p":Landroid/graphics/Paint;
    .end local v2    # "state":I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    if-nez v4, :cond_3

    .line 594
    invoke-virtual {p5}, Lcom/android/camera/ui/PieItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v4, 0x3f800000

    :goto_1
    mul-float/2addr p6, v4

    .line 596
    invoke-virtual {p5, p6}, Lcom/android/camera/ui/PieItem;->setAlpha(F)V

    .line 598
    :cond_3
    invoke-virtual {p5, p4}, Lcom/android/camera/ui/PieItem;->draw(Landroid/graphics/Canvas;)V

    .line 601
    .end local v3    # "y":I
    :cond_4
    return-void

    .line 580
    .restart local v0    # "angle":F
    .restart local v1    # "p":Landroid/graphics/Paint;
    .restart local v2    # "state":I
    .restart local v3    # "y":I
    :cond_5
    invoke-direct {p0, p5, p2, p3}, Lcom/android/camera/ui/PieRenderer;->getArcCenter(Lcom/android/camera/ui/PieItem;II)F

    move-result v4

    const v5, 0x3deb851f

    sub-float v0, v4, v5

    goto :goto_0

    .line 594
    .end local v0    # "angle":F
    .end local v1    # "p":Landroid/graphics/Paint;
    .end local v2    # "state":I
    :cond_6
    const v4, 0x3e99999a

    goto :goto_1
.end method

.method private drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "angle"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 934
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    invoke-static {p2, v0, v1}, Lcom/android/camera/ui/PieRenderer;->convertCart(IILandroid/graphics/Point;)V

    .line 935
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    invoke-static {p2, v0, v1}, Lcom/android/camera/ui/PieRenderer;->convertCart(IILandroid/graphics/Point;)V

    .line 936
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 938
    return-void
.end method

.method private fadeIn()V
    .locals 3

    .prologue
    .line 307
    new-instance v0, Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;-><init>(Lcom/android/camera/ui/PieRenderer;FF)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setDuration(J)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    new-instance v1, Lcom/android/camera/ui/PieRenderer$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/PieRenderer$2;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 323
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->startNow()V

    .line 324
    iget-object v0, p0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 325
    return-void
.end method

.method private findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;
    .locals 6
    .param p1, "polar"    # Landroid/graphics/PointF;

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v3

    .line 852
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 853
    .local v0, "count":I
    const/4 v4, 0x0

    .line 854
    .local v4, "pos":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/PieItem;

    .line 855
    .local v2, "item":Lcom/android/camera/ui/PieItem;
    invoke-direct {p0, p1, v2, v4, v0}, Lcom/android/camera/ui/PieRenderer;->inside(Landroid/graphics/PointF;Lcom/android/camera/ui/PieItem;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 860
    .end local v2    # "item":Lcom/android/camera/ui/PieItem;
    :goto_1
    return-object v2

    .line 858
    .restart local v2    # "item":Lcom/android/camera/ui/PieItem;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 860
    .end local v2    # "item":Lcom/android/camera/ui/PieItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getArcCenter(Lcom/android/camera/ui/PieItem;II)F
    .locals 1
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;
    .param p2, "pos"    # I
    .param p3, "count"    # I

    .prologue
    .line 412
    const v0, 0x3e6b851f

    invoke-direct {p0, p2, p3, v0}, Lcom/android/camera/ui/PieRenderer;->getCenter(IIF)F

    move-result v0

    return v0
.end method

.method private getCenter(IIF)F
    .locals 3
    .param p1, "pos"    # I
    .param p2, "count"    # I
    .param p3, "sweep"    # F

    .prologue
    .line 422
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterAngle:F

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    return v0
.end method

.method private getCenterAngle()F
    .locals 5

    .prologue
    .line 426
    sget v0, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    .line 427
    .local v0, "center":F
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 428
    sget v1, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/ui/PieRenderer;->RAD24:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 434
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 431
    sget v1, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/camera/ui/PieRenderer;->RAD24:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0
.end method

.method private getCurrentCount()I
    .locals 1

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getDegrees(D)F
    .locals 6
    .param p1, "angle"    # D

    .prologue
    .line 443
    const-wide v0, 0x4076800000000000L

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v2, p1

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getItemPos(Lcom/android/camera/ui/PieItem;)I
    .locals 2
    .param p1, "target"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v0

    .line 777
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private getLevel()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getOpenItem()Lcom/android/camera/ui/PieItem;
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PieItem;

    return-object v0
.end method

.method private getParent()Lcom/android/camera/ui/PieItem;
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PieItem;

    return-object v0
.end method

.method private getPolar(FFZLandroid/graphics/PointF;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffset"    # Z
    .param p4, "res"    # Landroid/graphics/PointF;

    .prologue
    const/4 v6, 0x0

    .line 701
    const v2, 0x3fc90fdb

    iput v2, p4, Landroid/graphics/PointF;->x:F

    .line 702
    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 703
    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mSliceCenterY:I

    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v0, v2, p2

    .line 704
    .local v0, "y1":F
    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v1, v2, p2

    .line 705
    .local v1, "y2":F
    mul-float v2, p1, p1

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p4, Landroid/graphics/PointF;->y:F

    .line 706
    cmpl-float v2, p1, v6

    if-eqz v2, :cond_0

    .line 707
    float-to-double v2, v0

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p4, Landroid/graphics/PointF;->x:F

    .line 708
    iget v2, p4, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_0

    .line 709
    const-wide v2, 0x401921fb54442d18L

    iget v4, p4, Landroid/graphics/PointF;->x:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p4, Landroid/graphics/PointF;->x:F

    .line 712
    :cond_0
    iget v3, p4, Landroid/graphics/PointF;->y:F

    if-eqz p3, :cond_1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mTouchOffset:I

    :goto_0
    int-to-float v2, v2

    add-float/2addr v2, v3

    iput v2, p4, Landroid/graphics/PointF;->y:F

    .line 713
    return-void

    .line 712
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRandomRange()I
    .locals 6

    .prologue
    .line 900
    const-wide/high16 v0, -0x3fb2000000000000L

    const-wide/high16 v2, 0x405e000000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getRoot()Lcom/android/camera/ui/PieItem;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PieItem;

    return-object v0
.end method

.method private getSliceCenter(Lcom/android/camera/ui/PieItem;II)F
    .locals 4
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;
    .param p2, "pos"    # I
    .param p3, "count"    # I

    .prologue
    const v3, 0x3e0f5c29

    .line 416
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getCenterAngle()F

    move-result v1

    sget v2, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000

    mul-float/2addr v1, v2

    sget v2, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    add-float v0, v1, v2

    .line 417
    .local v0, "center":F
    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    int-to-float v2, p2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1
.end method

.method private hasMoved(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 716
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasOpenItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 479
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 184
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    .line 186
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    new-instance v2, Lcom/android/camera/ui/PieItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v7}, Lcom/android/camera/ui/PieItem;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadius:I

    .line 189
    const v1, 0x7f0e00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    .line 190
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mRadius:I

    const v2, 0x7f0e00a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    .line 191
    const v1, 0x7f0e00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchOffset:I

    .line 192
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    .line 193
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    const/16 v2, 0x33

    const/16 v3, 0xb5

    const/16 v4, 0xe5

    invoke-static {v8, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    .line 196
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    const/16 v3, 0xfa

    const/16 v4, 0xe6

    const/16 v5, 0x80

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    .line 199
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    const v1, -0xff0100

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mSuccessColor:I

    .line 203
    const/high16 v1, -0x10000

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mFailColor:I

    .line 204
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircle:Landroid/graphics/RectF;

    .line 205
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    .line 206
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    .line 207
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    .line 208
    const v1, 0x7f0e00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    .line 209
    const v1, 0x7f0e00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mOuterStroke:I

    .line 210
    const v1, 0x7f0e00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerStroke:I

    .line 211
    iput v7, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 212
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mBlockFocus:Z

    .line 213
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    .line 214
    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mTouchSlopSquared:I

    .line 215
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    .line 216
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    .line 217
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    const/16 v2, 0x8c

    invoke-static {v2, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 220
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    const v1, 0x7f0e00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mSliceRadius:I

    .line 222
    const v1, 0x7f0e00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    .line 223
    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcOffset:I

    .line 224
    new-instance v1, Lcom/android/camera/drawable/TextDrawable;

    invoke-direct {v1, v0}, Lcom/android/camera/drawable/TextDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    .line 225
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    invoke-virtual {v1, v6}, Lcom/android/camera/drawable/TextDrawable;->setDropShadow(Z)V

    .line 226
    const v1, 0x7f0e00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    .line 227
    const v1, 0x7f0e00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/PieRenderer;->mAngleZone:I

    .line 228
    return-void
.end method

.method private inside(Landroid/graphics/PointF;Lcom/android/camera/ui/PieItem;II)Z
    .locals 4
    .param p1, "polar"    # Landroid/graphics/PointF;
    .param p2, "item"    # Lcom/android/camera/ui/PieItem;
    .param p3, "pos"    # I
    .param p4, "count"    # I

    .prologue
    .line 691
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/ui/PieRenderer;->getSliceCenter(Lcom/android/camera/ui/PieItem;II)F

    move-result v2

    const v3, 0x3d8f5c29

    sub-float v1, v2, v3

    .line 692
    .local v1, "start":F
    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    const v2, 0x3e0f5c29

    add-float/2addr v2, v1

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 696
    .local v0, "res":Z
    :goto_0
    return v0

    .line 692
    .end local v0    # "res":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutItems(ILjava/util/List;)V
    .locals 21
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/PieItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    const/4 v11, 0x1

    .line 372
    .local v11, "extend":I
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v2

    int-to-float v3, v11

    add-float/2addr v3, v2

    const-wide v4, 0x3fcd70a3e0000000L

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v2

    int-to-float v4, v11

    sub-float v4, v2, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    div-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int v8, v8, p1

    sub-int v8, v2, v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/ui/PieRenderer;->makeSlice(FFIIII)Landroid/graphics/Path;

    move-result-object v15

    .line 375
    .local v15, "path":Landroid/graphics/Path;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    .line 376
    .local v10, "count":I
    const/16 v16, 0x0

    .line 377
    .local v16, "pos":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/PieItem;

    .line 379
    .local v14, "item":Lcom/android/camera/ui/PieItem;
    invoke-virtual {v14, v15}, Lcom/android/camera/ui/PieItem;->setPath(Landroid/graphics/Path;)V

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v1, v10}, Lcom/android/camera/ui/PieRenderer;->getArcCenter(Lcom/android/camera/ui/PieItem;II)F

    move-result v9

    .line 381
    .local v9, "angle":F
    invoke-virtual {v14}, Lcom/android/camera/ui/PieItem;->getIntrinsicWidth()I

    move-result v18

    .line 382
    .local v18, "w":I
    invoke-virtual {v14}, Lcom/android/camera/ui/PieItem;->getIntrinsicHeight()I

    move-result v12

    .line 384
    .local v12, "h":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int v17, v2, v3

    .line 385
    .local v17, "r":I
    move/from16 v0, v17

    int-to-double v2, v0

    float-to-double v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v19, v0

    .line 386
    .local v19, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int v3, v3, p1

    sub-int/2addr v2, v3

    move/from16 v0, v17

    int-to-double v3, v0

    float-to-double v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    sub-int/2addr v2, v3

    div-int/lit8 v3, v12, 0x2

    sub-int v20, v2, v3

    .line 387
    .local v20, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    add-int v2, v2, v19

    div-int/lit8 v3, v18, 0x2

    sub-int v19, v2, v3

    .line 388
    add-int v2, v19, v18

    add-int v3, v20, v12

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/camera/ui/PieItem;->setBounds(IIII)V

    .line 389
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/camera/ui/PieItem;->setLevel(I)V

    .line 390
    invoke-virtual {v14}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v14}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/ui/PieRenderer;->layoutItems(ILjava/util/List;)V

    .line 393
    :cond_0
    add-int/lit8 v16, v16, 0x1

    .line 394
    goto :goto_0

    .line 395
    .end local v9    # "angle":F
    .end local v12    # "h":I
    .end local v14    # "item":Lcom/android/camera/ui/PieItem;
    .end local v17    # "r":I
    .end local v18    # "w":I
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_1
    return-void
.end method

.method private layoutLabel(I)V
    .locals 9
    .param p1, "level"    # I

    .prologue
    .line 362
    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v5, p0, Lcom/android/camera/ui/PieRenderer;->mCenterAngle:F

    sget v6, Lcom/android/camera/ui/PieRenderer;->CENTER:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    add-int/lit8 v7, p1, 0x2

    iget v8, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v2, v4, v5

    .line 364
    .local v2, "x":I
    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    iget v5, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x2

    iget v6, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v5, v6

    sub-int v3, v4, v5

    .line 365
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    invoke-virtual {v4}, Lcom/android/camera/drawable/TextDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 366
    .local v1, "w":I
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    invoke-virtual {v4}, Lcom/android/camera/drawable/TextDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 367
    .local v0, "h":I
    iget-object v4, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    div-int/lit8 v5, v1, 0x2

    sub-int v5, v2, v5

    div-int/lit8 v6, v0, 0x2

    sub-int v6, v3, v6

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v2

    div-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/camera/drawable/TextDrawable;->setBounds(IIII)V

    .line 368
    return-void
.end method

.method private layoutPie()V
    .locals 2

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getCenterAngle()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterAngle:F

    .line 357
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getRoot()Lcom/android/camera/ui/PieItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->layoutItems(ILjava/util/List;)V

    .line 358
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 359
    return-void
.end method

.method private makeSlice(FFIIII)Landroid/graphics/Path;
    .locals 7
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "inner"    # I
    .param p4, "outer"    # I
    .param p5, "cx"    # I
    .param p6, "cy"    # I

    .prologue
    .line 398
    new-instance v0, Landroid/graphics/RectF;

    sub-int v3, p5, p4

    int-to-float v3, v3

    sub-int v4, p6, p4

    int-to-float v4, v4

    add-int v5, p5, p4

    int-to-float v5, v5

    add-int v6, p6, p4

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 401
    .local v0, "bb":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-int v4, p6, p3

    int-to-float v4, v4

    add-int v5, p5, p3

    int-to-float v5, v5

    add-int v6, p6, p3

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 404
    .local v1, "bbi":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 405
    .local v2, "path":Landroid/graphics/Path;
    sub-float v3, p2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v0, p1, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 406
    sub-float v3, p1, p2

    invoke-virtual {v2, v1, p2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 407
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 408
    return-object v2
.end method

.method private moveSelection(Lcom/android/camera/ui/PieItem;Lcom/android/camera/ui/PieItem;)V
    .locals 8
    .param p1, "from"    # Lcom/android/camera/ui/PieItem;
    .param p2, "to"    # Lcom/android/camera/ui/PieItem;

    .prologue
    const/4 v5, -0x1

    const v6, 0x3deb851f

    .line 785
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getCurrentCount()I

    move-result v0

    .line 786
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->getItemPos(Lcom/android/camera/ui/PieItem;)I

    move-result v2

    .line 787
    .local v2, "fromPos":I
    invoke-direct {p0, p2}, Lcom/android/camera/ui/PieRenderer;->getItemPos(Lcom/android/camera/ui/PieItem;)I

    move-result v4

    .line 788
    .local v4, "toPos":I
    if-eq v2, v5, :cond_0

    if-eq v4, v5, :cond_0

    .line 789
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->getItemPos(Lcom/android/camera/ui/PieItem;)I

    move-result v5

    invoke-direct {p0, p1, v5, v0}, Lcom/android/camera/ui/PieRenderer;->getArcCenter(Lcom/android/camera/ui/PieItem;II)F

    move-result v5

    sub-float v3, v5, v6

    .line 791
    .local v3, "startAngle":F
    invoke-direct {p0, p2}, Lcom/android/camera/ui/PieRenderer;->getItemPos(Lcom/android/camera/ui/PieItem;)I

    move-result v5

    invoke-direct {p0, p2, v5, v0}, Lcom/android/camera/ui/PieRenderer;->getArcCenter(Lcom/android/camera/ui/PieItem;II)F

    move-result v5

    sub-float v1, v5, v6

    .line 793
    .local v1, "endAngle":F
    new-instance v5, Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;-><init>(Lcom/android/camera/ui/PieRenderer;FF)V

    iput-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    .line 794
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    const-wide/16 v6, 0x50

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setDuration(J)V

    .line 795
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    new-instance v6, Lcom/android/camera/ui/PieRenderer$4;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/PieRenderer$4;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 809
    iget-object v5, p0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mSlice:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 811
    .end local v1    # "endAngle":F
    .end local v3    # "startAngle":F
    :cond_0
    return-void
.end method

.method private onEnter(Lcom/android/camera/ui/PieItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 750
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/ui/PieItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 752
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 753
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->openCurrentItem()V

    .line 756
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 761
    :cond_1
    :goto_0
    return-void

    .line 759
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    goto :goto_0
.end method

.method private onEnterOpen()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->openCurrentItem()V

    .line 739
    :cond_0
    return-void
.end method

.method private onEnterSelect(Lcom/android/camera/ui/PieItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 724
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/ui/PieItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/PieRenderer;->moveSelection(Lcom/android/camera/ui/PieItem;Lcom/android/camera/ui/PieItem;)V

    .line 726
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 727
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 728
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 729
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    goto :goto_0
.end method

.method private openCurrentItem()V
    .locals 4

    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 817
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    .line 818
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->cancel()V

    .line 821
    :cond_0
    new-instance v1, Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;-><init>(Lcom/android/camera/ui/PieRenderer;FF)V

    iput-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    .line 822
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setDuration(J)V

    .line 823
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 824
    .local v0, "ci":Lcom/android/camera/ui/PieItem;
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    new-instance v2, Lcom/android/camera/ui/PieRenderer$5;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/ui/PieRenderer$5;-><init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieItem;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 840
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v1}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->startNow()V

    .line 841
    iget-object v1, p0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 843
    .end local v0    # "ci":Lcom/android/camera/ui/PieItem;
    :cond_1
    return-void
.end method

.method private pulledToCenter(Landroid/graphics/PointF;)Z
    .locals 3
    .param p1, "polarCoords"    # Landroid/graphics/PointF;

    .prologue
    .line 687
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mRadiusInc:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetPieCenter()V
    .locals 3

    .prologue
    .line 351
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    .line 352
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40200000

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    .line 353
    return-void
.end method

.method private setCircle(II)V
    .locals 6
    .param p1, "cx"    # I
    .param p2, "cy"    # I

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mCircle:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 906
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 908
    return-void
.end method

.method private show(Z)V
    .locals 8
    .param p1, "show"    # Z

    .prologue
    const/4 v5, 0x0

    .line 272
    if-eqz p1, :cond_4

    .line 273
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v6, :cond_0

    .line 274
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v6}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->cancel()V

    .line 276
    :cond_0
    const/16 v6, 0x8

    iput v6, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 278
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 279
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getRoot()Lcom/android/camera/ui/PieItem;

    move-result-object v4

    .line 280
    .local v4, "root":Lcom/android/camera/ui/PieItem;
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/PieItem;

    .line 281
    .local v3, "openItem":Lcom/android/camera/ui/PieItem;
    invoke-virtual {v3}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 282
    invoke-virtual {v3}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/PieItem;

    .line 283
    .local v2, "item":Lcom/android/camera/ui/PieItem;
    invoke-virtual {v2, v5}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    goto :goto_0

    .line 287
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/camera/ui/PieItem;
    .end local v3    # "openItem":Lcom/android/camera/ui/PieItem;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/android/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 289
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->layoutPie()V

    .line 291
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->fadeIn()V

    .line 302
    .end local v4    # "root":Lcom/android/camera/ui/PieItem;
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 303
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    :goto_2
    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    return-void

    .line 293
    :cond_4
    iput v5, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 294
    iput-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 295
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v6, :cond_5

    .line 296
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v6}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->cancel()V

    .line 298
    :cond_5
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    if-eqz v6, :cond_3

    .line 299
    iget-object v6, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/android/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 303
    :cond_6
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private startAnimation(JZF)V
    .locals 6
    .param p1, "duration"    # J
    .param p3, "timeout"    # Z
    .param p4, "toScale"    # F

    .prologue
    .line 997
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    int-to-float v4, v0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 999
    return-void
.end method

.method private startAnimation(JZFF)V
    .locals 2
    .param p1, "duration"    # J
    .param p3, "timeout"    # Z
    .param p4, "fromScale"    # F
    .param p5, "toScale"    # F

    .prologue
    .line 1003
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PieRenderer;->setVisible(Z)V

    .line 1004
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->reset()V

    .line 1005
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->setDuration(J)V

    .line 1006
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0, p4, p5}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->setScale(FF)V

    .line 1007
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/PieRenderer$ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1008
    iget-object v0, p0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mAnimation:Lcom/android/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1009
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->update()V

    .line 1010
    return-void

    .line 1007
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startFadeOut(Lcom/android/camera/ui/PieItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->cancel()V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->cancel()V

    .line 453
    :cond_1
    new-instance v0, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;-><init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    .line 454
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;->setDuration(J)V

    .line 455
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    new-instance v1, Lcom/android/camera/ui/PieRenderer$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/PieRenderer$3;-><init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieItem;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 473
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;->startNow()V

    .line 474
    iget-object v0, p0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 475
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/camera/ui/PieItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/camera/ui/PieItem;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getRoot()Lcom/android/camera/ui/PieItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PieItem;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 241
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 990
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 993
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->cancelFocus()V

    .line 992
    iget-object v0, p0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getRoot()Lcom/android/camera/ui/PieItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->clearItems()V

    .line 245
    return-void
.end method

.method public drawFocus(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x42340000

    .line 911
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mBlockFocus:Z

    if-eqz v0, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mOuterStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 913
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 914
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 916
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 917
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mSuccessColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mInnerStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 920
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 921
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    add-int/lit8 v0, v0, 0x2d

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 922
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    add-int/lit16 v0, v0, 0xb4

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 923
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    add-int/lit16 v0, v0, 0xe1

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/PieRenderer;->drawLine(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 924
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 926
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mDialAngle:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 927
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 928
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 929
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 930
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 917
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFailColor:I

    goto :goto_1
.end method

.method public handlesTouch()Z
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x1

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    .line 265
    return-void
.end method

.method public layout(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/OverlayRenderer;->layout(IIII)V

    .line 337
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    .line 338
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterY:I

    .line 340
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterX:I

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    .line 341
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mCenterY:I

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    .line 342
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->resetPieCenter()V

    .line 343
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->setCircle(II)V

    .line 344
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 345
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->setCenter(II)V

    .line 346
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->layoutPie()V

    .line 348
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 504
    const/high16 v9, 0x3f800000

    .line 505
    .local v9, "alpha":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_4

    .line 506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v3}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->getValue()F

    move-result v9

    .line 512
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v20

    .line 513
    .local v20, "state":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_1

    .line 514
    const v3, 0x3f666666

    const v4, 0x3dcccccd

    mul-float/2addr v4, v9

    add-float v19, v3, v4

    .line 515
    .local v19, "sf":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 517
    .end local v19    # "sf":F
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 518
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/ui/PieRenderer;->drawFocus(Landroid/graphics/Canvas;)V

    .line 520
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 521
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 554
    :cond_3
    :goto_1
    return-void

    .line 507
    .end local v20    # "state":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_5

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v3}, Lcom/android/camera/ui/PieRenderer$LinearAnimation;->getValue()F

    move-result v9

    goto :goto_0

    .line 509
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    if-eqz v3, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    invoke-virtual {v3}, Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;->getValue()F

    move-result v9

    goto :goto_0

    .line 524
    .restart local v20    # "state":I
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 525
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_9

    .line 527
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getParent()Lcom/android/camera/ui/PieItem;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/camera/ui/PieRenderer;->drawArc(Landroid/graphics/Canvas;ILcom/android/camera/ui/PieItem;)V

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getParent()Lcom/android/camera/ui/PieItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v18

    .line 529
    .local v18, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v6

    .line 530
    .local v6, "count":I
    const/4 v5, 0x0

    .line 531
    .local v5, "pos":I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getParent()Lcom/android/camera/ui/PieItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/PieItem;

    .line 532
    .local v8, "item":Lcom/android/camera/ui/PieItem;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/ui/PieRenderer;->drawItem(IIILandroid/graphics/Canvas;Lcom/android/camera/ui/PieItem;F)V

    .line 533
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 535
    .end local v8    # "item":Lcom/android/camera/ui/PieItem;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/camera/drawable/TextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 537
    .end local v5    # "pos":I
    .end local v6    # "count":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 538
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getLevel()I

    move-result v11

    .line 539
    .local v11, "level":I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v3}, Lcom/android/camera/ui/PieRenderer;->drawArc(Landroid/graphics/Canvas;ILcom/android/camera/ui/PieItem;)V

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/PieRenderer;->getOpenItem()Lcom/android/camera/ui/PieItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v18

    .line 541
    .restart local v18    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v6

    .line 542
    .restart local v6    # "count":I
    const/4 v5, 0x0

    .line 543
    .restart local v5    # "pos":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/camera/ui/PieItem;

    .line 544
    .local v15, "inner":Lcom/android/camera/ui/PieItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    if-eqz v3, :cond_a

    move-object/from16 v10, p0

    move v12, v5

    move v13, v6

    move-object/from16 v14, p1

    move/from16 v16, v9

    .line 545
    invoke-direct/range {v10 .. v16}, Lcom/android/camera/ui/PieRenderer;->drawItem(IIILandroid/graphics/Canvas;Lcom/android/camera/ui/PieItem;F)V

    .line 549
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 547
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mXFade:Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_b

    const/high16 v3, 0x3f800000

    const/high16 v4, 0x3f000000

    mul-float/2addr v4, v9

    sub-float v16, v3, v4

    :goto_5
    move-object/from16 v10, p0

    move v12, v5

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/ui/PieRenderer;->drawItem(IIILandroid/graphics/Canvas;Lcom/android/camera/ui/PieItem;F)V

    goto :goto_4

    :cond_b
    const/high16 v16, 0x3f800000

    goto :goto_5

    .line 551
    .end local v15    # "inner":Lcom/android/camera/ui/PieItem;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/camera/drawable/TextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 553
    .end local v5    # "pos":I
    .end local v6    # "count":I
    .end local v11    # "level":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/ui/PieItem;>;"
    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 605
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 606
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 607
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 608
    .local v0, "action":I
    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-nez v5, :cond_1

    move v5, v6

    :goto_0
    iget-object v8, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/android/camera/ui/PieRenderer;->getPolar(FFZLandroid/graphics/PointF;)V

    .line 609
    if-nez v0, :cond_5

    .line 610
    iget v5, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/android/camera/ui/PieRenderer;->mDeadZone:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    .line 683
    :cond_0
    :goto_1
    return v7

    :cond_1
    move v5, v7

    .line 608
    goto :goto_0

    .line 613
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Point;->x:I

    .line 614
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Point;->y:I

    .line 615
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    .line 616
    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v5, :cond_4

    .line 617
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/android/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 618
    .local v1, "item":Lcom/android/camera/ui/PieItem;
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eq v5, v1, :cond_3

    .line 619
    const/16 v5, 0x8

    iput v5, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 620
    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->onEnter(Lcom/android/camera/ui/PieItem;)V

    .end local v1    # "item":Lcom/android/camera/ui/PieItem;
    :cond_3
    :goto_2
    move v7, v6

    .line 626
    goto :goto_1

    .line 623
    :cond_4
    float-to-int v5, v3

    float-to-int v7, v4

    invoke-virtual {p0, v5, v7}, Lcom/android/camera/ui/PieRenderer;->setCenter(II)V

    .line 624
    invoke-direct {p0, v6}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    goto :goto_2

    .line 627
    :cond_5
    if-ne v6, v0, :cond_9

    .line 628
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 629
    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 630
    .restart local v1    # "item":Lcom/android/camera/ui/PieItem;
    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v5, :cond_6

    .line 631
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/android/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 632
    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    if-eqz v5, :cond_6

    .line 633
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    move v7, v6

    .line 634
    goto :goto_1

    .line 637
    :cond_6
    if-nez v1, :cond_7

    .line 638
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 639
    invoke-direct {p0, v7}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    :goto_3
    move v7, v6

    .line 646
    goto :goto_1

    .line 640
    :cond_7
    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    if-nez v5, :cond_8

    invoke-virtual {v1}, Lcom/android/camera/ui/PieItem;->hasItems()Z

    move-result v5

    if-nez v5, :cond_8

    .line 641
    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->startFadeOut(Lcom/android/camera/ui/PieItem;)V

    .line 642
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    goto :goto_3

    .line 644
    :cond_8
    iput-boolean v6, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    goto :goto_3

    .line 648
    .end local v1    # "item":Lcom/android/camera/ui/PieItem;
    :cond_9
    const/4 v5, 0x3

    if-ne v5, v0, :cond_c

    .line 649
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v5, :cond_b

    .line 650
    :cond_a
    invoke-direct {p0, v7}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    .line 652
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->deselect()V

    .line 653
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1

    .line 655
    :cond_c
    if-ne v10, v0, :cond_0

    .line 656
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/android/camera/ui/PieRenderer;->pulledToCenter(Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 657
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 658
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 659
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eqz v5, :cond_d

    .line 660
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v5, v7}, Lcom/android/camera/ui/PieItem;->setSelected(Z)V

    .line 662
    :cond_d
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->closeOpenItem()Lcom/android/camera/ui/PieItem;

    .line 663
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    .line 667
    :goto_4
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mLabel:Lcom/android/camera/drawable/TextDrawable;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/android/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 665
    :cond_e
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->deselect()V

    goto :goto_4

    .line 670
    :cond_f
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/android/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/android/camera/ui/PieItem;

    move-result-object v1

    .line 671
    .restart local v1    # "item":Lcom/android/camera/ui/PieItem;
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer;->hasMoved(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 672
    .local v2, "moved":Z
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mCurrentItem:Lcom/android/camera/ui/PieItem;

    if-eq v5, v1, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/ui/PieRenderer;->mOpening:Z

    if-eqz v5, :cond_10

    if-eqz v2, :cond_0

    .line 673
    :cond_10
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    if-eqz v2, :cond_11

    .line 677
    iput-boolean v7, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 679
    :cond_11
    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->onEnterSelect(Lcom/android/camera/ui/PieItem;)V

    .line 680
    iget-object v5, p0, Lcom/android/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x190

    invoke-virtual {v5, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1
.end method

.method public setBlockFocus(Z)V
    .locals 0
    .param p1, "blocked"    # Z

    .prologue
    .line 872
    iput-boolean p1, p0, Lcom/android/camera/ui/PieRenderer;->mBlockFocus:Z

    .line 873
    if-eqz p1, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->clear()V

    .line 876
    :cond_0
    return-void
.end method

.method public setCenter(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    .line 329
    iput p2, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    .line 330
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mSliceRadius:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mSliceCenterY:I

    .line 331
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mArcOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mArcRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mArcCenterY:I

    .line 332
    return-void
.end method

.method public setFocus(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 879
    iput p1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    .line 880
    iput p2, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    .line 881
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocusX:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mFocusY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->setCircle(II)V

    .line 882
    return-void
.end method

.method public setPieListener(Lcom/android/camera/ui/PieRenderer$PieListener;)V
    .locals 0
    .param p1, "pl"    # Lcom/android/camera/ui/PieRenderer$PieListener;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer;->mListener:Lcom/android/camera/ui/PieRenderer$PieListener;

    .line 177
    return-void
.end method

.method public showFail(Z)V
    .locals 3
    .param p1, "timeout"    # Z

    .prologue
    .line 969
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 970
    const-wide/16 v0, 0x64

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZF)V

    .line 972
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    .line 975
    :cond_0
    return-void
.end method

.method public showInCenter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iput-boolean v1, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 250
    invoke-direct {p0, v1}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    .line 261
    :goto_0
    return-void

    .line 252
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->cancelFocus()V

    .line 255
    :cond_1
    iput v3, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 256
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->resetPieCenter()V

    .line 257
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterX:I

    iget v1, p0, Lcom/android/camera/ui/PieRenderer;->mPieCenterY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/PieRenderer;->setCenter(II)V

    .line 258
    iput-boolean v2, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    .line 259
    invoke-direct {p0, v2}, Lcom/android/camera/ui/PieRenderer;->show(Z)V

    goto :goto_0
.end method

.method public showStart()V
    .locals 7

    .prologue
    .line 948
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 955
    :goto_0
    return-void

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->cancelFocus()V

    .line 950
    const/16 v0, 0x43

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    .line 951
    invoke-direct {p0}, Lcom/android/camera/ui/PieRenderer;->getRandomRange()I

    move-result v6

    .line 952
    .local v6, "range":I
    const-wide/16 v1, 0x258

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    add-int/2addr v0, v6

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 954
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    goto :goto_0
.end method

.method public showSuccess(Z)V
    .locals 4
    .param p1, "timeout"    # Z

    .prologue
    const/4 v3, 0x1

    .line 959
    iget v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    if-ne v0, v3, :cond_0

    .line 960
    const-wide/16 v0, 0x64

    iget v2, p0, Lcom/android/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/ui/PieRenderer;->startAnimation(JZF)V

    .line 962
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/PieRenderer;->mState:I

    .line 963
    iput-boolean v3, p0, Lcom/android/camera/ui/PieRenderer;->mFocused:Z

    .line 965
    :cond_0
    return-void
.end method

.method public showsItems()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/camera/ui/PieRenderer;->mTapMode:Z

    return v0
.end method
