.class Lcom/google/android/pano/dialog/DialogActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/dialog/DialogActivity;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/dialog/DialogActivity;

.field final synthetic val$isIcon:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/DialogActivity;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/pano/dialog/DialogActivity$3;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    iput-object p2, p0, Lcom/google/android/pano/dialog/DialogActivity$3;->val$v:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/pano/dialog/DialogActivity$3;->val$isIcon:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$3;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 372
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/DialogActivity$3;->val$isIcon:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/android/pano/dialog/DialogActivity$3;->this$0:Lcom/google/android/pano/dialog/DialogActivity;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/DialogActivity;->onIntroAnimationFinished()V

    .line 375
    :cond_0
    return-void
.end method
