.class Lcom/android/camera/PhotoUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoUI;
    .param p2, "x1"    # Lcom/android/camera/PhotoUI$1;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoUI$ZoomChangeListener;-><init>(Lcom/android/camera/PhotoUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$800(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$800(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 509
    :cond_0
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$800(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$800(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 502
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 491
    iget-object v1, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;
    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$300(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera/PhotoController;->onZoomChanged(I)I

    move-result v0

    .line 492
    .local v0, "newZoom":I
    iget-object v1, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$600(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$600(Lcom/android/camera/PhotoUI;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/PhotoUI$ZoomChangeListener;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mZoomRatios:Ljava/util/List;
    invoke-static {v1}, Lcom/android/camera/PhotoUI;->access$700(Lcom/android/camera/PhotoUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 495
    :cond_0
    return-void
.end method
