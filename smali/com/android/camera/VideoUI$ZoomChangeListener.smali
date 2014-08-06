.class Lcom/android/camera/VideoUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoUI;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoUI;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoUI;Lcom/android/camera/VideoUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/VideoUI;
    .param p2, "x1"    # Lcom/android/camera/VideoUI$1;

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/android/camera/VideoUI$ZoomChangeListener;-><init>(Lcom/android/camera/VideoUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method public onZoomStart()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    # getter for: Lcom/android/camera/VideoUI;->mController:Lcom/android/camera/VideoController;
    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$100(Lcom/android/camera/VideoUI;)Lcom/android/camera/VideoController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera/VideoController;->onZoomChanged(I)I

    move-result v0

    .line 512
    .local v0, "newZoom":I
    iget-object v1, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    # getter for: Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$400(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    # getter for: Lcom/android/camera/VideoUI;->mZoomRenderer:Lcom/android/camera/ui/ZoomRenderer;
    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$400(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/ZoomRenderer;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/VideoUI$ZoomChangeListener;->this$0:Lcom/android/camera/VideoUI;

    # getter for: Lcom/android/camera/VideoUI;->mZoomRatios:Ljava/util/List;
    invoke-static {v1}, Lcom/android/camera/VideoUI;->access$500(Lcom/android/camera/VideoUI;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 515
    :cond_0
    return-void
.end method
