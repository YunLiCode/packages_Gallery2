.class public Lcom/android/photos/canvas/AccountControlActivity;
.super Lcom/google/android/pano/dialog/DialogActivity;
.source "AccountControlActivity.java"

# interfaces
.implements Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/photos/canvas/AccountControlActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/AccountControlActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/pano/dialog/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/pano/dialog/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    invoke-virtual {p0}, Lcom/android/photos/canvas/AccountControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 55
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "authority":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/photos/canvas/AccountControlActivity;->mAccount:Landroid/accounts/Account;

    invoke-static {v8, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    .line 57
    .local v5, "syncOn":Z
    if-eqz v5, :cond_1

    const v6, 0x7f0b014c

    .line 58
    .local v6, "syncTextId":I
    :goto_0
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "description":Ljava/lang/String;
    const v8, 0x7f0b014a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "title":Ljava/lang/String;
    new-instance v8, Lcom/google/android/pano/dialog/Action;

    const-string v9, "sync"

    invoke-direct {v8, v9, v7, v2}, Lcom/google/android/pano/dialog/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    if-eqz v5, :cond_0

    .line 62
    const v8, 0x7f0b014d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "displayAlbumTitle":Ljava/lang/String;
    new-instance v8, Lcom/google/android/pano/dialog/Action;

    const-string v9, "displayed_albums"

    invoke-direct {v8, v9, v3}, Lcom/google/android/pano/dialog/Action;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v3    # "displayAlbumTitle":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 57
    .end local v2    # "description":Ljava/lang/String;
    .end local v6    # "syncTextId":I
    .end local v7    # "title":Ljava/lang/String;
    :cond_1
    const v6, 0x7f0b014b

    goto :goto_0
.end method

.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/google/android/pano/dialog/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "sync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/photos/canvas/AccountSyncActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    :goto_0
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/photos/canvas/AccountControlActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/photos/canvas/AccountControlActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    :cond_0
    return-void

    .line 74
    :cond_1
    const-string v1, "displayed_albums"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/photos/canvas/DisplayedAlbumsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/android/pano/dialog/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/photos/canvas/AccountControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, p0, p1}, Lcom/android/photos/canvas/GalleryCanvasUtils;->getAccount(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v4

    iput-object v4, p0, Lcom/android/photos/canvas/AccountControlActivity;->mAccount:Landroid/accounts/Account;

    .line 37
    iget-object v4, p0, Lcom/android/photos/canvas/AccountControlActivity;->mAccount:Landroid/accounts/Account;

    if-nez v4, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/photos/canvas/AccountControlActivity;->finish()V

    .line 48
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/photos/canvas/AccountControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 42
    .local v2, "resources":Landroid/content/res/Resources;
    const v4, 0x7f0b0149

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "breadcrumb":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/photos/canvas/AccountControlActivity;->mAccount:Landroid/accounts/Account;

    iget-object v3, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 44
    .local v3, "title":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/google/android/pano/dialog/ContentFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/pano/dialog/ContentFragment;

    move-result-object v1

    .line 45
    .local v1, "contentFragment":Lcom/google/android/pano/dialog/ContentFragment;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Lcom/google/android/pano/dialog/ActionFragment;->newInstance(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/android/photos/canvas/AccountControlActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    .line 46
    iget-object v4, p0, Lcom/android/photos/canvas/AccountControlActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {p0, v1, v4}, Lcom/android/photos/canvas/AccountControlActivity;->setContentAndActionFragments(Landroid/app/Fragment;Landroid/app/Fragment;)V

    .line 47
    iget-object v4, p0, Lcom/android/photos/canvas/AccountControlActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-static {v4, p0}, Lcom/android/photos/canvas/GalleryCanvasUtils;->createActionsAsync(Lcom/google/android/pano/dialog/ActionFragment;Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/android/pano/dialog/DialogActivity;->onResume()V

    .line 86
    iget-object v1, p0, Lcom/android/photos/canvas/AccountControlActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-virtual {v1}, Lcom/google/android/pano/dialog/ActionFragment;->getAdapter()Lcom/google/android/pano/widget/ScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/dialog/ActionAdapter;

    .line 87
    .local v0, "adapter":Lcom/google/android/pano/dialog/ActionAdapter;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/photos/canvas/AccountControlActivity;->mActionFragment:Lcom/google/android/pano/dialog/ActionFragment;

    invoke-static {v1, p0}, Lcom/android/photos/canvas/GalleryCanvasUtils;->createActionsAsync(Lcom/google/android/pano/dialog/ActionFragment;Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;)V

    .line 90
    :cond_0
    return-void
.end method
