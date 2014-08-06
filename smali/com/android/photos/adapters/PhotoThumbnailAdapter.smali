.class public Lcom/android/photos/adapters/PhotoThumbnailAdapter;
.super Landroid/widget/CursorAdapter;
.source "PhotoThumbnailAdapter.java"

# interfaces
.implements Lcom/android/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;


# instance fields
.field private mDrawableFactory:Lcom/android/photos/shims/LoaderCompatShim;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/photos/shims/LoaderCompatShim",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/photos/adapters/PhotoThumbnailAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 49
    const v3, 0x7f0a0147

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 50
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 51
    .local v2, "recycle":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/photos/adapters/PhotoThumbnailAdapter;->mDrawableFactory:Lcom/android/photos/shims/LoaderCompatShim;

    invoke-interface {v3, p3, v2}, Lcom/android/photos/shims/LoaderCompatShim;->drawableForItem(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eq v2, v0, :cond_0

    .line 53
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_0
    return-void
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/photos/adapters/PhotoThumbnailAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/photos/adapters/PhotoThumbnailAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040063

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public setDrawableFactory(Lcom/android/photos/shims/LoaderCompatShim;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/photos/shims/LoaderCompatShim",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "factory":Lcom/android/photos/shims/LoaderCompatShim;, "Lcom/android/photos/shims/LoaderCompatShim<Landroid/database/Cursor;>;"
    iput-object p1, p0, Lcom/android/photos/adapters/PhotoThumbnailAdapter;->mDrawableFactory:Lcom/android/photos/shims/LoaderCompatShim;

    .line 45
    return-void
.end method
