.class Lcom/android/camera/VideoUI$1;
.super Ljava/lang/Object;
.source "VideoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoUI;->initializeControlByIntent()V
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
    .line 96
    iput-object p1, p0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    # getter for: Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$000(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/VideoUI$1;->this$0:Lcom/android/camera/VideoUI;

    # getter for: Lcom/android/camera/VideoUI;->mPieRenderer:Lcom/android/camera/ui/PieRenderer;
    invoke-static {v0}, Lcom/android/camera/VideoUI;->access$000(Lcom/android/camera/VideoUI;)Lcom/android/camera/ui/PieRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->showInCenter()V

    .line 102
    :cond_0
    return-void
.end method
