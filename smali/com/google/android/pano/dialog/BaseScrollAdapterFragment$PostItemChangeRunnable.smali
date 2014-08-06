.class Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;
.super Ljava/lang/Object;
.source "BaseScrollAdapterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostItemChangeRunnable"
.end annotation


# instance fields
.field private mCancel:Z

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->mView:Landroid/view/View;

    .line 134
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->mCancel:Z

    .line 138
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/high16 v12, 0x3f000000

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 142
    iget-boolean v8, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->mCancel:Z

    if-eqz v8, :cond_0

    .line 172
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v8, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->mView:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 146
    iget-object v8, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    # getter for: Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;
    invoke-static {v8}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->access$000(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    # getter for: Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;
    invoke-static {v8}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->access$000(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 150
    :cond_1
    iget-object v8, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    # getter for: Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;
    invoke-static {v8}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->access$000(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 151
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 152
    .local v3, "scaleX":F
    iget-object v8, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 154
    .local v5, "scaleY":F
    const-string v8, "scaleX"

    new-array v9, v10, [F

    aput v3, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 156
    .local v4, "scaleXHolder":Landroid/animation/PropertyValuesHolder;
    const-string v8, "scaleY"

    new-array v9, v10, [F

    aput v5, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 158
    .local v6, "scaleYHolder":Landroid/animation/PropertyValuesHolder;
    const-string v8, "pivotX"

    new-array v9, v10, [F

    aput v12, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 160
    .local v1, "pivotXHolder":Landroid/animation/PropertyValuesHolder;
    const-string v8, "pivotY"

    new-array v9, v10, [F

    aput v12, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 162
    .local v2, "pivotYHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v8, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    # getter for: Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;
    invoke-static {v8}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->access$000(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;)Landroid/view/View;

    move-result-object v8

    new-array v9, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v9, v11

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    const/4 v10, 0x3

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 164
    .local v7, "selector":Landroid/animation/ObjectAnimator;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40200000

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 166
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 168
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "pivotXHolder":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pivotYHolder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "scaleX":F
    .end local v4    # "scaleXHolder":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "scaleY":F
    .end local v6    # "scaleYHolder":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "selector":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v8, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    # getter for: Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;
    invoke-static {v8}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->access$000(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 170
    :cond_3
    iget-object v8, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$PostItemChangeRunnable;->this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    # getter for: Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->mSelectorView:Landroid/view/View;
    invoke-static {v8}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->access$000(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
