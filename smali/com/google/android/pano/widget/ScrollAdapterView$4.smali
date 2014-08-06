.class Lcom/google/android/pano/widget/ScrollAdapterView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;)V
    .locals 1

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1729
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1732
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->requestFocus()Z

    .line 1733
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1734
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedViews:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$100(Lcom/google/android/pano/widget/ScrollAdapterView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;

    .line 1735
    .local v2, "view":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    iget v3, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1736
    iget-object v3, v2, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1737
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v4}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollX()I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v5}, Lcom/google/android/pano/widget/ScrollAdapterView;->getScrollY()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1738
    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1740
    const/4 v3, 0x0

    .line 1744
    .end local v2    # "view":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :goto_1
    return v3

    .line 1733
    .restart local v2    # "view":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1744
    .end local v2    # "view":Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    neg-float v1, p3

    neg-float v2, p4

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->doFling(FF)Z
    invoke-static {v0, v1, v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$3200(Lcom/google/android/pano/widget/ScrollAdapterView;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$4;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/pano/widget/ScrollAdapterView;->dragBy(FF)V

    .line 1756
    const/4 v0, 0x0

    return v0
.end method
