.class public Lcom/android/gallery3d/filtershow/editors/SwapButton;
.super Landroid/widget/Button;
.source "SwapButton.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;
    }
.end annotation


# static fields
.field public static ANIM_DURATION:I


# instance fields
.field private mCurrentMenuIndex:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mListener:Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;

.field private mMenu:Landroid/view/Menu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xc8

    sput v0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->ANIM_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mDetector:Landroid/view/GestureDetector;

    .line 44
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mMenu:Landroid/view/Menu;

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 92
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mCurrentMenuIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mCurrentMenuIndex:I

    .line 93
    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mCurrentMenuIndex:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 94
    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mCurrentMenuIndex:I

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mListener:Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mListener:Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mMenu:Landroid/view/Menu;

    iget v2, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mCurrentMenuIndex:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;->swapRight(Landroid/view/MenuItem;)V

    .line 109
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mCurrentMenuIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mCurrentMenuIndex:I

    .line 102
    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mCurrentMenuIndex:I

    if-gez v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mCurrentMenuIndex:I

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mListener:Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mListener:Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mMenu:Landroid/view/Menu;

    iget v2, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mCurrentMenuIndex:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;->swapLeft(Landroid/view/MenuItem;)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/SwapButton;->callOnClick()Z

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setListener(Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/SwapButton;->mListener:Lcom/android/gallery3d/filtershow/editors/SwapButton$SwapButtonListener;

    .line 52
    return-void
.end method
