.class Lcom/google/android/pano/dialog/DialogActivity$1;
.super Lcom/google/android/pano/util/TransitionImageAnimation$Listener;
.source "DialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/dialog/DialogActivity;->performEntryTransition(Lcom/google/android/pano/dialog/ContentFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/dialog/DialogActivity;

.field final synthetic val$cf:Lcom/google/android/pano/dialog/ContentFragment;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/DialogActivity;Lcom/google/android/pano/dialog/ContentFragment;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/pano/dialog/DialogActivity$1;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    iput-object p2, p0, Lcom/google/android/pano/dialog/DialogActivity$1;->val$cf:Lcom/google/android/pano/dialog/ContentFragment;

    invoke-direct {p0}, Lcom/google/android/pano/util/TransitionImageAnimation$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovedView(Lcom/google/android/pano/util/TransitionImage;Lcom/google/android/pano/util/TransitionImage;)V
    .locals 2
    .param p1, "src"    # Lcom/google/android/pano/util/TransitionImage;
    .param p2, "dst"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    const/high16 v1, 0x3f800000

    .line 265
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$1;->val$cf:Lcom/google/android/pano/dialog/ContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/ContentFragment;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$1;->val$cf:Lcom/google/android/pano/dialog/ContentFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/ContentFragment;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$1;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    # getter for: Lcom/google/android/pano/dialog/DialogActivity;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;
    invoke-static {v0}, Lcom/google/android/pano/dialog/DialogActivity;->access$000(Lcom/google/android/pano/dialog/DialogActivity;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$1;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    # getter for: Lcom/google/android/pano/dialog/DialogActivity;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;
    invoke-static {v0}, Lcom/google/android/pano/dialog/DialogActivity;->access$000(Lcom/google/android/pano/dialog/DialogActivity;)Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->setShadowsAlpha(F)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$1;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/DialogActivity;->onIntroAnimationFinished()V

    .line 272
    return-void
.end method
