.class Lcom/android/gallery3d/ui/ActionModeHandler$2$1;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler$2;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

.field final synthetic val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler$2;Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$1;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    const/4 v1, 0x0

    # setter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$202(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$1;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$2;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$300(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    goto :goto_0
.end method
