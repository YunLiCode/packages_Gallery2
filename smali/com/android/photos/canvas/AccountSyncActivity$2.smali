.class Lcom/android/photos/canvas/AccountSyncActivity$2;
.super Ljava/lang/Object;
.source "AccountSyncActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/photos/canvas/AccountSyncActivity;->onActionClicked(Lcom/google/android/pano/dialog/Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/canvas/AccountSyncActivity;

.field final synthetic val$syncOn:Z


# direct methods
.method constructor <init>(Lcom/android/photos/canvas/AccountSyncActivity;Z)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/photos/canvas/AccountSyncActivity$2;->this$0:Lcom/android/photos/canvas/AccountSyncActivity;

    iput-boolean p2, p0, Lcom/android/photos/canvas/AccountSyncActivity$2;->val$syncOn:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/photos/canvas/AccountSyncActivity$2;->this$0:Lcom/android/photos/canvas/AccountSyncActivity;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    .line 75
    .local v0, "picasaFacade":Lcom/google/android/picasasync/PicasaFacade;
    iget-object v1, p0, Lcom/android/photos/canvas/AccountSyncActivity$2;->this$0:Lcom/android/photos/canvas/AccountSyncActivity;

    # getter for: Lcom/android/photos/canvas/AccountSyncActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/photos/canvas/AccountSyncActivity;->access$100(Lcom/android/photos/canvas/AccountSyncActivity;)Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/photos/canvas/AccountSyncActivity$2;->val$syncOn:Z

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method
