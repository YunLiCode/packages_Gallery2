.class Lcom/android/gallery3d/app/PhotoPage$8;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 1
    .param p1, "confirmed"    # Z

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # invokes: Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$400(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 1008
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    # getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1003
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 998
    return-void
.end method

.method public onProgressStart()V
    .locals 0

    .prologue
    .line 1011
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 995
    return-void
.end method
