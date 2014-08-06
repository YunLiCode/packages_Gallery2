.class Lcom/android/camera/ui/PieRenderer$2;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PieRenderer;->fadeIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$2;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$2;->this$0:Lcom/android/camera/ui/PieRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/android/camera/ui/PieRenderer;->mFadeIn:Lcom/android/camera/ui/PieRenderer$LinearAnimation;
    invoke-static {v0, v1}, Lcom/android/camera/ui/PieRenderer;->access$602(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$LinearAnimation;)Lcom/android/camera/ui/PieRenderer$LinearAnimation;

    .line 317
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 321
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 312
    return-void
.end method
