.class public Lcom/android/gallery3d/filtershow/state/StatePanelTrack;
.super Landroid/widget/LinearLayout;
.source "StatePanelTrack.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/state/PanelTrack;


# instance fields
.field private mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

.field private mCurrentSelectedView:Lcom/android/gallery3d/filtershow/state/StateView;

.field private mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

.field private mDeleteSlope:F

.field private mDragListener:Lcom/android/gallery3d/filtershow/state/DragListener;

.field private mElemEndSize:I

.field private mElemHeight:I

.field private mElemSize:I

.field private mElemWidth:I

.field private mEndElemHeight:I

.field private mEndElemWidth:I

.field private mExited:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMaxTouchDelay:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mStartedDrag:Z

.field private mTouchPoint:Landroid/graphics/Point;

.field private mTouchTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mExited:Z

    .line 47
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mStartedDrag:Z

    .line 49
    new-instance v2, Lcom/android/gallery3d/filtershow/state/DragListener;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/state/DragListener;-><init>(Lcom/android/gallery3d/filtershow/state/PanelTrack;)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mDragListener:Lcom/android/gallery3d/filtershow/state/DragListener;

    .line 50
    const v2, 0x3e4ccccd

    iput v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mDeleteSlope:F

    .line 59
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mMaxTouchDelay:I

    .line 61
    new-instance v2, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$1;-><init>(Lcom/android/gallery3d/filtershow/state/StatePanelTrack;)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mObserver:Landroid/database/DataSetObserver;

    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/gallery3d/R$styleable;->StatePanelTrack:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemSize:I

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemEndSize:I

    .line 80
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getOrientation()I

    move-result v2

    if-nez v2, :cond_0

    .line 81
    iget v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemSize:I

    iput v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemWidth:I

    .line 82
    iput v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemHeight:I

    .line 83
    iget v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemEndSize:I

    iput v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mEndElemWidth:I

    .line 84
    iput v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mEndElemHeight:I

    .line 91
    :goto_0
    new-instance v1, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack$2;-><init>(Lcom/android/gallery3d/filtershow/state/StatePanelTrack;)V

    .line 103
    .local v1, "simpleOnGestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mGestureDetector:Landroid/view/GestureDetector;

    .line 104
    return-void

    .line 86
    .end local v1    # "simpleOnGestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_0
    iput v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemWidth:I

    .line 87
    iget v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemSize:I

    iput v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemHeight:I

    .line 88
    iput v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mEndElemWidth:I

    .line 89
    iget v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemEndSize:I

    iput v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mEndElemHeight:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/state/StatePanelTrack;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/state/StatePanelTrack;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->longPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/state/StatePanelTrack;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/state/StatePanelTrack;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->addDuplicate(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private addDuplicate(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/android/gallery3d/filtershow/state/StateView;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->findChild(Landroid/view/View;)I

    move-result v0

    .line 111
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    new-instance v2, Lcom/android/gallery3d/filtershow/state/State;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/state/StateView;->getState()Lcom/android/gallery3d/filtershow/state/State;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/gallery3d/filtershow/state/State;-><init>(Lcom/android/gallery3d/filtershow/state/State;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->insert(Ljava/lang/Object;I)V

    .line 113
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->fillContent(Z)V

    goto :goto_0
.end method

.method private longPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->findChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    instance-of v2, v1, Lcom/android/gallery3d/filtershow/state/StateView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 123
    check-cast v0, Lcom/android/gallery3d/filtershow/state/StateView;

    .line 124
    .local v0, "stateView":Lcom/android/gallery3d/filtershow/state/StateView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/state/StateView;->setDuplicateButton(Z)V

    goto :goto_0
.end method


# virtual methods
.method public checkEndState()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 275
    iput-object v9, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    .line 276
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchTime:J

    .line 277
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mExited:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/state/StateView;->getBackgroundAlpha()F

    move-result v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mDeleteSlope:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 278
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->findChild(Landroid/view/View;)I

    move-result v3

    .line 279
    .local v3, "origin":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 280
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/state/State;

    .line 281
    .local v1, "current":Lcom/android/gallery3d/filtershow/state/State;
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 282
    .local v2, "currentRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/state/State;->getFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v4

    .line 283
    .local v4, "removedRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    invoke-virtual {v5, v1}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->remove(Lcom/android/gallery3d/filtershow/state/State;)V

    .line 284
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->fillContent(Z)V

    .line 285
    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 288
    .local v0, "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->backToMain()V

    .line 306
    .end local v0    # "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .end local v1    # "current":Lcom/android/gallery3d/filtershow/state/State;
    .end local v2    # "currentRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .end local v3    # "origin":I
    .end local v4    # "removedRep":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/state/StateView;->setBackgroundAlpha(F)V

    .line 294
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/state/StateView;->setTranslationX(F)V

    .line 295
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/state/StateView;->setTranslationY(F)V

    .line 297
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/android/gallery3d/filtershow/state/StateView;

    if-eqz v5, :cond_3

    .line 298
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/state/StateView;->invalidate()V

    .line 300
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    if-eqz v5, :cond_4

    .line 301
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/state/StateView;->invalidate()V

    .line 303
    :cond_4
    iput-object v9, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    .line 304
    iput-boolean v8, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mExited:Z

    .line 305
    iput-boolean v8, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mStartedDrag:Z

    goto :goto_0
.end method

.method public fillContent(Z)V
    .locals 10
    .param p1, "animate"    # Z

    .prologue
    const/4 v9, 0x0

    .line 147
    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p0, v9}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 150
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getCount()I

    move-result v2

    .line 151
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/state/StateView;

    .line 153
    .local v0, "child":Lcom/android/gallery3d/filtershow/state/StateView;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/state/StateView;->resetPosition()V

    .line 154
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/state/StateView;->getState()Lcom/android/gallery3d/filtershow/state/State;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->contains(Lcom/android/gallery3d/filtershow/state/State;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->removeView(Landroid/view/View;)V

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "child":Lcom/android/gallery3d/filtershow/state/StateView;
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemWidth:I

    iget v8, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mElemHeight:I

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 160
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    invoke-virtual {v7, v1}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/state/State;

    .line 161
    .local v4, "s":Lcom/android/gallery3d/filtershow/state/State;
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->findChildWithState(Lcom/android/gallery3d/filtershow/state/State;)Lcom/android/gallery3d/filtershow/state/StateView;

    move-result-object v7

    if-nez v7, :cond_3

    .line 162
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    invoke-virtual {v7, v1, v9, p0}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 163
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6, v1, v3}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    .end local v4    # "s":Lcom/android/gallery3d/filtershow/state/State;
    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_7

    .line 168
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    invoke-virtual {v7, v1}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/state/State;

    .line 169
    .local v5, "state":Lcom/android/gallery3d/filtershow/state/State;
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/state/StateView;

    .line 170
    .local v6, "view":Lcom/android/gallery3d/filtershow/state/StateView;
    invoke-virtual {v6, v5}, Lcom/android/gallery3d/filtershow/state/StateView;->setState(Lcom/android/gallery3d/filtershow/state/State;)V

    .line 171
    if-nez v1, :cond_5

    .line 172
    sget v7, Lcom/android/gallery3d/filtershow/state/StateView;->BEGIN:I

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/filtershow/state/StateView;->setType(I)V

    .line 178
    :goto_3
    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/state/StateView;->resetPosition()V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 173
    :cond_5
    add-int/lit8 v7, v2, -0x1

    if-ne v1, v7, :cond_6

    .line 174
    sget v7, Lcom/android/gallery3d/filtershow/state/StateView;->END:I

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/filtershow/state/StateView;->setType(I)V

    goto :goto_3

    .line 176
    :cond_6
    sget v7, Lcom/android/gallery3d/filtershow/state/StateView;->DEFAULT:I

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/filtershow/state/StateView;->setType(I)V

    goto :goto_3

    .line 181
    .end local v5    # "state":Lcom/android/gallery3d/filtershow/state/State;
    .end local v6    # "view":Lcom/android/gallery3d/filtershow/state/StateView;
    :cond_7
    if-nez p1, :cond_8

    .line 182
    new-instance v7, Landroid/animation/LayoutTransition;

    invoke-direct {v7}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 184
    :cond_8
    return-void
.end method

.method public findChild(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 323
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 329
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 323
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public findChildAt(II)Landroid/view/View;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 309
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 310
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getScrollX()I

    move-result v5

    add-int v3, v5, p1

    .line 311
    .local v3, "scrolledXInt":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getScrollY()I

    move-result v5

    add-int v4, v5, p2

    .line 312
    .local v4, "scrolledYInt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 313
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 314
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 315
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 312
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findChildWithState(Lcom/android/gallery3d/filtershow/state/State;)Lcom/android/gallery3d/filtershow/state/StateView;
    .locals 3
    .param p1, "state"    # Lcom/android/gallery3d/filtershow/state/State;

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/state/StateView;

    .line 139
    .local v1, "view":Lcom/android/gallery3d/filtershow/state/StateView;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/state/StateView;->getState()Lcom/android/gallery3d/filtershow/state/State;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 143
    .end local v1    # "view":Lcom/android/gallery3d/filtershow/state/StateView;
    :goto_1
    return-object v1

    .line 137
    .restart local v1    # "view":Lcom/android/gallery3d/filtershow/state/StateView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "view":Lcom/android/gallery3d/filtershow/state/StateView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    return-object v0
.end method

.method public getCurrentView()Lcom/android/gallery3d/filtershow/state/StateView;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    return-object v0
.end method

.method public getTouchPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;Lcom/android/gallery3d/filtershow/state/StateView;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Lcom/android/gallery3d/filtershow/state/StateView;

    .prologue
    .line 187
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/state/StateView;->isDraggable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    .line 191
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/android/gallery3d/filtershow/state/StateView;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    if-eq v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/android/gallery3d/filtershow/state/StateView;

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/android/gallery3d/filtershow/state/StateView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/state/StateView;->setSelected(Z)V

    .line 199
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 200
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 201
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 202
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentSelectedView:Lcom/android/gallery3d/filtershow/state/StateView;

    .line 204
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchTime:J

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x3f800000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 218
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    if-nez v6, :cond_0

    .line 271
    :goto_0
    return v4

    .line 221
    :cond_0
    iget-wide v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchTime:J

    .line 224
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 225
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    if-nez v6, :cond_2

    .line 226
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    .line 227
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 228
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 231
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float v3, v6, v7

    .line 233
    .local v3, "translation":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/state/StateView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v1, v10, v6

    .line 234
    .local v1, "alpha":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getOrientation()I

    move-result v6

    if-ne v6, v5, :cond_7

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float v3, v6, v7

    .line 236
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/state/StateView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v1, v10, v6

    .line 237
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v6, v3}, Lcom/android/gallery3d/filtershow/state/StateView;->setTranslationX(F)V

    .line 241
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/filtershow/state/StateView;->setBackgroundAlpha(F)V

    .line 249
    .end local v1    # "alpha":F
    .end local v3    # "translation":F
    :cond_3
    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mExited:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/state/StateView;->getBackgroundAlpha()F

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mDeleteSlope:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-ne v6, v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mTouchTime:J

    sub-long/2addr v6, v8

    iget v8, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mMaxTouchDelay:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 253
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/state/StateView;->getState()Lcom/android/gallery3d/filtershow/state/State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/state/State;->getFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 254
    .local v2, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/filtershow/state/StateView;->setSelected(Z)V

    .line 255
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v6

    if-eq v2, v6, :cond_4

    .line 256
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 257
    .local v0, "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 258
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/filtershow/state/StateView;->setSelected(Z)V

    .line 261
    .end local v0    # "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .end local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eq v6, v5, :cond_5

    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mStartedDrag:Z

    if-nez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 263
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->checkEndState()V

    .line 264
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    if-eqz v6, :cond_6

    .line 265
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/state/StateView;->getState()Lcom/android/gallery3d/filtershow/state/State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/state/State;->getFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 266
    .restart local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result v6

    const v7, 0x7f0a0054

    if-ne v6, v7, :cond_6

    .line 267
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/filtershow/state/StateView;->setSelected(Z)V

    .end local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_6
    move v4, v5

    .line 271
    goto/16 :goto_0

    .line 239
    .restart local v1    # "alpha":F
    .restart local v3    # "translation":F
    :cond_7
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    invoke-virtual {v6, v3}, Lcom/android/gallery3d/filtershow/state/StateView;->setTranslationY(F)V

    goto/16 :goto_1
.end method

.method public setAdapter(Lcom/android/gallery3d/filtershow/state/StateAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/gallery3d/filtershow/state/StateAdapter;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mAdapter:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->setOrientation(I)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->fillContent(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->requestLayout()V

    .line 134
    return-void
.end method

.method public setCurrentView(Landroid/view/View;)V
    .locals 0
    .param p1, "currentView"    # Landroid/view/View;

    .prologue
    .line 337
    check-cast p1, Lcom/android/gallery3d/filtershow/state/StateView;

    .end local p1    # "currentView":Landroid/view/View;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mCurrentView:Lcom/android/gallery3d/filtershow/state/StateView;

    .line 338
    return-void
.end method

.method public setExited(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/state/StatePanelTrack;->mExited:Z

    .line 342
    return-void
.end method
