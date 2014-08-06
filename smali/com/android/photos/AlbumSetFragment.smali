.class public Lcom/android/photos/AlbumSetFragment;
.super Lcom/android/photos/MultiSelectGridFragment;
.source "AlbumSetFragment.java"

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
.field private mAdapter:Lcom/android/photos/adapters/AlbumSetCursorAdapter;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/photos/MultiSelectGridFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteItemWithPath(Ljava/lang/Object;)V
    .locals 1
    .param p1, "itemPath"    # Ljava/lang/Object;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/photos/AlbumSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    invoke-interface {v0, p1}, Lcom/android/photos/shims/LoaderCompatShim;->deleteItemWithPath(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public getItemMediaType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getItemSupportedOperations(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 113
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getItemUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/photos/AlbumSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

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
    .line 133
    iget-object v0, p0, Lcom/android/photos/AlbumSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/android/photos/shims/LoaderCompatShim;->getPathForItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSubItemUrisForItem(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
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
    .line 118
    iget-object v0, p0, Lcom/android/photos/AlbumSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/android/photos/shims/LoaderCompatShim;->urisForSubItems(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/photos/MultiSelectGridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/photos/AlbumSetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 52
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/photos/adapters/AlbumSetCursorAdapter;

    invoke-direct {v1, v0}, Lcom/android/photos/adapters/AlbumSetCursorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/photos/AlbumSetFragment;->mAdapter:Lcom/android/photos/adapters/AlbumSetCursorAdapter;

    .line 53
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
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
    .line 73
    new-instance v0, Lcom/android/photos/shims/MediaSetLoader;

    invoke-virtual {p0}, Lcom/android/photos/AlbumSetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/photos/shims/MediaSetLoader;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "loader":Lcom/android/photos/shims/MediaSetLoader;
    iget-object v1, p0, Lcom/android/photos/AlbumSetFragment;->mAdapter:Lcom/android/photos/adapters/AlbumSetCursorAdapter;

    invoke-virtual {v1, v0}, Lcom/android/photos/adapters/AlbumSetCursorAdapter;->setDrawableFactory(Lcom/android/photos/shims/LoaderCompatShim;)V

    .line 75
    iput-object v0, p0, Lcom/android/photos/AlbumSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    .line 76
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/photos/MultiSelectGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "root":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/photos/AlbumSetFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 60
    return-object v0
.end method

.method public onGridItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/photos/AlbumSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/photos/AlbumSetFragment;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 97
    invoke-virtual {p0}, Lcom/android/photos/AlbumSetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 98
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/photos/AlbumActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string v3, "AlbumUri"

    iget-object v4, p0, Lcom/android/photos/AlbumSetFragment;->mLoaderCompatShim:Lcom/android/photos/shims/LoaderCompatShim;

    invoke-interface {v4, v0}, Lcom/android/photos/shims/LoaderCompatShim;->getPathForItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v3, "AlbumTitle"

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

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
    .line 82
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/photos/AlbumSetFragment;->mAdapter:Lcom/android/photos/adapters/AlbumSetCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/android/photos/adapters/AlbumSetCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 83
    iget-object v0, p0, Lcom/android/photos/AlbumSetFragment;->mAdapter:Lcom/android/photos/adapters/AlbumSetCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/android/photos/AlbumSetFragment;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/photos/AlbumSetFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 88
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/android/photos/MultiSelectGridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/photos/AlbumSetFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/photos/AlbumSetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 68
    return-void
.end method
