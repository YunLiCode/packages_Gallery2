.class Lcom/google/android/pano/dialog/DialogActivity$2$1;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/dialog/DialogActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/pano/dialog/DialogActivity$2;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/DialogActivity$2;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$twoPane:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 296
    const/16 v11, 0x64

    .line 299
    .local v11, "secondaryDelay":I
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    # getter for: Lcom/google/android/pano/dialog/DialogActivity;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v0}, Lcom/google/android/pano/dialog/DialogActivity;->access$100(Lcom/google/android/pano/dialog/DialogActivity;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xff

    aput v5, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 300
    .local v10, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v10, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 301
    const-wide/16 v2, 0x64

    invoke-virtual {v10, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 302
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 306
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    iget-object v2, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v2, v2, Lcom/google/android/pano/dialog/DialogActivity$2;->val$cf:Lcom/google/android/pano/dialog/ContentFragment;

    invoke-virtual {v2}, Lcom/google/android/pano/dialog/ContentFragment;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, -0x3d100000

    const/16 v4, 0x64

    const/16 v5, 0xfa

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3f800000

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v7, 0x0

    # invokes: Lcom/google/android/pano/dialog/DialogActivity;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
    invoke-static/range {v0 .. v7}, Lcom/google/android/pano/dialog/DialogActivity;->access$200(Lcom/google/android/pano/dialog/DialogActivity;Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    .line 309
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    iget-object v2, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v2, v2, Lcom/google/android/pano/dialog/DialogActivity$2;->val$cf:Lcom/google/android/pano/dialog/ContentFragment;

    invoke-virtual {v2}, Lcom/google/android/pano/dialog/ContentFragment;->getBreadCrumb()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, -0x3d100000

    const/16 v4, 0x64

    const/16 v5, 0xfa

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3f800000

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v7, 0x0

    # invokes: Lcom/google/android/pano/dialog/DialogActivity;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
    invoke-static/range {v0 .. v7}, Lcom/google/android/pano/dialog/DialogActivity;->access$200(Lcom/google/android/pano/dialog/DialogActivity;Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    .line 312
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    iget-object v2, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v2, v2, Lcom/google/android/pano/dialog/DialogActivity$2;->val$cf:Lcom/google/android/pano/dialog/ContentFragment;

    invoke-virtual {v2}, Lcom/google/android/pano/dialog/ContentFragment;->getDescription()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, -0x3d100000

    const/16 v4, 0x64

    const/16 v5, 0xfa

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3f800000

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v7, 0x0

    # invokes: Lcom/google/android/pano/dialog/DialogActivity;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
    invoke-static/range {v0 .. v7}, Lcom/google/android/pano/dialog/DialogActivity;->access$200(Lcom/google/android/pano/dialog/DialogActivity;Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    .line 317
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    iget-object v2, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v2, v2, Lcom/google/android/pano/dialog/DialogActivity$2;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    # getter for: Lcom/google/android/pano/dialog/DialogActivity;->mActionAreaId:I
    invoke-static {v2}, Lcom/google/android/pano/dialog/DialogActivity;->access$300(Lcom/google/android/pano/dialog/DialogActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/pano/dialog/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 318
    .local v1, "actionFragmentView":Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x64

    const/16 v5, 0xfa

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x3f800000

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v7, 0x0

    # invokes: Lcom/google/android/pano/dialog/DialogActivity;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
    invoke-static/range {v0 .. v7}, Lcom/google/android/pano/dialog/DialogActivity;->access$200(Lcom/google/android/pano/dialog/DialogActivity;Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    .line 322
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$cf:Lcom/google/android/pano/dialog/ContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/ContentFragment;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$transitionAnimation:Lcom/google/android/pano/util/TransitionImageAnimation;

    if-eqz v0, :cond_1

    .line 324
    new-instance v12, Lcom/google/android/pano/util/TransitionImage;

    invoke-direct {v12}, Lcom/google/android/pano/util/TransitionImage;-><init>()V

    .line 325
    .local v12, "target":Lcom/google/android/pano/util/TransitionImage;
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$iconUri:Landroid/net/Uri;

    invoke-virtual {v12, v0}, Lcom/google/android/pano/util/TransitionImage;->setUri(Landroid/net/Uri;)V

    .line 326
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$cf:Lcom/google/android/pano/dialog/ContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/ContentFragment;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/google/android/pano/util/TransitionImage;->createFromImageView(Landroid/widget/ImageView;)V

    .line 327
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$color:I

    invoke-virtual {v12, v0}, Lcom/google/android/pano/util/TransitionImage;->setBackground(I)V

    .line 329
    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual {v12}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 330
    .local v13, "temp":Landroid/graphics/RectF;
    invoke-virtual {v12}, Lcom/google/android/pano/util/TransitionImage;->getClippedRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 331
    invoke-virtual {v12}, Lcom/google/android/pano/util/TransitionImage;->getUnclippedRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 332
    invoke-virtual {v12}, Lcom/google/android/pano/util/TransitionImage;->getClippedRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 333
    invoke-virtual {v12}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 334
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$transitionAnimation:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-virtual {v0, v12}, Lcom/google/android/pano/util/TransitionImageAnimation;->addTransitionTarget(Lcom/google/android/pano/util/TransitionImage;)Z

    .line 335
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$transitionAnimation:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-virtual {v0}, Lcom/google/android/pano/util/TransitionImageAnimation;->startTransition()V

    .line 341
    .end local v12    # "target":Lcom/google/android/pano/util/TransitionImage;
    .end local v13    # "temp":Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$cf:Lcom/google/android/pano/dialog/ContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/ContentFragment;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v2, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2$1;->this$1:Lcom/google/android/pano/dialog/DialogActivity$2;

    iget-object v0, v0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$cf:Lcom/google/android/pano/dialog/ContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/ContentFragment;->getIcon()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, -0x3d100000

    const/16 v6, 0x64

    const/16 v7, 0xfa

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3f800000

    invoke-direct {v8, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v9, 0x1

    # invokes: Lcom/google/android/pano/dialog/DialogActivity;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
    invoke-static/range {v2 .. v9}, Lcom/google/android/pano/dialog/DialogActivity;->access$200(Lcom/google/android/pano/dialog/DialogActivity;Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    goto :goto_0
.end method
