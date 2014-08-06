.class Lcom/android/camera/ui/CameraSwitcher$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraSwitcher;->animateShowPopup()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraSwitcher;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraSwitcher;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitcher$3;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher$3;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher$3;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSwitcher;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher$3;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    # getter for: Lcom/android/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/CameraSwitcher;->access$100(Lcom/android/camera/ui/CameraSwitcher;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 368
    :cond_0
    return-void
.end method
