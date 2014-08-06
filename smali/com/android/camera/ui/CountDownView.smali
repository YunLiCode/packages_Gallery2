.class public Lcom/android/camera/ui/CountDownView;
.super Landroid/widget/FrameLayout;
.source "CountDownView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CountDownView$1;,
        Lcom/android/camera/ui/CountDownView$MainHandler;,
        Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;
    }
.end annotation


# instance fields
.field private mBeepOnce:I

.field private mBeepTwice:I

.field private mCountDownAnim:Landroid/view/animation/Animation;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

.field private mPlaySound:Z

.field private mRemainingSecondsView:Landroid/widget/TextView;

.field private mRemainingSecs:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v3, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    .line 48
    new-instance v0, Lcom/android/camera/ui/CountDownView$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/CountDownView$MainHandler;-><init>(Lcom/android/camera/ui/CountDownView;Lcom/android/camera/ui/CountDownView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    .line 52
    const/high16 v0, 0x7f050000

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->mCountDownAnim:Landroid/view/animation/Animation;

    .line 54
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f080006

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CountDownView;->mBeepOnce:I

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f080007

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CountDownView;->mBeepTwice:I

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/CountDownView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/CountDownView;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/CountDownView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/CountDownView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CountDownView;->remainingSecondsChanged(I)V

    return-void
.end method

.method private remainingSecondsChanged(I)V
    .locals 10
    .param p1, "newVal"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    .line 68
    iput p1, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    .line 69
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mListener:Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;->onCountDownFinished()V

    .line 93
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/CountDownView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 75
    .local v7, "locale":Ljava/util/Locale;
    const-string v0, "%d"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v7, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "localizedValue":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mCountDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/CountDownView;->mCountDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    iget-boolean v0, p0, Lcom/android/camera/ui/CountDownView;->mPlaySound:Z

    if-eqz v0, :cond_1

    .line 84
    if-ne p1, v9, :cond_2

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/ui/CountDownView;->mBeepTwice:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 91
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 86
    :cond_2
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/ui/CountDownView;->mBeepOnce:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1
.end method


# virtual methods
.method public cancelCountDown()V
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    if-lez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/CountDownView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public isCountingDown()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 98
    const v0, 0x7f0a0092

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/CountDownView;->mRemainingSecondsView:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method public setCountDownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/ui/CountDownView;->mListener:Lcom/android/camera/ui/CountDownView$OnCountDownFinishedListener;

    .line 103
    return-void
.end method

.method public startCountDown(IZ)V
    .locals 3
    .param p1, "sec"    # I
    .param p2, "playSound"    # Z

    .prologue
    .line 106
    if-gtz p1, :cond_0

    .line 107
    const-string v0, "CAM_CountDownView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input for countdown timer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CountDownView;->setVisibility(I)V

    .line 111
    iput-boolean p2, p0, Lcom/android/camera/ui/CountDownView;->mPlaySound:Z

    .line 112
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CountDownView;->remainingSecondsChanged(I)V

    goto :goto_0
.end method
