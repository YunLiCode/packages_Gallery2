.class Lcom/google/android/pano/dialog/DialogActivity$2;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/dialog/DialogActivity;->performEntryTransition(Lcom/google/android/pano/dialog/ContentFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mEntryAnimationRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/android/pano/dialog/DialogActivity;

.field final synthetic val$cf:Lcom/google/android/pano/dialog/ContentFragment;

.field final synthetic val$color:I

.field final synthetic val$iconUri:Landroid/net/Uri;

.field final synthetic val$transitionAnimation:Lcom/google/android/pano/util/TransitionImageAnimation;

.field final synthetic val$twoPane:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/DialogActivity;Landroid/widget/RelativeLayout;Lcom/google/android/pano/dialog/ContentFragment;Lcom/google/android/pano/util/TransitionImageAnimation;Landroid/net/Uri;I)V
    .locals 1

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/android/pano/dialog/DialogActivity$2;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    iput-object p2, p0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$twoPane:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$cf:Lcom/google/android/pano/dialog/ContentFragment;

    iput-object p4, p0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$transitionAnimation:Lcom/google/android/pano/util/TransitionImageAnimation;

    iput-object p5, p0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$iconUri:Landroid/net/Uri;

    iput p6, p0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$color:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Lcom/google/android/pano/dialog/DialogActivity$2$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/dialog/DialogActivity$2$1;-><init>(Lcom/google/android/pano/dialog/DialogActivity$2;)V

    iput-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2;->mEntryAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$twoPane:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 290
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$2;->val$twoPane:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/pano/dialog/DialogActivity$2;->mEntryAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 291
    return-void
.end method
