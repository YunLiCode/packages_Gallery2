.class public abstract Lcom/google/android/pano/dialog/DialogActivity;
.super Landroid/app/Activity;
.source "DialogActivity.java"

# interfaces
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;


# instance fields
.field private mActionAreaId:I

.field private mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mContentAreaId:I

.field private mContentFragment:Landroid/app/Fragment;

.field private mFirstOnStart:Z

.field private mIntroAnimationInProgress:Z

.field private mLayoutResId:I

.field private mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    sget v0, Lcom/google/android/pano/R$layout;->two_pane_dialog_frame:I

    iput v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLayoutResId:I

    .line 80
    sget v0, Lcom/google/android/pano/R$id;->content_fragment:I

    iput v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mContentAreaId:I

    .line 81
    sget v0, Lcom/google/android/pano/R$id;->action_fragment:I

    iput v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mActionAreaId:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mFirstOnStart:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mIntroAnimationInProgress:Z

    .line 89
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/dialog/DialogActivity;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/dialog/DialogActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/pano/dialog/DialogActivity;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/dialog/DialogActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/pano/dialog/DialogActivity;Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/DialogActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Landroid/view/animation/Interpolator;
    .param p7, "x7"    # Z

    .prologue
    .line 43
    invoke-direct/range {p0 .. p7}, Lcom/google/android/pano/dialog/DialogActivity;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/pano/dialog/DialogActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/dialog/DialogActivity;

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mActionAreaId:I

    return v0
.end method

.method private addActionFragmentToTransaction(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 455
    if-nez p2, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 459
    .local v0, "hasContent":Z
    :goto_0
    iget v1, p0, Lcom/google/android/pano/dialog/DialogActivity;->mActionAreaId:I

    const-string v2, "action"

    invoke-virtual {p2, v1, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 461
    if-eqz v0, :cond_1

    .line 462
    sget v1, Lcom/google/android/pano/R$anim;->fragment_slide_left_in:I

    sget v2, Lcom/google/android/pano/R$anim;->fragment_slide_left_out:I

    sget v3, Lcom/google/android/pano/R$anim;->fragment_slide_right_in:I

    sget v4, Lcom/google/android/pano/R$anim;->fragment_slide_right_out:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 464
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 466
    :cond_1
    return-object p2

    .line 458
    .end local v0    # "hasContent":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContentFragmentTransaction(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 6
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 438
    .local v1, "hasContent":Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 439
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget v2, p0, Lcom/google/android/pano/dialog/DialogActivity;->mContentAreaId:I

    const-string v3, "content"

    invoke-virtual {v0, v2, p1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 440
    if-eqz v1, :cond_0

    .line 441
    sget v2, Lcom/google/android/pano/R$anim;->fragment_slide_left_in:I

    sget v3, Lcom/google/android/pano/R$anim;->fragment_slide_left_out:I

    sget v4, Lcom/google/android/pano/R$anim;->fragment_slide_right_in:I

    sget v5, Lcom/google/android/pano/R$anim;->fragment_slide_right_out:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 444
    :cond_0
    return-object v0

    .line 437
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v1    # "hasContent":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private performEntryTransition(Lcom/google/android/pano/dialog/ContentFragment;)V
    .locals 21
    .param p1, "cf"    # Lcom/google/android/pano/dialog/ContentFragment;

    .prologue
    .line 203
    const v2, 0x1020002

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/pano/dialog/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 204
    .local v10, "contentView":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 205
    .local v4, "twoPane":Landroid/widget/RelativeLayout;
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/pano/dialog/ContentFragment;->getIconResourceId()I

    move-result v11

    .line 208
    .local v11, "iconResourceId":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/pano/dialog/ContentFragment;->getIconResourceUri()Landroid/net/Uri;

    move-result-object v12

    .line 214
    .local v12, "iconResourceUri":Landroid/net/Uri;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/pano/dialog/DialogActivity;->mIntroAnimationInProgress:Z

    .line 215
    const/4 v14, 0x1

    .line 216
    .local v14, "lShouldAnimateIcon":Z
    const/16 v18, 0x0

    .line 217
    .local v18, "uriMatch":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/dialog/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/pano/util/TransitionImage;->readMultipleFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v13

    .line 218
    .local v13, "images":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/pano/util/TransitionImage;>;"
    const/4 v15, 0x0

    .line 221
    .local v15, "ltransitionAnimation":Lcom/google/android/pano/util/TransitionImageAnimation;
    if-eqz v13, :cond_5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 222
    if-eqz v11, :cond_2

    .line 223
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/pano/data/util/UriUtils;->getAndroidResourceUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 229
    .local v7, "iconUri":Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/pano/util/TransitionImage;

    .line 230
    .local v16, "src":Lcom/google/android/pano/util/TransitionImage;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/pano/util/TransitionImage;->getBackground()I

    move-result v8

    .line 231
    .local v8, "color":I
    if-eqz v7, :cond_0

    .line 232
    new-instance v15, Lcom/google/android/pano/util/TransitionImageAnimation;

    .end local v15    # "ltransitionAnimation":Lcom/google/android/pano/util/TransitionImageAnimation;
    invoke-direct {v15, v10}, Lcom/google/android/pano/util/TransitionImageAnimation;-><init>(Landroid/view/ViewGroup;)V

    .line 233
    .restart local v15    # "ltransitionAnimation":Lcom/google/android/pano/util/TransitionImageAnimation;
    invoke-virtual/range {v15 .. v16}, Lcom/google/android/pano/util/TransitionImageAnimation;->addTransitionSource(Lcom/google/android/pano/util/TransitionImage;)V

    .line 234
    new-instance v17, Lcom/google/android/pano/util/TransitionImage;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/pano/util/TransitionImage;-><init>()V

    .line 235
    .local v17, "target":Lcom/google/android/pano/util/TransitionImage;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/google/android/pano/util/TransitionImage;->setUri(Landroid/net/Uri;)V

    .line 236
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/pano/util/TransitionImageAnimation;->addTransitionTarget(Lcom/google/android/pano/util/TransitionImage;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    const-wide/16 v2, 0xfa

    invoke-virtual {v15, v2, v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->transitionDurationMs(J)Lcom/google/android/pano/util/TransitionImageAnimation;

    move-result-object v2

    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lcom/google/android/pano/util/TransitionImageAnimation;->transitionStartDelayMs(J)Lcom/google/android/pano/util/TransitionImageAnimation;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3f800000

    invoke-direct {v3, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->interpolator(Landroid/view/animation/Interpolator;)Lcom/google/android/pano/util/TransitionImageAnimation;

    .line 248
    .end local v16    # "src":Lcom/google/android/pano/util/TransitionImage;
    .end local v17    # "target":Lcom/google/android/pano/util/TransitionImage;
    :cond_0
    :goto_1
    move-object v6, v15

    .line 251
    .local v6, "transitionAnimation":Lcom/google/android/pano/util/TransitionImageAnimation;
    sget v2, Lcom/google/android/pano/R$anim;->hard_cut_in:I

    sget v3, Lcom/google/android/pano/R$anim;->fade_out:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/pano/dialog/DialogActivity;->overridePendingTransition(II)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/pano/dialog/DialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/pano/R$color;->dialog_activity_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 254
    .local v9, "bgColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/dialog/DialogActivity;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/dialog/DialogActivity;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/dialog/DialogActivity;->mBgDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    if-eqz v6, :cond_1

    .line 261
    sget v2, Lcom/google/android/pano/R$id;->shadow_layout:I

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/pano/dialog/DialogActivity;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    .line 262
    new-instance v2, Lcom/google/android/pano/dialog/DialogActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/google/android/pano/dialog/DialogActivity$1;-><init>(Lcom/google/android/pano/dialog/DialogActivity;Lcom/google/android/pano/dialog/ContentFragment;)V

    invoke-virtual {v6, v2}, Lcom/google/android/pano/util/TransitionImageAnimation;->listener(Lcom/google/android/pano/util/TransitionImageAnimation$Listener;)Lcom/google/android/pano/util/TransitionImageAnimation;

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/pano/dialog/ContentFragment;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/dialog/DialogActivity;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    if-eqz v2, :cond_1

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/pano/dialog/DialogActivity;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->setShadowsAlpha(F)V

    .line 282
    :cond_1
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    new-instance v2, Lcom/google/android/pano/dialog/DialogActivity$2;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/pano/dialog/DialogActivity$2;-><init>(Lcom/google/android/pano/dialog/DialogActivity;Landroid/widget/RelativeLayout;Lcom/google/android/pano/dialog/ContentFragment;Lcom/google/android/pano/util/TransitionImageAnimation;Landroid/net/Uri;I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 344
    return-void

    .line 224
    .end local v6    # "transitionAnimation":Lcom/google/android/pano/util/TransitionImageAnimation;
    .end local v7    # "iconUri":Landroid/net/Uri;
    .end local v8    # "color":I
    .end local v9    # "bgColor":I
    :cond_2
    if-eqz v12, :cond_3

    .line 225
    move-object v7, v12

    .restart local v7    # "iconUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 227
    .end local v7    # "iconUri":Landroid/net/Uri;
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "iconUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 241
    .restart local v8    # "color":I
    .restart local v16    # "src":Lcom/google/android/pano/util/TransitionImage;
    .restart local v17    # "target":Lcom/google/android/pano/util/TransitionImage;
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 245
    .end local v7    # "iconUri":Landroid/net/Uri;
    .end local v8    # "color":I
    .end local v16    # "src":Lcom/google/android/pano/util/TransitionImage;
    .end local v17    # "target":Lcom/google/android/pano/util/TransitionImage;
    :cond_5
    const/4 v7, 0x0

    .line 246
    .restart local v7    # "iconUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .restart local v8    # "color":I
    goto :goto_1
.end method

.method private prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "initAlpha"    # F
    .param p3, "initTransX"    # F
    .param p4, "delay"    # I
    .param p5, "duration"    # I
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p7, "isIcon"    # Z

    .prologue
    .line 359
    if-eqz p1, :cond_1

    .line 360
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->buildLayer()V

    .line 362
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 363
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 365
    if-eqz p6, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 368
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/pano/dialog/DialogActivity$3;

    invoke-direct {v1, p0, p1, p7}, Lcom/google/android/pano/dialog/DialogActivity$3;-><init>(Lcom/google/android/pano/dialog/DialogActivity;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 379
    :cond_1
    return-void
.end method


# virtual methods
.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/google/android/pano/dialog/Action;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/android/pano/dialog/DialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->finish()V

    .line 128
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x12

    if-lt v8, v9, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x2000000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    iget v8, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLayoutResId:I

    if-eqz v8, :cond_1

    .line 143
    iget v8, p0, Lcom/google/android/pano/dialog/DialogActivity;->mLayoutResId:I

    invoke-virtual {p0, v8}, Lcom/google/android/pano/dialog/DialogActivity;->setContentView(I)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 147
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 148
    const-string v8, "create_fragment_from_extra"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 150
    .local v3, "createFragmentFromExtra":Z
    if-eqz v3, :cond_2

    .line 153
    const-string v8, "dialog_title"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "title":Ljava/lang/String;
    const-string v8, "dialog_breadcrumb"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "breadcrumb":Ljava/lang/String;
    const-string v8, "dialog_description"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "description":Ljava/lang/String;
    const-string v8, "dialog_image_uri"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "imageUriStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 159
    .local v5, "imageUri":Landroid/net/Uri;
    const-string v8, "parcelable_actions"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    invoke-static {v7, v1, v4, v5}, Lcom/google/android/pano/dialog/ContentFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/pano/dialog/ContentFragment;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/android/pano/dialog/DialogActivity;->setContentFragment(Landroid/app/Fragment;)V

    .line 165
    invoke-static {v0}, Lcom/google/android/pano/dialog/ActionFragment;->newInstance(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/android/pano/dialog/DialogActivity;->setActionFragment(Landroid/app/Fragment;)V

    .line 168
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    .end local v1    # "breadcrumb":Ljava/lang/String;
    .end local v3    # "createFragmentFromExtra":Z
    .end local v4    # "description":Ljava/lang/String;
    .end local v5    # "imageUri":Landroid/net/Uri;
    .end local v6    # "imageUriStr":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected onIntroAnimationFinished()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mIntroAnimationInProgress:Z

    .line 388
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 189
    iget-boolean v1, p0, Lcom/google/android/pano/dialog/DialogActivity;->mFirstOnStart:Z

    if-eqz v1, :cond_0

    .line 190
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/pano/dialog/DialogActivity;->mFirstOnStart:Z

    .line 193
    iget-object v1, p0, Lcom/google/android/pano/dialog/DialogActivity;->mContentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/google/android/pano/dialog/ContentFragment;

    if-eqz v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity;->mContentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/google/android/pano/dialog/ContentFragment;

    .line 195
    .local v0, "cf":Lcom/google/android/pano/dialog/ContentFragment;
    invoke-direct {p0, v0}, Lcom/google/android/pano/dialog/DialogActivity;->performEntryTransition(Lcom/google/android/pano/dialog/ContentFragment;)V

    .line 198
    .end local v0    # "cf":Lcom/google/android/pano/dialog/ContentFragment;
    :cond_0
    return-void
.end method

.method protected setActionFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 409
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/pano/dialog/DialogActivity;->addActionFragmentToTransaction(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 410
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 411
    return-void
.end method

.method protected setContentAndActionFragments(Landroid/app/Fragment;Landroid/app/Fragment;)V
    .locals 1
    .param p1, "contentFragment"    # Landroid/app/Fragment;
    .param p2, "actionFragment"    # Landroid/app/Fragment;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/android/pano/dialog/DialogActivity;->mContentFragment:Landroid/app/Fragment;

    .line 428
    invoke-direct {p0, p1}, Lcom/google/android/pano/dialog/DialogActivity;->getContentFragmentTransaction(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 429
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-direct {p0, p2, v0}, Lcom/google/android/pano/dialog/DialogActivity;->addActionFragmentToTransaction(Landroid/app/Fragment;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 431
    return-void
.end method

.method protected setContentFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/google/android/pano/dialog/DialogActivity;->mContentFragment:Landroid/app/Fragment;

    .line 399
    invoke-direct {p0, p1}, Lcom/google/android/pano/dialog/DialogActivity;->getContentFragmentTransaction(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 400
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 401
    return-void
.end method
