.class Lcom/android/gallery3d/ui/ActionModeHandler$1;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/ActionModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ActionModeHandler;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$1;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "source"    # Landroid/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$1;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    # getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$000(Lcom/android/gallery3d/ui/ActionModeHandler;)Lcom/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 227
    const/4 v0, 0x0

    return v0
.end method
