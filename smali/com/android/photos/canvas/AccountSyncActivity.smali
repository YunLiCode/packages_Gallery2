.class public Lcom/android/photos/canvas/AccountSyncActivity;
.super Lcom/google/android/pano/dialog/DialogActivity;
.source "AccountSyncActivity.java"

# interfaces
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/pano/dialog/DialogActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/photos/canvas/AccountSyncActivity;)Lcom/google/android/pano/dialog/ActionFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/canvas/AccountSyncActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/photos/canvas/AccountSyncActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/photos/canvas/AccountSyncActivity;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/canvas/AccountSyncActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/photos/canvas/AccountSyncActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method private getActions(Z)Ljava/util/ArrayList;
    .locals 14
    .param p1, "syncOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/photos/canvas/AccountSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 60
    .local v13, "resources":Landroid/content/res/Resources;
    const v0, 0x7f0b014b

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "offTitle":Ljava/lang/String;
    const v0, 0x7f0b014c

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "onTitle":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v12, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    new-instance v0, Lcom/google/android/pano/dialog/Action;

    const-string v1, "off"

    if-nez p1, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/pano/dialog/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v5, Lcom/google/android/pano/dialog/Action;

    const-string v6, "on"

    move-object v8, v3

    move v9, v4

    move v10, p1

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/pano/dialog/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-object v12

    :cond_0
    move v5, v4

    .line 63
    goto :goto_0
.end method


# virtual methods
.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 4
    .param p1, "action"    # Lcom/google/android/pano/dialog/Action;

    .prologue
    .line 70
    const-string v2, "on"

    invoke-virtual {p1}, Lcom/google/android/pano/dialog/Action;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 71
    .local v1, "syncOn":Z
    new-instance v2, Lcom/android/photos/canvas/AccountSyncActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/android/photos/canvas/AccountSyncActivity$2;-><init>(Lcom/android/photos/canvas/AccountSyncActivity;Z)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 78
    iget-object v2, p0, Lcom/android/photos/canvas/AccountSyncActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {v2}, Lcom/google/android/pano/dialog/ActionFragment;->getAdapter()Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter;

    .line 79
    .local v0, "adapter":Lcom/google/android/pano/dialog/ActionAdapter;
    invoke-direct {p0, v1}, Lcom/android/photos/canvas/AccountSyncActivity;->getActions(Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/pano/dialog/ActionAdapter;->setActions(Ljava/util/ArrayList;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/photos/canvas/AccountSyncActivity;->finish()V

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/google/android/pano/dialog/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/photos/canvas/AccountSyncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7, p0, p1}, Lcom/android/photos/canvas/GalleryCanvasUtils;->getAccount(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v7

    iput-object v7, p0, Lcom/android/photos/canvas/AccountSyncActivity;->mAccount:Landroid/accounts/Account;

    .line 34
    iget-object v7, p0, Lcom/android/photos/canvas/AccountSyncActivity;->mAccount:Landroid/accounts/Account;

    if-nez v7, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/android/photos/canvas/AccountSyncActivity;->finish()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/photos/canvas/AccountSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 39
    .local v4, "resources":Landroid/content/res/Resources;
    const v7, 0x7f0b014a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "title":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/photos/canvas/AccountSyncActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 41
    .local v2, "breadcrumb":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v6, v2, v7}, Lcom/google/android/pano/dialog/ContentFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/pano/dialog/ContentFragment;

    move-result-object v3

    .line 42
    .local v3, "contentFragment":Lcom/google/android/pano/dialog/ContentFragment;
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "authority":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/photos/canvas/AccountSyncActivity;->mAccount:Landroid/accounts/Account;

    invoke-static {v7, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    .line 44
    .local v5, "syncOn":Z
    invoke-direct {p0, v5}, Lcom/android/photos/canvas/AccountSyncActivity;->getActions(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    invoke-static {v0}, Lcom/google/android/pano/dialog/ActionFragment;->newInstance(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v7

    iput-object v7, p0, Lcom/android/photos/canvas/AccountSyncActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    .line 46
    iget-object v7, p0, Lcom/android/photos/canvas/AccountSyncActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {p0, v3, v7}, Lcom/android/photos/canvas/AccountSyncActivity;->setContentAndActionFragments(Landroid/app/Fragment;Landroid/app/Fragment;)V

    .line 47
    if-eqz v5, :cond_0

    .line 49
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/photos/canvas/AccountSyncActivity$1;

    invoke-direct {v8, p0}, Lcom/android/photos/canvas/AccountSyncActivity$1;-><init>(Lcom/android/photos/canvas/AccountSyncActivity;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
