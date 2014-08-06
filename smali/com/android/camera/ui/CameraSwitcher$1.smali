.class Lcom/android/camera/ui/CameraSwitcher$1;
.super Ljava/lang/Object;
.source "CameraSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraSwitcher;->initPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraSwitcher;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraSwitcher;I)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitcher$1;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    iput p2, p0, Lcom/android/camera/ui/CameraSwitcher$1;->val$index:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher$1;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher$1;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    iget v1, p0, Lcom/android/camera/ui/CameraSwitcher$1;->val$index:I

    # invokes: Lcom/android/camera/ui/CameraSwitcher;->onCameraSelected(I)V
    invoke-static {v0, v1}, Lcom/android/camera/ui/CameraSwitcher;->access$000(Lcom/android/camera/ui/CameraSwitcher;I)V

    .line 180
    :cond_0
    return-void
.end method
