.class public Lcom/google/android/pano/util/TransitionImageAnimation;
.super Ljava/lang/Object;
.source "TransitionImageAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/util/TransitionImageAnimation$Listener;
    }
.end annotation


# static fields
.field private static DEFAULT_CANCEL_TRANSITION_MS:J

.field private static DEFAULT_TRANSITION_DURATION_MS:J

.field private static DEFAULT_TRANSITION_START_DELAY_MS:J

.field private static DEFAULT_TRANSITION_TIMEOUT_MS:J


# instance fields
.field private mCancelTransitionMs:J

.field private mCancelTransitionRunnable:Ljava/lang/Runnable;

.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/pano/util/TransitionImage;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

.field private mRoot:Landroid/view/ViewGroup;

.field private mState:I

.field private mTransitionDurationMs:J

.field private mTransitionStartDelayMs:J

.field private mTransitionTimeoutMs:J

.field private mTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/util/TransitionImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 43
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_TIMEOUT_MS:J

    .line 44
    sput-wide v2, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_CANCEL_TRANSITION_MS:J

    .line 45
    sput-wide v2, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_DURATION_MS:J

    .line 46
    const-wide/16 v0, 0xa0

    sput-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_START_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 50
    sget-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionTimeoutMs:J

    .line 51
    sget-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_CANCEL_TRANSITION_MS:J

    iput-wide v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mCancelTransitionMs:J

    .line 52
    sget-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_DURATION_MS:J

    iput-wide v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionDurationMs:J

    .line 53
    sget-wide v0, Lcom/google/android/pano/util/TransitionImageAnimation;->DEFAULT_TRANSITION_START_DELAY_MS:J

    iput-wide v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionStartDelayMs:J

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/google/android/pano/util/TransitionImageMatcher;

    invoke-direct {v0}, Lcom/google/android/pano/util/TransitionImageMatcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mComparator:Ljava/util/Comparator;

    .line 179
    new-instance v0, Lcom/google/android/pano/util/TransitionImageAnimation$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/util/TransitionImageAnimation$1;-><init>(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mCancelTransitionRunnable:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mRoot:Landroid/view/ViewGroup;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/util/TransitionImageAnimation;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/util/TransitionImageAnimation;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/pano/util/TransitionImageAnimation;)Lcom/google/android/pano/util/TransitionImageAnimation$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/util/TransitionImageAnimation;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/pano/util/TransitionImageAnimation;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/pano/util/TransitionImageAnimation;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/pano/util/TransitionImageAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/util/TransitionImageAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    return p1
.end method

.method private cancelTransition(Landroid/view/View;)V
    .locals 3
    .param p1, "iv"    # Landroid/view/View;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mCancelTransitionMs:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/pano/util/TransitionImageAnimation$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/pano/util/TransitionImageAnimation$4;-><init>(Lcom/google/android/pano/util/TransitionImageAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 252
    return-void
.end method


# virtual methods
.method public addTransitionSource(Lcom/google/android/pano/util/TransitionImage;)V
    .locals 2
    .param p1, "src"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    .line 158
    iget v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    if-eqz v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/google/android/pano/util/TransitionImageView;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/pano/util/TransitionImageView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, "view":Lcom/google/android/pano/util/TransitionImageView;
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v0, p1}, Lcom/google/android/pano/util/TransitionImageView;->setSourceTransition(Lcom/google/android/pano/util/TransitionImage;)V

    .line 164
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/pano/util/TransitionImageView;->setProgress(F)V

    goto :goto_0
.end method

.method public addTransitionTarget(Lcom/google/android/pano/util/TransitionImage;)Z
    .locals 7
    .param p1, "dst"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 278
    iget v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    if-eq v5, v4, :cond_1

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    if-eqz v5, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v3

    .line 281
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 282
    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/util/TransitionImageView;

    .line 283
    .local v2, "view":Lcom/google/android/pano/util/TransitionImageView;
    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImageView;->getSourceTransition()Lcom/google/android/pano/util/TransitionImage;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_2

    .line 284
    invoke-virtual {v2, p1}, Lcom/google/android/pano/util/TransitionImageView;->setDestTransition(Lcom/google/android/pano/util/TransitionImage;)V

    move v3, v4

    .line 285
    goto :goto_0

    .line 281
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public cancelTransition()V
    .locals 4

    .prologue
    .line 258
    iget v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    if-eqz v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 262
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 263
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 264
    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/google/android/pano/util/TransitionImageAnimation;->cancelTransition(Landroid/view/View;)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_2
    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 268
    .end local v1    # "i":I
    :cond_3
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    .line 269
    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    invoke-virtual {v2, p0}, Lcom/google/android/pano/util/TransitionImageAnimation$Listener;->onCancelled(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    goto :goto_0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/google/android/pano/util/TransitionImageAnimation;
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    return-object p0
.end method

.method public listener(Lcom/google/android/pano/util/TransitionImageAnimation$Listener;)Lcom/google/android/pano/util/TransitionImageAnimation;
    .locals 0
    .param p1, "listener"    # Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    .line 75
    return-object p0
.end method

.method public startTransition()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 192
    iget v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    if-eqz v3, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 196
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/pano/util/TransitionImageView;

    .line 197
    .local v2, "view":Lcom/google/android/pano/util/TransitionImageView;
    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImageView;->getDestTransition()Lcom/google/android/pano/util/TransitionImage;

    move-result-object v3

    if-nez v3, :cond_2

    .line 198
    invoke-direct {p0, v2}, Lcom/google/android/pano/util/TransitionImageAnimation;->cancelTransition(Landroid/view/View;)V

    .line 199
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 195
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 202
    .end local v2    # "view":Lcom/google/android/pano/util/TransitionImageView;
    :cond_3
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 203
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    .line 204
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mListener:Lcom/google/android/pano/util/TransitionImageAnimation$Listener;

    invoke-virtual {v3, p0}, Lcom/google/android/pano/util/TransitionImageAnimation$Listener;->onCancelled(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    goto :goto_0

    .line 209
    :cond_4
    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 210
    .local v1, "v":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    iget-wide v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionDurationMs:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    iget-wide v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionStartDelayMs:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 213
    new-instance v3, Lcom/google/android/pano/util/TransitionImageAnimation$2;

    invoke-direct {v3, p0}, Lcom/google/android/pano/util/TransitionImageAnimation$2;-><init>(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    new-instance v3, Lcom/google/android/pano/util/TransitionImageAnimation$3;

    invoke-direct {v3, p0}, Lcom/google/android/pano/util/TransitionImageAnimation$3;-><init>(Lcom/google/android/pano/util/TransitionImageAnimation;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 241
    iput v5, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mState:I

    goto :goto_0

    .line 209
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public transitionDurationMs(J)Lcom/google/android/pano/util/TransitionImageAnimation;
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionDurationMs:J

    .line 147
    return-object p0
.end method

.method public transitionStartDelayMs(J)Lcom/google/android/pano/util/TransitionImageAnimation;
    .locals 0
    .param p1, "delay"    # J

    .prologue
    .line 134
    iput-wide p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitionStartDelayMs:J

    .line 135
    return-object p0
.end method
