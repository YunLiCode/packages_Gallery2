.class public Lcom/android/photos/AlbumFragment;
.super Lcom/android/photos/MultiSelectGridFragment;
.source "AlbumFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/photos/MultiSelectGridFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/photos/adapters/PhotoThumbnailAdapter;

.field private mAlbumPath:Ljava/lang/String;

.field private mAlbumTitle:Ljava/lang/String;

.field private mHeaderView:Landroid/view/View;

.field private mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/photos/shims/LoaderCompatShim",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mSubItemUriTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/photos/MultiSelectGridFragment;-><init>()V

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/photos/AlbumFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    return-void
.end method

.method private updateHeaderView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 82
    iget-object v4, p0, Lcom/android/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/photos/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04000c

    invoke-virtual {p0}, Lcom/android/photos/AlbumFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lcom/android/photos/AlbumFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v4

    check-cast v4, Lcom/android/photos/views/HeaderGridView;

    iget-object v5, p0, Lcom/android/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v5, v9, v8}, Lcom/android/photos/views/HeaderGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 88
    iget-object v4, p0, Lcom/android/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/android/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0a0071

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 91
    .local v1, "iv":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0a0072

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 92
    .local v3, "title":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0a0073

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 93
    .local v2, "subtitle":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/photos/AlbumFragment;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v4, p0, Lcom/android/photos/AlbumFragment;->mAdapter:Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    invoke-virtual {v4}, Lcom/android/photos/adapters/PhotoThumbnailAdapter;->getCount()I

    move-result v0

    .line 95
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/photos/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110008

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    if-lez v0, :cond_1

    .line 98
    iget-object v4, p0, Lcom/android/photos/AlbumFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    iget-object v5, p0, Lcom/android/photos/AlbumFragment;->mAdapter:Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    invoke-virtual {v5, v8}, Lcom/android/photos/adapters/PhotoThumbnailAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Lcom/android/photos/shims/LoaderCompatShim;->drawableForItem(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_1
    return-void
.end method


# virtual methods
.method public deleteItemWithPath(Ljava/lang/Object;)V
    .locals 1
    .param p1, "itemPath"    # Ljava/lang/Object;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/photos/AlbumFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    invoke-interface {v0, p1}, Lcom/android/photos/shims/LoaderCompatShim;->deleteItemWithPath(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public getItemMediaType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 138
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getItemSupportedOperations(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 143
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getItemUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/photos/AlbumFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/android/photos/shims/LoaderCompatShim;->uriForItem(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPathForItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/photos/AlbumFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/android/photos/shims/LoaderCompatShim;->getPathForItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSubItemUrisForItem(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/photos/AlbumFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    iget-object v0, p0, Lcom/android/photos/AlbumFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/photos/AlbumFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/android/photos/shims/LoaderCompatShim;->uriForItem(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/android/photos/AlbumFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/photos/MultiSelectGridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/photos/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 59
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    invoke-direct {v2, v1}, Lcom/android/photos/adapters/PhotoThumbnailAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/photos/AlbumFragment;->mAdapter:Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    .line 60
    invoke-virtual {p0}, Lcom/android/photos/AlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 62
    const-string v2, "AlbumUri"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/photos/AlbumFragment;->mAlbumPath:Ljava/lang/String;

    .line 63
    const-string v2, "AlbumTitle"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/photos/AlbumFragment;->mAlbumTitle:Ljava/lang/String;

    .line 65
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/android/photos/shims/MediaItemsLoader;

    invoke-virtual {p0}, Lcom/android/photos/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/photos/AlbumFragment;->mAlbumPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/photos/shims/MediaItemsLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    .local v0, "loader":Lcom/android/photos/shims/MediaItemsLoader;
    iput-object v0, p0, Lcom/android/photos/AlbumFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    .line 120
    iget-object v1, p0, Lcom/android/photos/AlbumFragment;->mAdapter:Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    iget-object v2, p0, Lcom/android/photos/AlbumFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    invoke-virtual {v1, v2}, Lcom/android/photos/adapters/PhotoThumbnailAdapter;->setDrawableFactory(Lcom/android/photos/shims/LoaderCompatShim;)V

    .line 121
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/photos/AlbumFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 71
    const v0, 0x7f04000b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGridItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/photos/AlbumFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/photos/AlbumFragment;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 109
    iget-object v1, p0, Lcom/android/photos/AlbumFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    invoke-interface {v1, v0}, Lcom/android/photos/shims/LoaderCompatShim;->uriForItem(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/photos/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/Gallery;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/photos/AlbumFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/photos/AlbumFragment;->mAdapter:Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    invoke-virtual {v0, p2}, Lcom/android/photos/adapters/PhotoThumbnailAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 128
    invoke-direct {p0}, Lcom/android/photos/AlbumFragment;->updateHeaderView()V

    .line 129
    iget-object v0, p0, Lcom/android/photos/AlbumFragment;->mAdapter:Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    invoke-virtual {p0, v0}, Lcom/android/photos/AlbumFragment;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/photos/AlbumFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/photos/MultiSelectGridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/photos/AlbumFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-static {}, Lcom/android/photos/shims/MediaItemsLoader;->getThumbnailSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 79
    return-void
.end method
