.class public Lcom/android/photos/canvas/AccountSelectionActivity;
.super Lcom/google/android/pano/dialog/DialogActivity;
.source "AccountSelectionActivity.java"

# interfaces
.implements Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;
.implements Lcom/google/android/pano/dialog/ActionAdapter$Listener;


# static fields
.field private static final PROJECTION_ACCOUNTS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-class v0, Lcom/android/photos/canvas/AccountSelectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/AccountSelectionActivity;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/photos/canvas/AccountSelectionActivity;->PROJECTION_ACCOUNTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
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
    const/4 v3, 0x0

    .line 63
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v9, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/pano/dialog/Action;>;"
    invoke-virtual {p0}, Lcom/android/photos/canvas/AccountSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 66
    .local v8, "accounts":Landroid/database/Cursor;
    sget-object v1, Lcom/android/photos/data/PhotoProvider$Accounts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/photos/canvas/AccountSelectionActivity;->PROJECTION_ACCOUNTS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 67
    if-eqz v8, :cond_0

    .line 68
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "account":Ljava/lang/String;
    new-instance v7, Lcom/google/android/pano/dialog/Action;

    invoke-direct {v7, v6, v6}, Lcom/google/android/pano/dialog/Action;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v7, "accountAction":Lcom/google/android/pano/dialog/Action;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v6    # "account":Ljava/lang/String;
    .end local v7    # "accountAction":Lcom/google/android/pano/dialog/Action;
    :cond_0
    return-object v9
.end method

.method public onActionClicked(Lcom/google/android/pano/dialog/Action;)V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/google/android/pano/dialog/Action;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/photos/canvas/AccountControlActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string v2, "account_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/photos/canvas/AccountSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/android/pano/dialog/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/photos/canvas/AccountSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 41
    .local v3, "resources":Landroid/content/res/Resources;
    const v5, 0x7f0b0149

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f0b0026

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "breadcrumb":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lcom/google/android/pano/dialog/ContentFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/pano/dialog/ContentFragment;

    move-result-object v2

    .line 44
    .local v2, "contentFragment":Lcom/google/android/pano/dialog/ContentFragment;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/google/android/pano/dialog/ActionFragment;->newInstance(Ljava/util/ArrayList;)Lcom/google/android/pano/dialog/ActionFragment;

    move-result-object v0

    .line 45
    .local v0, "actionFragment":Lcom/google/android/pano/dialog/ActionFragment;
    invoke-virtual {p0, v2, v0}, Lcom/android/photos/canvas/AccountSelectionActivity;->setContentAndActionFragments(Landroid/app/Fragment;Landroid/app/Fragment;)V

    .line 46
    invoke-static {v0, p0}, Lcom/android/photos/canvas/GalleryCanvasUtils;->createActionsAsync(Lcom/google/android/pano/dialog/ActionFragment;Lcom/android/photos/canvas/GalleryCanvasUtils$GetActions;)V

    .line 47
    new-instance v5, Lcom/android/photos/canvas/AccountSelectionActivity$1;

    invoke-direct {v5, p0}, Lcom/android/photos/canvas/AccountSelectionActivity$1;-><init>(Lcom/android/photos/canvas/AccountSelectionActivity;)V

    invoke-static {v5}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method
