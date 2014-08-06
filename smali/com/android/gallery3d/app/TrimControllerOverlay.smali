.class public Lcom/android/gallery3d/app/TrimControllerOverlay;
.super Lcom/android/gallery3d/app/CommonControllerOverlay;
.source "TrimControllerOverlay.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/TrimControllerOverlay;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/app/TrimControllerOverlay;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->hidePlayButtonIfPlaying()V

    return-void
.end method

.method private hidePlayButtonIfPlaying()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    :cond_0
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_OBJECT_ANIMATION:Z

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method protected createTimeBar(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    new-instance v0, Lcom/android/gallery3d/app/TrimTimeBar;

    invoke-direct {v0, p1, p0}, Lcom/android/gallery3d/app/TrimTimeBar;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    .line 40
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/CommonControllerOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_3

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mState:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/CommonControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 101
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mCanReplay:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onReplay()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setTimes(IIII)V
    .locals 1
    .param p1, "currentTime"    # I
    .param p2, "totalTime"    # I
    .param p3, "trimStartTime"    # I
    .param p4, "trimEndTime"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mTimeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/app/TimeBar;->setTime(IIII)V

    .line 86
    return-void
.end method

.method public showPlaying()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->showPlaying()V

    .line 54
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_OBJECT_ANIMATION:Z

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/gallery3d/app/CommonControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 57
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 58
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 59
    new-instance v1, Lcom/android/gallery3d/app/TrimControllerOverlay$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/TrimControllerOverlay$1;-><init>(Lcom/android/gallery3d/app/TrimControllerOverlay;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/TrimControllerOverlay;->hidePlayButtonIfPlaying()V

    goto :goto_0

    .line 56
    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method
