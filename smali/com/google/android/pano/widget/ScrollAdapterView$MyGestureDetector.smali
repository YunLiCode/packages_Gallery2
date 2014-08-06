.class Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;
.super Landroid/view/GestureDetector;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    .line 1716
    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;
    invoke-static {p1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$3000(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1717
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$MyGestureDetector;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # invokes: Lcom/google/android/pano/widget/ScrollAdapterView;->stopDragBy()V
    invoke-static {v0}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$3100(Lcom/google/android/pano/widget/ScrollAdapterView;)V

    .line 1723
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
