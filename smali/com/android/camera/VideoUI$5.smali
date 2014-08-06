.class Lcom/android/camera/VideoUI$5;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoUI;->initializeOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoUI;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoUI;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/camera/VideoUI$5;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/VideoUI$5;->this$0:Lcom/android/camera/VideoUI;

    # getter for: Lcom/android/camera/VideoUI;->mActivity:Lcom/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$200(Lcom/android/camera/VideoUI;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->gotoGallery()V

    .line 237
    return-void
.end method
