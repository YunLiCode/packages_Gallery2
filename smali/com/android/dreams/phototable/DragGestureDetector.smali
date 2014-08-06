.class public Lcom/android/dreams/phototable/DragGestureDetector;
.super Ljava/lang/Object;
.source "DragGestureDetector.java"


# instance fields
.field private mCurrent:[F

.field private mDrag:Z

.field private mLast:[F

.field private final mTable:Lcom/android/dreams/phototable/PhotoTable;

.field private final mTouchGain:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dreams/phototable/PhotoTable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "table"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    const/4 v3, 0x2

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x49742400

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mTouchGain:F

    .line 39
    iput-object p2, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    .line 40
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mLast:[F

    .line 41
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mCurrent:[F

    .line 42
    return-void
.end method

.method private computeAveragePosition(Landroid/view/MotionEvent;[F)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "position"    # [F

    .prologue
    .line 45
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dreams/phototable/DragGestureDetector;->computeAveragePosition(Landroid/view/MotionEvent;[FI)V

    .line 46
    return-void
.end method

.method private computeAveragePosition(Landroid/view/MotionEvent;[FI)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "position"    # [F
    .param p3, "ignore"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 50
    .local v2, "pointerCount":I
    aput v3, p2, v5

    .line 51
    aput v3, p2, v6

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "count":F
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 54
    if-eq v1, p3, :cond_0

    .line 55
    aget v3, p2, v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v3, v4

    aput v3, p2, v5

    .line 56
    aget v3, p2, v6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v3, v4

    aput v3, p2, v6

    .line 57
    const/high16 v3, 0x3f800000

    add-float/2addr v0, v3

    .line 53
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_1
    aget v3, p2, v5

    div-float/2addr v3, v0

    aput v3, p2, v5

    .line 61
    aget v3, p2, v6

    div-float/2addr v3, v0

    aput v3, p2, v6

    .line 62
    return-void
.end method

.method private move(Landroid/view/MotionEvent;Z)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "drop"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoTable;->getFocus()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mTouchGain:F

    iget-object v3, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mCurrent:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mLast:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mTouchGain:F

    iget-object v4, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mCurrent:[F

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mLast:[F

    aget v5, v5, v7

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/dreams/phototable/PhotoTable;->move(Landroid/view/View;FFZ)V

    .line 109
    iget-object v0, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mLast:[F

    iget-object v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mCurrent:[F

    aget v1, v1, v6

    aput v1, v0, v6

    .line 110
    iget-object v0, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mLast:[F

    iget-object v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mCurrent:[F

    aget v1, v1, v7

    aput v1, v0, v7

    .line 111
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 66
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mDrag:Z

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoTable;->refreshFocus()V

    .line 101
    :cond_1
    iget-boolean v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mDrag:Z

    return v1

    .line 68
    :pswitch_1
    iget-object v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mLast:[F

    invoke-direct {p0, p1, v1}, Lcom/android/dreams/phototable/DragGestureDetector;->computeAveragePosition(Landroid/view/MotionEvent;[F)V

    .line 69
    iput-boolean v2, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mDrag:Z

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoTable;->hasFocus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mDrag:Z

    .line 74
    iget-object v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mLast:[F

    invoke-direct {p0, p1, v1}, Lcom/android/dreams/phototable/DragGestureDetector;->computeAveragePosition(Landroid/view/MotionEvent;[F)V

    goto :goto_0

    .line 78
    :pswitch_3
    iget-object v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mLast:[F

    invoke-direct {p0, p1, v1, v0}, Lcom/android/dreams/phototable/DragGestureDetector;->computeAveragePosition(Landroid/view/MotionEvent;[FI)V

    goto :goto_0

    .line 82
    :pswitch_4
    iget-object v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mCurrent:[F

    invoke-direct {p0, p1, v1}, Lcom/android/dreams/phototable/DragGestureDetector;->computeAveragePosition(Landroid/view/MotionEvent;[F)V

    .line 83
    iget-boolean v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mDrag:Z

    if-eqz v1, :cond_0

    .line 84
    invoke-direct {p0, p1, v2}, Lcom/android/dreams/phototable/DragGestureDetector;->move(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    .line 90
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mDrag:Z

    if-eqz v1, :cond_2

    .line 91
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/dreams/phototable/DragGestureDetector;->move(Landroid/view/MotionEvent;Z)V

    .line 93
    :cond_2
    iput-boolean v2, p0, Lcom/android/dreams/phototable/DragGestureDetector;->mDrag:Z

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
