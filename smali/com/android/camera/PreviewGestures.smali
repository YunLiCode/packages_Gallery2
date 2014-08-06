.class public Lcom/android/camera/PreviewGestures;
.super Ljava/lang/Object;
.source "PreviewGestures.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PreviewGestures$SwipeListener;,
        Lcom/android/camera/PreviewGestures$SingleTapListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mCurrent:Landroid/view/MotionEvent;

.field private mDown:Landroid/view/MotionEvent;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocation:[I

.field private mMode:I

.field private mOrientation:I

.field private mOverlay:Lcom/android/camera/ui/RenderOverlay;

.field private mPie:Lcom/android/camera/ui/PieRenderer;

.field private mReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:Landroid/view/ScaleGestureDetector;

.field private mSlop:I

.field private mSwipeListener:Lcom/android/camera/PreviewGestures$SwipeListener;

.field private mTapListener:Lcom/android/camera/PreviewGestures$SingleTapListener;

.field private mTapTimeout:I

.field private mUnclickableAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mZoom:Lcom/android/camera/ui/ZoomRenderer;

.field private mZoomOnly:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PreviewGestures$SingleTapListener;Lcom/android/camera/ui/ZoomRenderer;Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/PreviewGestures$SwipeListener;)V
    .locals 2
    .param p1, "ctx"    # Lcom/android/camera/CameraActivity;
    .param p2, "tapListener"    # Lcom/android/camera/PreviewGestures$SingleTapListener;
    .param p3, "zoom"    # Lcom/android/camera/ui/ZoomRenderer;
    .param p4, "pie"    # Lcom/android/camera/ui/PieRenderer;
    .param p5, "swipe"    # Lcom/android/camera/PreviewGestures$SwipeListener;

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/camera/PreviewGestures$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PreviewGestures$1;-><init>(Lcom/android/camera/PreviewGestures;)V

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object p1, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    .line 93
    iput-object p2, p0, Lcom/android/camera/PreviewGestures;->mTapListener:Lcom/android/camera/PreviewGestures$SingleTapListener;

    .line 94
    iput-object p4, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    .line 95
    iput-object p3, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    .line 96
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 97
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    .line 98
    invoke-virtual {p1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/PreviewGestures;->mSlop:I

    .line 99
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/camera/PreviewGestures;->mTapTimeout:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PreviewGestures;->mEnabled:Z

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    .line 102
    iput-object p5, p0, Lcom/android/camera/PreviewGestures;->mSwipeListener:Lcom/android/camera/PreviewGestures$SwipeListener;

    .line 103
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/PreviewGestures;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PreviewGestures;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/PreviewGestures;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->openPie()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/PreviewGestures;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PreviewGestures;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    return-object v0
.end method

.method private cancelPie()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    return-void
.end method

.method private checkClickable(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 158
    .local v1, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1}, Lcom/android/camera/PreviewGestures;->isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const/4 v2, 0x0

    .line 163
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Landroid/view/View;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkReceivers(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 287
    .local v1, "receiver":Landroid/view/View;
    invoke-direct {p0, p1, v1}, Lcom/android/camera/PreviewGestures;->isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    const/4 v2, 0x1

    .line 292
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "receiver":Landroid/view/View;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSwipeDirection(Landroid/view/MotionEvent;)I
    .locals 6
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x40000000

    const/4 v4, 0x0

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 299
    .local v1, "dy":F
    iget v2, p0, Lcom/android/camera/PreviewGestures;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 317
    :goto_0
    cmpg-float v2, v0, v4

    if-gez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v3, v0

    div-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    const/4 v2, 0x2

    .line 320
    :goto_1
    return v2

    .line 301
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 303
    goto :goto_0

    .line 305
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    neg-float v0, v2

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v1, v2, v3

    .line 307
    goto :goto_0

    .line 309
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    neg-float v0, v2

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 311
    goto :goto_0

    .line 313
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v0, v2, v3

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v1, v2, v3

    goto :goto_0

    .line 318
    :cond_0
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    .line 319
    :cond_1
    cmpl-float v2, v1, v4

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 320
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 299
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private isInside(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "evt"    # Landroid/view/MotionEvent;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xb4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 326
    invoke-virtual {p2}, Landroid/view/View;->getRotationY()F

    move-result v2

    float-to-int v2, v2

    if-ne v2, v5, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    aget v3, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v2, v1

    .line 330
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getRotationX()F

    move-result v2

    float-to-int v2, v2

    if-ne v2, v5, :cond_1

    .line 331
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    aget v3, v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v2, v0

    .line 333
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    aget v3, v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    aget v3, v3, v0

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PreviewGestures;->mLocation:[I

    aget v3, v3, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 343
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 344
    .local v0, "c":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 345
    return-object v0
.end method

.method private openPie()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v2}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 351
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RenderOverlay;->directDispatchTouch(Landroid/view/MotionEvent;Lcom/android/camera/ui/RenderOverlay$Renderer;)Z

    .line 352
    return-void
.end method

.method private sendToPie(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v1}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 361
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/RenderOverlay;->directDispatchTouch(Landroid/view/MotionEvent;Lcom/android/camera/ui/RenderOverlay$Renderer;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addTouchReceiver(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public addUnclickableArea(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public cancelActivityTouchHandling(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 340
    return-void
.end method

.method public clearTouchReceivers()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    :cond_0
    return-void
.end method

.method public clearUnclickableAreas()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mUnclickableAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    :cond_0
    return-void
.end method

.method public dispatchTouch(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 172
    iget-boolean v4, p0, Lcom/android/camera/PreviewGestures;->mEnabled:Z

    if-nez v4, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 280
    :goto_0
    return v1

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/android/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_5

    .line 177
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->checkReceivers(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    iput v7, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 179
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 182
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    .line 183
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v2}, Lcom/android/camera/ui/PieRenderer;->showsItems()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iput v3, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mPie:Lcom/android/camera/ui/PieRenderer;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/PreviewGestures;->mZoomOnly:Z

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->checkClickable(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 190
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v2, :cond_4

    .line 191
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 194
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 196
    :cond_5
    iget v4, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-nez v4, :cond_6

    move v1, v2

    .line 197
    goto :goto_0

    .line 198
    :cond_6
    iget v4, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-ne v4, v5, :cond_8

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v3, v2, :cond_7

    .line 200
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mSwipeListener:Lcom/android/camera/PreviewGestures$SwipeListener;

    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->getSwipeDirection(Landroid/view/MotionEvent;)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/camera/PreviewGestures$SwipeListener;->onSwipe(I)V

    :cond_7
    move v1, v3

    .line 202
    goto :goto_0

    .line 203
    :cond_8
    iget v4, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-ne v4, v3, :cond_b

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v5, v2, :cond_a

    .line 205
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    .line 206
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v2, :cond_9

    .line 207
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v2}, Lcom/android/camera/PreviewGestures;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    :cond_9
    move v1, v3

    .line 212
    goto/16 :goto_0

    .line 210
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 213
    :cond_b
    iget v4, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-ne v4, v6, :cond_d

    .line 214
    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 215
    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v4, v5, :cond_c

    .line 216
    iput v2, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 217
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v2}, Lcom/android/camera/PreviewGestures;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    :cond_c
    move v1, v3

    .line 219
    goto/16 :goto_0

    .line 220
    :cond_d
    iget v4, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-ne v4, v7, :cond_e

    .line 221
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 225
    :cond_e
    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    if-nez v4, :cond_f

    move v1, v3

    .line 226
    goto/16 :goto_0

    .line 228
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v5, v4, :cond_12

    .line 229
    iget-boolean v4, p0, Lcom/android/camera/PreviewGestures;->mZoomOnly:Z

    if-nez v4, :cond_10

    .line 230
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->cancelPie()V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->makeCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/camera/PreviewGestures;->sendToPie(Landroid/view/MotionEvent;)Z

    .line 233
    :cond_10
    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v4, :cond_11

    .line 234
    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 235
    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v4}, Lcom/android/camera/PreviewGestures;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    .line 244
    :cond_11
    :goto_1
    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    if-eqz v4, :cond_13

    .line 245
    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 246
    .local v1, "res":Z
    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 247
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->cancelPie()V

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 237
    .end local v1    # "res":Z
    :cond_12
    iget v4, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-ne v4, v6, :cond_11

    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v4, v5, :cond_11

    .line 240
    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 241
    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mScale:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v4}, Lcom/android/camera/PreviewGestures;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    goto :goto_1

    .line 252
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v3, v4, :cond_15

    .line 253
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->cancelPie()V

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v2, p0, Lcom/android/camera/PreviewGestures;->mTapTimeout:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_14

    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->checkClickable(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 258
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mTapListener:Lcom/android/camera/PreviewGestures$SingleTapListener;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v6}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionX()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    invoke-virtual {v7}, Lcom/android/camera/ui/RenderOverlay;->getWindowPositionY()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-interface {v2, v4, v5, v6}, Lcom/android/camera/PreviewGestures$SingleTapListener;->onSingleTapUp(Landroid/view/View;II)V

    move v1, v3

    .line 261
    goto/16 :goto_0

    .line 263
    :cond_14
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 265
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v6, v3, :cond_18

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/camera/PreviewGestures;->mSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PreviewGestures;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/camera/PreviewGestures;->mSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_18

    .line 269
    :cond_16
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->cancelPie()V

    .line 270
    invoke-direct {p0, p1}, Lcom/android/camera/PreviewGestures;->getSwipeDirection(Landroid/view/MotionEvent;)I

    move-result v0

    .line 271
    .local v0, "dir":I
    if-ne v0, v6, :cond_17

    .line 272
    iput v7, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 273
    iget-object v2, p0, Lcom/android/camera/PreviewGestures;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 275
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 276
    iput v2, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .end local v0    # "dir":I
    :cond_18
    move v1, v2

    .line 280
    goto/16 :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x2

    .line 371
    iget v0, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    if-eq v0, v1, :cond_0

    .line 372
    iput v1, p0, Lcom/android/camera/PreviewGestures;->mMode:I

    .line 373
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/android/camera/PreviewGestures;->cancelActivityTouchHandling(Landroid/view/MotionEvent;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mCurrent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mZoom:Lcom/android/camera/ui/ZoomRenderer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomRenderer;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 387
    :cond_0
    return-void
.end method

.method public removeTouchReceiver(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PreviewGestures;->mReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/camera/PreviewGestures;->clearTouchReceivers()V

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/PreviewGestures;->clearUnclickableAreas()V

    .line 169
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/camera/PreviewGestures;->mEnabled:Z

    .line 115
    if-nez p1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/camera/PreviewGestures;->cancelPie()V

    .line 118
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/camera/PreviewGestures;->mOrientation:I

    .line 111
    return-void
.end method

.method public setRenderOverlay(Lcom/android/camera/ui/RenderOverlay;)V
    .locals 0
    .param p1, "overlay"    # Lcom/android/camera/ui/RenderOverlay;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/PreviewGestures;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    .line 107
    return-void
.end method

.method public setZoomOnly(Z)V
    .locals 0
    .param p1, "zoom"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/camera/PreviewGestures;->mZoomOnly:Z

    .line 122
    return-void
.end method
