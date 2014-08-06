.class Lcom/android/camera/ui/PieRenderer$EndAction;
.super Ljava/lang/Object;
.source "PieRenderer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$EndAction;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/PieRenderer;Lcom/android/camera/ui/PieRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/PieRenderer;
    .param p2, "x1"    # Lcom/android/camera/ui/PieRenderer$1;

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/android/camera/ui/PieRenderer$EndAction;-><init>(Lcom/android/camera/ui/PieRenderer;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$EndAction;->this$0:Lcom/android/camera/ui/PieRenderer;

    # getter for: Lcom/android/camera/ui/PieRenderer;->mFocusCancelled:Z
    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$1400(Lcom/android/camera/ui/PieRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$EndAction;->this$0:Lcom/android/camera/ui/PieRenderer;

    iget-object v0, v0, Lcom/android/camera/ui/OverlayRenderer;->mOverlay:Lcom/android/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer$EndAction;->this$0:Lcom/android/camera/ui/PieRenderer;

    # getter for: Lcom/android/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/ui/PieRenderer;->access$1500(Lcom/android/camera/ui/PieRenderer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/RenderOverlay;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1019
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1023
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1027
    return-void
.end method
