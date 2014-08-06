.class Lcom/google/android/pano/util/TransitionImageAnimation$2;
.super Ljava/lang/Object;
.source "TransitionImageAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/util/TransitionImageAnimation;->startTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/util/TransitionImageAnimation;


# direct methods
.method constructor <init>(Lcom/google/android/pano/util/TransitionImageAnimation;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation$2;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 217
    .local v2, "progress":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation$2;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    # getter for: Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;
    invoke-static {v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$000(Lcom/google/android/pano/util/TransitionImageAnimation;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 218
    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageAnimation$2;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    # getter for: Lcom/google/android/pano/util/TransitionImageAnimation;->mTransitions:Ljava/util/List;
    invoke-static {v3}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$000(Lcom/google/android/pano/util/TransitionImageAnimation;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/pano/util/TransitionImageView;

    invoke-virtual {v3, v2}, Lcom/google/android/pano/util/TransitionImageView;->setProgress(F)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method
