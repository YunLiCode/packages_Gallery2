.class Lcom/android/camera/ui/PieRenderer$3;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PieRenderer;->startFadeOut(Lcom/android/camera/ui/PieItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;

.field final synthetic val$item:Lcom/android/camera/ui/PieItem;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieItem;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    iput-object p2, p0, Lcom/android/camera/ui/PieRenderer$3;->val$item:Lcom/android/camera/ui/PieItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->val$item:Lcom/android/camera/ui/PieItem;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieItem;->performClick()V

    .line 463
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/ui/PieRenderer;->mFadeOut:Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;
    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$802(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;)Lcom/android/camera/ui/PieRenderer$FadeOutAnimation;

    .line 464
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    # invokes: Lcom/android/camera/ui/PieRenderer;->deselect()V
    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$900(Lcom/android/camera/ui/PieRenderer;)V

    .line 465
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x0

    # invokes: Lcom/android/camera/ui/PieRenderer;->show(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$1000(Lcom/android/camera/ui/PieRenderer;Z)V

    .line 466
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$3;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v0, v0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RenderOverlay;->setAlpha(F)V

    .line 467
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 471
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 458
    return-void
.end method
