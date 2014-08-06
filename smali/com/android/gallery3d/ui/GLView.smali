.class public Lcom/android/gallery3d/ui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GLView$OnClickListener;
    }
.end annotation


# static fields
.field private static final FLAG_INVISIBLE:I = 0x1

.field private static final FLAG_LAYOUT_REQUESTED:I = 0x4

.field private static final FLAG_SET_MEASURED_SIZE:I = 0x2

.field public static final INVISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLView"

.field public static final VISIBLE:I


# instance fields
.field private mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

.field private mBackgroundColor:[F

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcom/android/gallery3d/ui/GLView;

.field protected final mPaddings:Landroid/graphics/Rect;

.field protected mParent:Lcom/android/gallery3d/ui/GLView;

.field private mRoot:Lcom/android/gallery3d/ui/GLRoot;

.field protected mScrollHeight:I

.field protected mScrollWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

.field private mViewFlags:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    .line 69
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 71
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredWidth:I

    .line 72
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    .line 74
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 75
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 77
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    .line 78
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    .line 79
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollHeight:I

    .line 80
    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mScrollWidth:I

    return-void
.end method

.method private removeOneComponent(Lcom/android/gallery3d/ui/GLView;)V
    .locals 9
    .param p1, "component"    # Lcom/android/gallery3d/ui/GLView;

    .prologue
    const/4 v5, 0x0

    .line 176
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    if-ne v2, p1, :cond_0

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 178
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 180
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 181
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 183
    .end local v0    # "now":J
    .end local v8    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    .line 184
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    .line 185
    return-void
.end method

.method private setBounds(IIII)Z
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 359
    sub-int v1, p3, p1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 361
    .local v0, "sizeChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 362
    return v0

    .line 359
    .end local v0    # "sizeChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .param p1, "component"    # Lcom/android/gallery3d/ui/GLView;

    .prologue
    .line 142
    iget-object v0, p1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iput-object p0, p1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 155
    :cond_2
    return-void
.end method

.method public attachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 1
    .param p1, "root"    # Lcom/android/gallery3d/ui/GLRoot;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 118
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public detachFromRoot()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    .line 124
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 313
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 314
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 315
    .local v10, "action":I
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    .line 316
    if-nez v10, :cond_2

    .line 317
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 318
    .local v1, "cancel":Landroid/view/MotionEvent;
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 319
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 330
    .end local v1    # "cancel":Landroid/view/MotionEvent;
    :cond_0
    if-nez v10, :cond_6

    .line 332
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_6

    .line 333
    invoke-virtual {p0, v11}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v8

    .line 334
    .local v8, "component":Lcom/android/gallery3d/ui/GLView;
    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 332
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 322
    .end local v8    # "component":Lcom/android/gallery3d/ui/GLView;
    .end local v11    # "i":I
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    .line 323
    const/4 v0, 0x3

    if-eq v10, v0, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    .line 325
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 327
    :cond_4
    const/4 v0, 0x1

    .line 341
    :goto_1
    return v0

    .line 335
    .restart local v8    # "component":Lcom/android/gallery3d/ui/GLView;
    .restart local v11    # "i":I
    :cond_5
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iput-object v8, p0, Lcom/android/gallery3d/ui/GLView;->mMotionTarget:Lcom/android/gallery3d/ui/GLView;

    .line 337
    const/4 v0, 0x1

    goto :goto_1

    .line 341
    .end local v8    # "component":Lcom/android/gallery3d/ui/GLView;
    .end local v11    # "i":I
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/android/gallery3d/ui/GLView;Z)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "component"    # Lcom/android/gallery3d/ui/GLView;
    .param p5, "checkBounds"    # Z

    .prologue
    .line 297
    iget-object v1, p4, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 298
    .local v1, "rect":Landroid/graphics/Rect;
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 299
    .local v0, "left":I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 300
    .local v2, "top":I
    if-eqz p5, :cond_0

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 301
    :cond_0
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 302
    invoke-virtual {p4, p1}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 304
    const/4 v3, 0x1

    .line 308
    :goto_0
    return v3

    .line 306
    :cond_1
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 308
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method dumpTree(Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 460
    const-string v2, "GLView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 462
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/GLView;->dumpTree(Ljava/lang/String;)V

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method

.method public getBackgroundColor()[F
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBackgroundColor:[F

    return-object v0
.end method

.method public getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "descendant"    # Lcom/android/gallery3d/ui/GLView;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 407
    const/4 v2, 0x0

    .line 408
    .local v2, "xoffset":I
    const/4 v3, 0x0

    .line 409
    .local v3, "yoffset":I
    move-object v1, p1

    .line 410
    .local v1, "view":Lcom/android/gallery3d/ui/GLView;
    :goto_0
    if-eq v1, p0, :cond_1

    .line 411
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 419
    :goto_1
    return v4

    .line 412
    :cond_0
    iget-object v0, v1, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 413
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    .line 414
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 415
    iget-object v1, v1, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    .line 416
    goto :goto_0

    .line 417
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 419
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getComponent(I)Lcom/android/gallery3d/ui/GLView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGLRoot()Lcom/android/gallery3d/ui/GLRoot;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 207
    .local v0, "root":Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 208
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 349
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/GLView;->setBounds(IIII)Z

    move-result v1

    .line 350
    .local v1, "sizeChanged":Z
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 355
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 356
    return-void
.end method

.method public lockRendering()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 449
    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 366
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 380
    :cond_0
    return-void

    .line 371
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 372
    iput p2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 374
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/GLView;->onMeasure(II)V

    .line 376
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 3
    .param p1, "root"    # Lcom/android/gallery3d/ui/GLRoot;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 433
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 434
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/GLView;->onAttachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 3

    .prologue
    .line 439
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->onDetachFromRoot()V

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    .line 443
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 401
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 383
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 423
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 424
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v0

    .line 425
    .local v0, "child":Lcom/android/gallery3d/ui/GLView;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 426
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    .line 423
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "child":Lcom/android/gallery3d/ui/GLView;
    :cond_1
    return-void
.end method

.method public removeAllComponents()V
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/GLView;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/GLView;->removeOneComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 173
    return-void
.end method

.method public removeComponent(Lcom/android/gallery3d/ui/GLView;)Z
    .locals 2
    .param p1, "component"    # Lcom/android/gallery3d/ui/GLView;

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLView;->removeOneComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 162
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected render(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "transitionActive":Z
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 228
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v3}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->isActive()Z

    move-result v2

    .line 230
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->renderBackground(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 231
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->save()V

    .line 232
    if-eqz v2, :cond_1

    .line 233
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v3, p0, p1}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyContentTransform(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 235
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getComponentCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/gallery3d/ui/GLView;->renderChild(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_2
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 239
    if-eqz v2, :cond_3

    .line 240
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v3, p0, p1}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyOverlay(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 242
    :cond_3
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 1
    .param p1, "view"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBackgroundColor:[F

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mBackgroundColor:[F

    invoke-interface {p1, v0}, Lcom/android/gallery3d/glrenderer/GLCanvas;->clearBuffer([F)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0, p0, p1}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->applyBackground(Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 265
    :cond_1
    return-void
.end method

.method protected renderChild(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V
    .locals 5
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "component"    # Lcom/android/gallery3d/ui/GLView;

    .prologue
    .line 268
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    if-nez v3, :cond_0

    .line 289
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/gallery3d/ui/GLView;->mScrollX:I

    sub-int v1, v3, v4

    .line 272
    .local v1, "xoffset":I
    iget-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/gallery3d/ui/GLView;->mScrollY:I

    sub-int v2, v3, v4

    .line 274
    .local v2, "yoffset":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-interface {p1, v3, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 276
    iget-object v0, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 277
    .local v0, "anim":Lcom/android/gallery3d/anim/CanvasAnimation;
    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 279
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/anim/CanvasAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 284
    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/anim/CanvasAnimation;->apply(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 286
    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 287
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 288
    :cond_2
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-interface {p1, v3, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 282
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 212
    iget v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 213
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastHeightSpec:I

    .line 214
    iput v2, p0, Lcom/android/gallery3d/ui/GLView;->mLastWidthSpec:I

    .line 215
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLView;->requestLayout()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 220
    .local v0, "root":Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setBackgroundColor([F)V
    .locals 0
    .param p1, "color"    # [F

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLView;->mBackgroundColor:[F

    .line 255
    return-void
.end method

.method public setIntroAnimation(Lcom/android/gallery3d/anim/StateTransitionAnimation;)V
    .locals 1
    .param p1, "intro"    # Lcom/android/gallery3d/anim/StateTransitionAnimation;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;->start()V

    .line 247
    :cond_0
    return-void
.end method

.method protected setMeasuredSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 386
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 387
    iput p1, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredWidth:I

    .line 388
    iput p2, p0, Lcom/android/gallery3d/ui/GLView;->mMeasuredHeight:I

    .line 389
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_0
    if-nez p1, :cond_1

    .line 101
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    .line 105
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/GLView;->onVisibilityChanged(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 103
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLView;->mViewFlags:I

    goto :goto_1
.end method

.method public startAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V
    .locals 2
    .param p1, "animation"    # Lcom/android/gallery3d/anim/CanvasAnimation;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 87
    .local v0, "root":Lcom/android/gallery3d/ui/GLRoot;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 89
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v1}, Lcom/android/gallery3d/anim/CanvasAnimation;->start()V

    .line 91
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->registerLaunchedAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 94
    return-void
.end method

.method public unlockRendering()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLView;->mRoot:Lcom/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 455
    :cond_0
    return-void
.end method
