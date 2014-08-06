.class public Lcom/android/dreams/phototable/FlipperDreamSettings;
.super Landroid/app/ListActivity;
.source "FlipperDreamSettings.java"


# instance fields
.field private mAdapter:Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

.field private mLoadingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

.field private mSelectAll:Landroid/view/MenuItem;

.field protected mSettings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dreams/phototable/FlipperDreamSettings;)Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/FlipperDreamSettings;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mAdapter:Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/dreams/phototable/FlipperDreamSettings;Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;)Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/dreams/phototable/FlipperDreamSettings;
    .param p1, "x1"    # Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mAdapter:Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/dreams/phototable/FlipperDreamSettings;)Lcom/android/dreams/phototable/PhotoSourcePlexor;
    .locals 1
    .param p0, "x0"    # Lcom/android/dreams/phototable/FlipperDreamSettings;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dreams/phototable/FlipperDreamSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dreams/phototable/FlipperDreamSettings;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/dreams/phototable/FlipperDreamSettings;->updateActionItem()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dreams/phototable/FlipperDreamSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dreams/phototable/FlipperDreamSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/FlipperDreamSettings;->showApology(Z)V

    return-void
.end method

.method private showApology(Z)V
    .locals 5
    .param p1, "apologize"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 119
    const v2, 0x7f0a0088

    invoke-virtual {p0, v2}, Lcom/android/dreams/phototable/FlipperDreamSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "empty":Landroid/view/View;
    const v2, 0x7f0a017e

    invoke-virtual {p0, v2}, Lcom/android/dreams/phototable/FlipperDreamSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 121
    .local v1, "sorry":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 122
    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 122
    goto :goto_0

    :cond_2
    move v4, v3

    .line 123
    goto :goto_1
.end method

.method private updateActionItem()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mAdapter:Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mSelectAll:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mAdapter:Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->areAllSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mSelectAll:Landroid/view/MenuItem;

    const v1, 0x7f0b0030

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mSelectAll:Landroid/view/MenuItem;

    const v1, 0x7f0b002f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/android/dreams/phototable/PhotoSourcePlexor;

    iget-object v1, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mSettings:Landroid/content/SharedPreferences;

    invoke-direct {v0, p0, v1}, Lcom/android/dreams/phototable/PhotoSourcePlexor;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;

    .line 61
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/FlipperDreamSettings;->setContentView(I)V

    .line 62
    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mLoadingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mLoadingTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 65
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/dreams/phototable/FlipperDreamSettings;->showApology(Z)V

    .line 66
    new-instance v0, Lcom/android/dreams/phototable/FlipperDreamSettings$1;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/FlipperDreamSettings$1;-><init>(Lcom/android/dreams/phototable/FlipperDreamSettings;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mLoadingTask:Landroid/os/AsyncTask;

    .line 95
    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mLoadingTask:Landroid/os/AsyncTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v0, "FlipperDream"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/dreams/phototable/FlipperDreamSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mSettings:Landroid/content/SharedPreferences;

    .line 50
    invoke-virtual {p0}, Lcom/android/dreams/phototable/FlipperDreamSettings;->init()V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/dreams/phototable/FlipperDreamSettings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 101
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    const v1, 0x7f0a0257

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mSelectAll:Landroid/view/MenuItem;

    .line 103
    invoke-direct {p0}, Lcom/android/dreams/phototable/FlipperDreamSettings;->updateActionItem()V

    .line 104
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 111
    :pswitch_0
    iget-object v2, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mAdapter:Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    iget-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mAdapter:Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->areAllSelected()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->selectAll(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x7f0a0257
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 56
    invoke-virtual {p0}, Lcom/android/dreams/phototable/FlipperDreamSettings;->init()V

    .line 57
    return-void
.end method
