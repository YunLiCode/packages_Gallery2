.class final Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExpandedView"
.end annotation


# instance fields
.field expandedView:Landroid/view/View;

.field grow_anim:Landroid/animation/Animator;

.field index:I

.field progress:F

.field shrink_anim:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/google/android/pano/widget/ScrollAdapterView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/ScrollAdapterView;Landroid/view/View;I)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;
    .param p3, "i"    # I

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    .line 305
    iput-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    .line 306
    iput p3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->index:I

    .line 307
    return-void
.end method


# virtual methods
.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 375
    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 379
    iput-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    .line 381
    :cond_1
    return-void
.end method

.method createFadeInAnimator()Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 316
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemInAnim:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$200(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 318
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 319
    .local v0, "anim1":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 320
    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemInAnim:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$200(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method createFadeOutAnimator()Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 328
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemOutAnim:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$300(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 329
    const/4 v1, 0x0

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 330
    .local v0, "anim1":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 333
    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mExpandedItemOutAnim:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$300(Lcom/google/android/pano/widget/ScrollAdapterView;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method setProgress(F)V
    .locals 6
    .param p1, "p"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 338
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_3

    move v0, v2

    .line 339
    .local v0, "growing":Z
    :goto_0
    iget v4, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    move v1, v2

    .line 340
    .local v1, "shrinking":Z
    :goto_1
    iput p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->progress:F

    .line 341
    if-eqz v0, :cond_5

    .line 342
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 344
    iput-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    if-nez v2, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->createFadeInAnimator()Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    .line 348
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 349
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 351
    :cond_1
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mAnimateExpandSize:Z
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$400(Lcom/google/android/pano/widget/ScrollAdapterView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 352
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 353
    iput-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    .line 370
    :cond_2
    :goto_2
    return-void

    .end local v0    # "growing":Z
    .end local v1    # "shrinking":Z
    :cond_3
    move v0, v3

    .line 338
    goto :goto_0

    .restart local v0    # "growing":Z
    :cond_4
    move v1, v3

    .line 339
    goto :goto_1

    .line 355
    .restart local v1    # "shrinking":Z
    :cond_5
    if-eqz v1, :cond_2

    .line 356
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    if-eqz v2, :cond_6

    .line 357
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 358
    iput-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->grow_anim:Landroid/animation/Animator;

    .line 360
    :cond_6
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    if-nez v2, :cond_7

    .line 361
    invoke-virtual {p0}, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    .line 362
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->expandedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 363
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 365
    :cond_7
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->this$0:Lcom/google/android/pano/widget/ScrollAdapterView;

    # getter for: Lcom/google/android/pano/widget/ScrollAdapterView;->mAnimateExpandSize:Z
    invoke-static {v2}, Lcom/google/android/pano/widget/ScrollAdapterView;->access$400(Lcom/google/android/pano/widget/ScrollAdapterView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 366
    iget-object v2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 367
    iput-object v5, p0, Lcom/google/android/pano/widget/ScrollAdapterView$ExpandedView;->shrink_anim:Landroid/animation/Animator;

    goto :goto_2
.end method
