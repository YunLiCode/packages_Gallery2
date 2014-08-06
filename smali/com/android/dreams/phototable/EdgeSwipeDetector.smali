.class public Lcom/android/dreams/phototable/EdgeSwipeDetector;
.super Ljava/lang/Object;
.source "EdgeSwipeDetector.java"


# instance fields
.field private mEdgeSwipe:Z

.field private mEdgeSwipeGutter:F

.field private mEdgeSwipeThreshold:F

.field private final mTable:Lcom/android/dreams/phototable/PhotoTable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dreams/phototable/PhotoTable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "table"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    const v2, 0x49742400

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0d0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mEdgeSwipeGutter:F

    .line 38
    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mEdgeSwipeThreshold:F

    .line 39
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    move v2, v3

    .line 74
    :cond_1
    :goto_0
    return v2

    .line 44
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v4

    iget v5, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mEdgeSwipeGutter:F

    mul-float v0, v4, v5

    .line 46
    .local v0, "edgeGutter":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v4, v4, v0

    if-gez v4, :cond_0

    .line 47
    iput-boolean v2, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mEdgeSwipe:Z

    goto :goto_0

    .line 53
    .end local v0    # "edgeGutter":F
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mEdgeSwipe:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 59
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mEdgeSwipe:Z

    if-eqz v4, :cond_0

    .line 60
    iput-boolean v3, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mEdgeSwipe:Z

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v3

    iget v4, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mEdgeSwipeThreshold:F

    mul-float v1, v3, v4

    .line 63
    .local v1, "enough":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v3}, Lcom/android/dreams/phototable/PhotoTable;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    iget-object v3, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v4, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v4}, Lcom/android/dreams/phototable/PhotoTable;->getFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/dreams/phototable/PhotoTable;->fling(Landroid/view/View;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v3, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v3}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/android/dreams/phototable/EdgeSwipeDetector;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v3}, Lcom/android/dreams/phototable/PhotoTable;->clearSelection()V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
