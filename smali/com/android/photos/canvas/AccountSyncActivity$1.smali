.class Lcom/android/photos/canvas/AccountSyncActivity$1;
.super Ljava/lang/Object;
.source "AccountSyncActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/photos/canvas/AccountSyncActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/canvas/AccountSyncActivity;


# direct methods
.method constructor <init>(Lcom/android/photos/canvas/AccountSyncActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/photos/canvas/AccountSyncActivity$1;->this$0:Lcom/android/photos/canvas/AccountSyncActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/photos/canvas/AccountSyncActivity$1;->this$0:Lcom/android/photos/canvas/AccountSyncActivity;

    # getter for: Lcom/android/photos/canvas/AccountSyncActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;
    invoke-static {v0}, Lcom/android/photos/canvas/AccountSyncActivity;->access$000(Lcom/android/photos/canvas/AccountSyncActivity;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/pano/dialog/ActionFragment;->setSelection(I)V

    .line 53
    return-void
.end method
