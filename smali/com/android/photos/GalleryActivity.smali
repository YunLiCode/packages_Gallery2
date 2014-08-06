.class public Lcom/android/photos/GalleryActivity;
.super Landroid/app/Activity;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/android/photos/MultiChoiceManager$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/GalleryActivity$TabsAdapter;
    }
.end annotation


# instance fields
.field private mMultiChoiceManager:Lcom/android/photos/MultiChoiceManager;

.field private mTabsAdapter:Lcom/android/photos/GalleryActivity$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    return-void
.end method

.method static synthetic access$200(Lcom/android/photos/GalleryActivity;)Lcom/android/photos/MultiChoiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/GalleryActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/photos/GalleryActivity;->mMultiChoiceManager:Lcom/android/photos/MultiChoiceManager;

    return-object v0
.end method


# virtual methods
.method public getMultiChoiceManager()Lcom/android/photos/MultiChoiceManager;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/photos/GalleryActivity;->mMultiChoiceManager:Lcom/android/photos/MultiChoiceManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Lcom/android/photos/MultiChoiceManager;

    invoke-direct {v0, p0}, Lcom/android/photos/MultiChoiceManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/photos/GalleryActivity;->mMultiChoiceManager:Lcom/android/photos/MultiChoiceManager;

    .line 47
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/photos/GalleryActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 48
    iget-object v0, p0, Lcom/android/photos/GalleryActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 49
    iget-object v0, p0, Lcom/android/photos/GalleryActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lcom/android/photos/GalleryActivity;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/photos/GalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 53
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 54
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 56
    new-instance v1, Lcom/android/photos/GalleryActivity$TabsAdapter;

    iget-object v2, p0, Lcom/android/photos/GalleryActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0, v2}, Lcom/android/photos/GalleryActivity$TabsAdapter;-><init>(Lcom/android/photos/GalleryActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Lcom/android/photos/GalleryActivity;->mTabsAdapter:Lcom/android/photos/GalleryActivity$TabsAdapter;

    .line 57
    iget-object v1, p0, Lcom/android/photos/GalleryActivity;->mTabsAdapter:Lcom/android/photos/GalleryActivity$TabsAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0b0325

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/android/photos/PhotoSetFragment;

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/photos/GalleryActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 59
    iget-object v1, p0, Lcom/android/photos/GalleryActivity;->mTabsAdapter:Lcom/android/photos/GalleryActivity$TabsAdapter;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0b0326

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/android/photos/AlbumSetFragment;

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/photos/GalleryActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 62
    if-eqz p1, :cond_0

    .line 63
    const-string v1, "tab"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/photos/GalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 83
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/camera/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/photos/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0234
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "tab"

    invoke-virtual {p0}, Lcom/android/photos/GalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    return-void
.end method
