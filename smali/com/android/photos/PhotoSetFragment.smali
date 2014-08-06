.class public Lcom/android/photos/PhotoSetFragment;
.super Lcom/android/photos/MultiSelectGridFragment;
.source "PhotoSetFragment.java"

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
    .line 39
    invoke-direct {p0}, Lcom/android/photos/MultiSelectGridFragment;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/photos/PhotoSetFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deleteItemWithPath(Ljava/lang/Object;)V
    .locals 1
    .param p1, "itemPath"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/photos/PhotoSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    invoke-interface {v0, p1}, Lcom/android/photos/shims/LoaderCompatShim;->deleteItemWithPath(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public getItemMediaType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 103
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
    .line 108
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
    .line 126
    iget-object v0, p0, Lcom/android/photos/PhotoSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

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
    .line 131
    iget-object v0, p0, Lcom/android/photos/PhotoSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

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
    .line 114
    iget-object v0, p0, Lcom/android/photos/PhotoSetFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v0, p0, Lcom/android/photos/PhotoSetFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/photos/PhotoSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/android/photos/shims/LoaderCompatShim;->uriForItem(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/android/photos/PhotoSetFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/photos/MultiSelectGridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/photos/PhotoSetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 50
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    invoke-direct {v1, v0}, Lcom/android/photos/adapters/PhotoThumbnailAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/photos/PhotoSetFragment;->mAdapter:Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    .line 51
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
    .line 84
    new-instance v0, Lcom/android/photos/shims/MediaItemsLoader;

    invoke-virtual {p0}, Lcom/android/photos/PhotoSetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/photos/shims/MediaItemsLoader;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "loader":Lcom/android/photos/shims/MediaItemsLoader;
    iput-object v0, p0, Lcom/android/photos/PhotoSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    .line 86
    iget-object v1, p0, Lcom/android/photos/PhotoSetFragment;->mAdapter:Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    iget-object v2, p0, Lcom/android/photos/PhotoSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    invoke-virtual {v1, v2}, Lcom/android/photos/adapters/PhotoThumbnailAdapter;->setDrawableFactory(Lcom/android/photos/shims/LoaderCompatShim;)V

    .line 87
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/android/photos/MultiSelectGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/photos/PhotoSetFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 58
    return-object v0
.end method

.method public onGridItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/photos/PhotoSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/photos/PhotoSetFragment;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 75
    iget-object v1, p0, Lcom/android/photos/PhotoSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    invoke-interface {v1, v0}, Lcom/android/photos/shims/LoaderCompatShim;->uriForItem(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/photos/PhotoSetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/Gallery;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/photos/PhotoSetFragment;->startActivity(Landroid/content/Intent;)V

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
    .line 93
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/photos/PhotoSetFragment;->mAdapter:Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    invoke-virtual {v0, p2}, Lcom/android/photos/adapters/PhotoThumbnailAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 94
    iget-object v0, p0, Lcom/android/photos/PhotoSetFragment;->mAdapter:Lcom/android/photos/adapters/PhotoThumbnailAdapter;

    invoke-virtual {p0, v0}, Lcom/android/photos/PhotoSetFragment;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/photos/PhotoSetFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 99
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/photos/MultiSelectGridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/photos/PhotoSetFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-static {}, Lcom/android/photos/shims/MediaItemsLoader;->getThumbnailSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 66
    return-void
.end method
