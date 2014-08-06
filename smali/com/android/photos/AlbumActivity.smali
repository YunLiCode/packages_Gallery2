.class public Lcom/android/photos/AlbumActivity;
.super Landroid/app/Activity;
.source "AlbumActivity.java"

# interfaces
.implements Lcom/android/photos/MultiChoiceManager$Provider;


# instance fields
.field private mMultiChoiceManager:Lcom/android/photos/MultiChoiceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMultiChoiceManager()Lcom/android/photos/MultiChoiceManager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/photos/AlbumActivity;->mMultiChoiceManager:Lcom/android/photos/MultiChoiceManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/photos/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 33
    .local v1, "intentExtras":Landroid/os/Bundle;
    new-instance v2, Lcom/android/photos/MultiChoiceManager;

    invoke-direct {v2, p0}, Lcom/android/photos/MultiChoiceManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/photos/AlbumActivity;->mMultiChoiceManager:Lcom/android/photos/MultiChoiceManager;

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Lcom/android/photos/AlbumFragment;

    invoke-direct {v0}, Lcom/android/photos/AlbumFragment;-><init>()V

    .line 36
    .local v0, "albumFragment":Lcom/android/photos/AlbumFragment;
    iget-object v2, p0, Lcom/android/photos/AlbumActivity;->mMultiChoiceManager:Lcom/android/photos/MultiChoiceManager;

    invoke-virtual {v2, v0}, Lcom/android/photos/MultiChoiceManager;->setDelegate(Lcom/android/photos/MultiChoiceManager$Delegate;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/photos/AlbumFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/photos/AlbumActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 41
    .end local v0    # "albumFragment":Lcom/android/photos/AlbumFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/android/photos/AlbumActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const-string v3, "AlbumTitle"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
