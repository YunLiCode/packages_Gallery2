.class Lcom/android/camera/PhotoUI$1;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoUI;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 101
    sub-int v3, p4, p2

    .line 102
    .local v3, "width":I
    sub-int v1, p5, p3

    .line 104
    .local v1, "height":I
    move v2, v3

    .line 105
    .local v2, "w":I
    move v0, v1

    .line 106
    .local v0, "h":I
    iget-object v4, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v4}, Lcom/android/camera/PhotoUI;->access$000(Lcom/android/camera/PhotoUI;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v4

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_0

    .line 107
    move v2, v1

    .line 108
    move v0, v3

    .line 110
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mPreviewWidth:I
    invoke-static {v4}, Lcom/android/camera/PhotoUI;->access$100(Lcom/android/camera/PhotoUI;)I

    move-result v4

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mPreviewHeight:I
    invoke-static {v4}, Lcom/android/camera/PhotoUI;->access$200(Lcom/android/camera/PhotoUI;)I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    # setter for: Lcom/android/camera/PhotoUI;->mPreviewWidth:I
    invoke-static {v4, v3}, Lcom/android/camera/PhotoUI;->access$102(Lcom/android/camera/PhotoUI;I)I

    .line 112
    iget-object v4, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    # setter for: Lcom/android/camera/PhotoUI;->mPreviewHeight:I
    invoke-static {v4, v1}, Lcom/android/camera/PhotoUI;->access$202(Lcom/android/camera/PhotoUI;I)I

    .line 113
    iget-object v4, p0, Lcom/android/camera/PhotoUI$1;->this$0:Lcom/android/camera/PhotoUI;

    # getter for: Lcom/android/camera/PhotoUI;->mController:Lcom/android/camera/PhotoController;
    invoke-static {v4}, Lcom/android/camera/PhotoUI;->access$300(Lcom/android/camera/PhotoUI;)Lcom/android/camera/PhotoController;

    move-result-object v4

    invoke-interface {v4, v3, v1, v2, v0}, Lcom/android/camera/PhotoController;->onScreenSizeChanged(IIII)V

    .line 115
    :cond_2
    return-void
.end method
