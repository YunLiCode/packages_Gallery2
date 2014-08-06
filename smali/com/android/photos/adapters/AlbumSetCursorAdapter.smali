.class public Lcom/android/photos/adapters/AlbumSetCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "AlbumSetCursorAdapter.java"


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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x1

    .line 51
    const v6, 0x7f0a0074

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 53
    .local v5, "titleTextView":Landroid/widget/TextView;
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v6, 0x7f0a0075

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, "countTextView":Landroid/widget/TextView;
    const/4 v6, 0x7

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 58
    .local v0, "count":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f110008

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v6, 0x7f0a0076

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 63
    .local v4, "thumbImageView":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 64
    .local v3, "recycle":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/photos/adapters/AlbumSetCursorAdapter;->mDrawableFactory:Lcom/android/photos/shims/LoaderCompatShim;

    invoke-interface {v6, p3, v3}, Lcom/android/photos/shims/LoaderCompatShim;->drawableForItem(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eq v3, v2, :cond_0

    .line 66
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_0
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

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
    .line 42
    .local p1, "factory":Lcom/android/photos/shims/LoaderCompatShim;, "Lcom/android/photos/shims/LoaderCompatShim<Landroid/database/Cursor;>;"
    iput-object p1, p0, Lcom/android/photos/adapters/AlbumSetCursorAdapter;->mDrawableFactory:Lcom/android/photos/shims/LoaderCompatShim;

    .line 43
    return-void
.end method
