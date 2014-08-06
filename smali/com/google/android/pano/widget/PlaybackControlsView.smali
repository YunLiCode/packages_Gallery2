.class public Lcom/google/android/pano/widget/PlaybackControlsView;
.super Lcom/google/android/pano/widget/AbsControlsView;
.source "PlaybackControlsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;,
        Lcom/google/android/pano/widget/PlaybackControlsView$Listener;
    }
.end annotation


# instance fields
.field protected mCapabilities:I

.field protected mDuration:I

.field protected mDurationView:Landroid/widget/TextView;

.field protected mFfwView:Lcom/google/android/pano/widget/SeekButton;

.field protected mHandledDown:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field protected mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

.field protected mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

.field protected mListener:Lcom/google/android/pano/widget/PlaybackControlsView$Listener;

.field protected mNextRes:I

.field protected mNextView:Landroid/widget/ImageButton;

.field protected mOldSeekValue:F

.field protected mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

.field protected mPauseRes:I

.field protected mPlayRes:I

.field protected mPlayView:Landroid/widget/ImageButton;

.field protected mPlaystate:I

.field protected mPosition:I

.field protected mPositionUpdateTime:J

.field protected mPositionView:Landroid/widget/TextView;

.field protected mPrevBehavior:I

.field protected mPrevRes:I

.field protected mPrevView:Landroid/widget/ImageButton;

.field protected mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mRes:Landroid/content/res/Resources;

.field protected mRwView:Lcom/google/android/pano/widget/SeekButton;

.field protected mSeekBar:Landroid/widget/SeekBar;

.field protected mSupportsFfw:Z

.field protected mSupportsRw:Z

.field protected mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mUpdatePlayPauseRunnable:Ljava/lang/Runnable;

.field private mUpdatePositionRunnable:Ljava/lang/Runnable;

.field private mUpdateViewsRunnable:Ljava/lang/Runnable;

.field protected mViewsReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/widget/PlaybackControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/widget/AbsControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$1;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePositionRunnable:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$2;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$2;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdateViewsRunnable:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$3;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/PlaybackControlsView$3;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePlayPauseRunnable:Ljava/lang/Runnable;

    .line 190
    iput v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionUpdateTime:J

    .line 194
    iput v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    .line 195
    iput v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    .line 197
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    invoke-direct {v0, p0, v2}, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;Lcom/google/android/pano/widget/PlaybackControlsView$1;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    .line 198
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    invoke-direct {v0, p0, v2}, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;Lcom/google/android/pano/widget/PlaybackControlsView$1;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    .line 199
    new-instance v0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    invoke-direct {v0, p0, v2}, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;-><init>(Lcom/google/android/pano/widget/PlaybackControlsView;Lcom/google/android/pano/widget/PlaybackControlsView$1;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    .line 207
    iput-boolean v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRes:Landroid/content/res/Resources;

    .line 216
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->initDefaults()V

    .line 217
    if-eqz p2, :cond_0

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/PlaybackControlsView;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->setupViews()V

    .line 221
    return-void
.end method

.method private cancelJoystickSeek()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 524
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-boolean v1, v1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    if-eqz v1, :cond_0

    .line 525
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 526
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput-boolean v0, v1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 527
    const/4 v0, 0x1

    .line 529
    :cond_0
    return v0
.end method


# virtual methods
.method protected cancelPadSeek()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 533
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-boolean v1, v1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    if-eqz v1, :cond_0

    .line 534
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 535
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPadTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput-boolean v0, v1, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 536
    const/4 v0, 0x1

    .line 538
    :cond_0
    return v0
.end method

.method public cancelSeek()Z
    .locals 3

    .prologue
    .line 516
    const-string v1, "PlaybackControlsView"

    const-string v2, "Ending seek"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelPadSeek()Z

    move-result v0

    .line 519
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelJoystickSeek()Z

    move-result v1

    or-int/2addr v0, v1

    .line 520
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v9, 0x3f800000

    const/high16 v8, -0x40800000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "diff":F
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-boolean v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    if-eqz v5, :cond_0

    .line 465
    iput-boolean v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    .line 503
    :goto_0
    return v4

    .line 468
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->handlesHorizontalGestures()Z

    move-result v5

    if-nez v5, :cond_2

    .line 470
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/pano/widget/AbsControlsView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 473
    .local v1, "keyCode":I
    const/16 v5, 0x15

    if-ne v1, v5, :cond_4

    .line 474
    const v0, -0x41b33333

    .line 478
    :cond_3
    :goto_1
    cmpl-float v5, v0, v7

    if-eqz v5, :cond_a

    .line 479
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v6, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    add-float/2addr v6, v0

    iput v6, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    .line 480
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v5, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5

    iget-boolean v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-nez v5, :cond_5

    .line 481
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-boolean v2, v4, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 482
    .local v2, "wasSeeking":Z
    invoke-virtual {p0, v3, v7}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 483
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    move v4, v2

    .line 484
    goto :goto_0

    .line 475
    .end local v2    # "wasSeeking":Z
    :cond_4
    const/16 v5, 0x16

    if-ne v1, v5, :cond_3

    .line 476
    const v0, 0x3e4ccccd

    goto :goto_1

    .line 486
    :cond_5
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v5, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    iget-boolean v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-nez v5, :cond_6

    .line 487
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-boolean v2, v4, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 488
    .restart local v2    # "wasSeeking":Z
    invoke-virtual {p0, v3, v7}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 489
    iput-boolean v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    move v4, v2

    .line 490
    goto :goto_0

    .line 493
    .end local v2    # "wasSeeking":Z
    :cond_6
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v5, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_9

    .line 494
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput v9, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    .line 498
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget-object v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v6, v6, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_8

    move v3, v4

    :cond_8
    iput-boolean v3, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 499
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v3, v3, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v5, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 500
    iput-boolean v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandledDown:Z

    goto/16 :goto_0

    .line 495
    :cond_9
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v5, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_7

    .line 496
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput v8, v5, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    goto :goto_2

    .line 503
    :cond_a
    invoke-super {p0, p1}, Lcom/google/android/pano/widget/AbsControlsView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method protected handleJoystickEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 542
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 543
    .local v1, "newJoystickX":F
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iget v4, v4, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_1

    .line 544
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 545
    .local v0, "absJoystickX":F
    const v3, 0x3e4ccccd

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelJoystickSeek()Z

    .line 551
    :goto_0
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput v1, v3, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    .line 554
    .end local v0    # "absJoystickX":F
    :goto_1
    return v2

    .line 548
    .restart local v0    # "absJoystickX":F
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v3, v0}, Lcom/google/android/pano/widget/PlaybackControlsView;->onSeek(IF)V

    .line 549
    iget-object v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mJoystickTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    iput-boolean v2, v3, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    goto :goto_0

    .end local v0    # "absJoystickX":F
    :cond_1
    move v2, v3

    .line 554
    goto :goto_1
.end method

.method public handlesHorizontalGestures()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initDefaults()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 583
    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    .line 584
    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevBehavior:I

    .line 585
    sget v0, Lcom/google/android/pano/R$drawable;->ic_playback_ff_normal_pano_dark:I

    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextRes:I

    .line 586
    sget v0, Lcom/google/android/pano/R$drawable;->ic_playback_rew_normal_pano_dark:I

    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevRes:I

    .line 587
    sget v0, Lcom/google/android/pano/R$drawable;->ic_playback_play_normal_pano_dark:I

    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayRes:I

    .line 588
    sget v0, Lcom/google/android/pano/R$drawable;->ic_playback_pause_normal_pano_dark:I

    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPauseRes:I

    .line 589
    return-void
.end method

.method protected initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 594
    .local v7, "res":Landroid/content/res/Resources;
    sget-object v8, Lcom/google/android/pano/R$styleable;->PlaybackControllerView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 596
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .line 597
    .local v5, "capabilities":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 598
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_1

    .line 599
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 600
    .local v4, "attr":I
    packed-switch v4, :pswitch_data_0

    .line 598
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 602
    :pswitch_0
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 603
    or-int/lit8 v5, v5, 0x40

    goto :goto_1

    .line 607
    :pswitch_1
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 608
    or-int/lit16 v5, v5, 0x80

    goto :goto_1

    .line 612
    :pswitch_2
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 613
    or-int/lit8 v5, v5, 0x4

    goto :goto_1

    .line 617
    :pswitch_3
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 618
    or-int/lit8 v5, v5, 0x10

    goto :goto_1

    .line 622
    :pswitch_4
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 623
    or-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 627
    :pswitch_5
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 628
    or-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 632
    :pswitch_6
    sget v8, Lcom/google/android/pano/R$drawable;->ic_playback_ff_normal_pano_dark:I

    invoke-virtual {v1, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextRes:I

    goto :goto_1

    .line 635
    :pswitch_7
    sget v8, Lcom/google/android/pano/R$drawable;->ic_playback_rew_normal_pano_dark:I

    invoke-virtual {v1, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevRes:I

    goto :goto_1

    .line 638
    :pswitch_8
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    sget v9, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_ff_normal_pano_dark:I

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v8, v10, v9}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    goto :goto_1

    .line 642
    :pswitch_9
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    sget v9, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_rew_normal_pano_dark:I

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v8, v10, v9}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    goto :goto_1

    .line 646
    :pswitch_a
    sget v8, Lcom/google/android/pano/R$drawable;->ic_playback_play_normal_pano_dark:I

    invoke-virtual {v1, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayRes:I

    goto :goto_1

    .line 649
    :pswitch_b
    sget v8, Lcom/google/android/pano/R$drawable;->ic_playback_pause_normal_pano_dark:I

    invoke-virtual {v1, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPauseRes:I

    goto :goto_1

    .line 653
    :pswitch_c
    const/16 v8, 0x66

    invoke-virtual {v1, v4, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 654
    .local v3, "alpha":I
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v8, v3}, Lcom/google/android/pano/widget/SeekButton;->setButtonAlpha(I)V

    .line 655
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v8, v3}, Lcom/google/android/pano/widget/SeekButton;->setButtonAlpha(I)V

    goto/16 :goto_1

    .line 658
    .end local v3    # "alpha":I
    :pswitch_d
    const/16 v8, 0xff

    invoke-virtual {v1, v4, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 659
    .local v2, "activeAlpha":I
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v8, v2}, Lcom/google/android/pano/widget/SeekButton;->setButtonActiveAlpha(I)V

    .line 660
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v8, v2}, Lcom/google/android/pano/widget/SeekButton;->setButtonActiveAlpha(I)V

    goto/16 :goto_1

    .line 663
    .end local v2    # "activeAlpha":I
    :pswitch_e
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    sget v9, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_stretchline_normal_pano_dark:I

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v8, v11, v9}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    goto/16 :goto_1

    .line 667
    :pswitch_f
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    sget v9, Lcom/google/android/pano/R$drawable;->ic_playback_scrub_stretchline_normal_pano_dark_reverse:I

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v8, v11, v9}, Lcom/google/android/pano/widget/SeekButton;->setResource(II)V

    goto/16 :goto_1

    .line 672
    .end local v4    # "attr":I
    :cond_1
    if-eqz v5, :cond_2

    .line 673
    invoke-virtual {p0, v5}, Lcom/google/android/pano/widget/PlaybackControlsView;->setCapabilities(I)V

    .line 675
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 676
    return-void

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mListener:Lcom/google/android/pano/widget/PlaybackControlsView$Listener;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mListener:Lcom/google/android/pano/widget/PlaybackControlsView$Listener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView$Listener;->onClick(I)V

    .line 391
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->handlesHorizontalGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0, p1}, Lcom/google/android/pano/widget/PlaybackControlsView;->handleJoystickEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/pano/widget/AbsControlsView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSeek(IF)V
    .locals 8
    .param p1, "direction"    # I
    .param p2, "magnitude"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 558
    int-to-float v4, p1

    mul-float v0, v4, p2

    .line 559
    .local v0, "seekValue":F
    iget v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f947ae147ae147bL

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move v1, v2

    .line 560
    .local v1, "significantMove":Z
    :goto_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 579
    :goto_1
    return-void

    .end local v1    # "significantMove":Z
    :cond_0
    move v1, v3

    .line 559
    goto :goto_0

    .line 563
    .restart local v1    # "significantMove":Z
    :cond_1
    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mOldSeekValue:F

    .line 566
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mListener:Lcom/google/android/pano/widget/PlaybackControlsView$Listener;

    if-eqz v4, :cond_2

    .line 567
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mListener:Lcom/google/android/pano/widget/PlaybackControlsView$Listener;

    invoke-interface {v4, p1, p2}, Lcom/google/android/pano/widget/PlaybackControlsView$Listener;->onSeek(IF)V

    .line 572
    :cond_2
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    if-eqz p1, :cond_3

    :goto_2
    iput-boolean v2, v4, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 573
    iget-object v2, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mKeyboardTracker:Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;

    const/high16 v3, 0x40a00000

    mul-float/2addr v3, p2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4014000000000000L

    div-double/2addr v3, v5

    int-to-double v5, p1

    mul-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    .line 575
    int-to-float v2, p1

    mul-float/2addr v2, p2

    invoke-virtual {p0, v2}, Lcom/google/android/pano/widget/PlaybackControlsView;->setSeekPosition(F)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 572
    goto :goto_2
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 685
    if-ne p0, p1, :cond_0

    if-eqz p2, :cond_0

    .line 686
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->cancelSeek()Z

    .line 688
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/pano/widget/AbsControlsView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 689
    return-void
.end method

.method public setCapabilities(I)V
    .locals 2
    .param p1, "capabilities"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    .line 240
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdateViewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method public setSeekPosition(F)V
    .locals 2
    .param p1, "position"    # F

    .prologue
    const/4 v1, 0x0

    .line 372
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    .line 374
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    .line 377
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/SeekButton;->updatePosition(F)V

    goto :goto_0
.end method

.method protected setupViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 692
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 693
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/google/android/pano/R$layout;->default_controller_view:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 695
    sget v1, Lcom/google/android/pano/R$id;->controller_prev:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    .line 696
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    sget v1, Lcom/google/android/pano/R$id;->controller_playpause:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    .line 698
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    sget v1, Lcom/google/android/pano/R$id;->controller_next:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    .line 700
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    sget v1, Lcom/google/android/pano/R$id;->controller_rw:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/SeekButton;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    .line 702
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v1, p0}, Lcom/google/android/pano/widget/SeekButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    sget v1, Lcom/google/android/pano/R$id;->controller_ffw:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/SeekButton;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    .line 704
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    invoke-virtual {v1, p0}, Lcom/google/android/pano/widget/SeekButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    sget v1, Lcom/google/android/pano/R$id;->controller_seekBar:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    .line 707
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 708
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 709
    sget v1, Lcom/google/android/pano/R$id;->controller_time:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    .line 710
    sget v1, Lcom/google/android/pano/R$id;->controller_duration:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/PlaybackControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDurationView:Landroid/widget/TextView;

    .line 712
    iput-boolean v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    .line 713
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->updateViews()V

    .line 714
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->updatePlayPause()V

    .line 715
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->updatePosition()V

    .line 716
    return-void
.end method

.method protected updatePlayPause()V
    .locals 2

    .prologue
    .line 719
    iget-boolean v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    if-nez v1, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    const/4 v0, 0x0

    .line 724
    .local v0, "resId":I
    iget v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    packed-switch v1, :pswitch_data_0

    .line 732
    :goto_1
    if-eqz v0, :cond_0

    .line 733
    iget-object v1, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 726
    :pswitch_0
    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlayRes:I

    .line 727
    goto :goto_1

    .line 729
    :pswitch_1
    iget v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPauseRes:I

    goto :goto_1

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updatePosition()V
    .locals 10

    .prologue
    .line 739
    const-string v6, "PlaybackControlsView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating position views, ready? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " position: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-boolean v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    if-nez v6, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v7, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDurationView:Landroid/widget/TextView;

    iget v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const/4 v8, -0x1

    if-le v6, v8, :cond_4

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 746
    iget-object v7, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const/4 v8, -0x1

    if-le v6, v8, :cond_5

    iget v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    const/4 v8, -0x1

    if-le v6, v8, :cond_5

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 747
    iget-object v7, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    iget v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    const/4 v8, -0x1

    if-le v6, v8, :cond_6

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 749
    iget v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    .line 750
    iget v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    int-to-long v6, v6

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 751
    .local v1, "hours":I
    iget v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    int-to-long v6, v6

    const-wide/32 v8, 0x36ee80

    rem-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 753
    .local v2, "minutes":I
    iget v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    int-to-long v6, v6

    const-wide/32 v8, 0xea60

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 755
    .local v5, "seconds":I
    if-nez v1, :cond_7

    .line 756
    const-string v6, "%d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "duration":Ljava/lang/String;
    :goto_4
    iget-object v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDurationView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    iget v7, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mDuration:I

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 763
    iget-object v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    iget v7, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 766
    .end local v0    # "duration":Ljava/lang/String;
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v5    # "seconds":I
    :cond_2
    iget-object v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 767
    iget v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_0

    .line 768
    iget v3, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPosition:I

    .line 769
    .local v3, "position":I
    iget v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    iget-wide v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionUpdateTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 770
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionUpdateTime:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    add-int/2addr v3, v6

    .line 772
    :cond_3
    int-to-long v6, v3

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 773
    .restart local v1    # "hours":I
    int-to-long v6, v3

    const-wide/32 v8, 0x36ee80

    rem-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 775
    .restart local v2    # "minutes":I
    int-to-long v6, v3

    const-wide/32 v8, 0xea60

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 777
    .restart local v5    # "seconds":I
    if-nez v1, :cond_8

    .line 778
    const-string v6, "%d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 783
    .local v4, "positionString":Ljava/lang/String;
    :goto_5
    iget-object v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPositionView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPlaystate:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 787
    iget-object v6, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mUpdatePositionRunnable:Ljava/lang/Runnable;

    rem-int/lit16 v8, v3, 0x3e8

    rsub-int v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 745
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "position":I
    .end local v4    # "positionString":Ljava/lang/String;
    .end local v5    # "seconds":I
    :cond_4
    const/4 v6, 0x4

    goto/16 :goto_1

    .line 746
    :cond_5
    const/4 v6, 0x4

    goto/16 :goto_2

    .line 747
    :cond_6
    const/4 v6, 0x4

    goto/16 :goto_3

    .line 758
    .restart local v1    # "hours":I
    .restart local v2    # "minutes":I
    .restart local v5    # "seconds":I
    :cond_7
    const-string v6, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "duration":Ljava/lang/String;
    goto/16 :goto_4

    .line 780
    .end local v0    # "duration":Ljava/lang/String;
    .restart local v3    # "position":I
    :cond_8
    const-string v6, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "positionString":Ljava/lang/String;
    goto :goto_5
.end method

.method protected updateViews()V
    .locals 9

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 794
    iget-boolean v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mViewsReady:Z

    if-nez v4, :cond_0

    .line 826
    :goto_0
    return-void

    .line 797
    :cond_0
    iget v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    .line 798
    iget v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    move v1, v5

    .line 799
    .local v1, "supportsPrev":Z
    :goto_2
    if-eqz v1, :cond_6

    iget-boolean v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-nez v4, :cond_6

    move v3, v5

    .line 800
    .local v3, "usePrev":Z
    :goto_3
    iget-object v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    if-eqz v3, :cond_7

    move v4, v6

    :goto_4
    invoke-virtual {v8, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 801
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 802
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 803
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevView:Landroid/widget/ImageButton;

    iget v8, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mPrevRes:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 805
    iget v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_8

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    .line 806
    iget v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mCapabilities:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_9

    move v0, v5

    .line 807
    .local v0, "supportsNext":Z
    :goto_6
    if-eqz v0, :cond_a

    iget-boolean v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-nez v4, :cond_a

    move v2, v5

    .line 808
    .local v2, "useNext":Z
    :goto_7
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_b

    move v4, v6

    :goto_8
    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 809
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 810
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 811
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextView:Landroid/widget/ImageButton;

    iget v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mNextRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 813
    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mRwView:Lcom/google/android/pano/widget/SeekButton;

    iget-boolean v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsRw:Z

    if-eqz v4, :cond_c

    move v4, v6

    :goto_9
    invoke-virtual {v5, v4}, Lcom/google/android/pano/widget/SeekButton;->setVisibility(I)V

    .line 814
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mFfwView:Lcom/google/android/pano/widget/SeekButton;

    iget-boolean v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSupportsFfw:Z

    if-eqz v5, :cond_d

    :goto_a
    invoke-virtual {v4, v6}, Lcom/google/android/pano/widget/SeekButton;->setVisibility(I)V

    .line 816
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 817
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 819
    :cond_1
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 820
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 822
    :cond_2
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 823
    iget-object v4, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/google/android/pano/widget/PlaybackControlsView;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 825
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/pano/widget/PlaybackControlsView;->requestLayout()V

    goto/16 :goto_0

    .end local v0    # "supportsNext":Z
    .end local v1    # "supportsPrev":Z
    .end local v2    # "useNext":Z
    .end local v3    # "usePrev":Z
    :cond_4
    move v4, v6

    .line 797
    goto/16 :goto_1

    :cond_5
    move v1, v6

    .line 798
    goto/16 :goto_2

    .restart local v1    # "supportsPrev":Z
    :cond_6
    move v3, v6

    .line 799
    goto/16 :goto_3

    .restart local v3    # "usePrev":Z
    :cond_7
    move v4, v7

    .line 800
    goto/16 :goto_4

    :cond_8
    move v4, v6

    .line 805
    goto :goto_5

    :cond_9
    move v0, v6

    .line 806
    goto :goto_6

    .restart local v0    # "supportsNext":Z
    :cond_a
    move v2, v6

    .line 807
    goto :goto_7

    .restart local v2    # "useNext":Z
    :cond_b
    move v4, v7

    .line 808
    goto :goto_8

    :cond_c
    move v4, v7

    .line 813
    goto :goto_9

    :cond_d
    move v6, v7

    .line 814
    goto :goto_a
.end method
