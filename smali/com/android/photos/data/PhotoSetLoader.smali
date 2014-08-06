.class public Lcom/android/photos/data/PhotoSetLoader;
.super Landroid/content/CursorLoader;
.source "PhotoSetLoader.java"

# interfaces
.implements Lcom/android/photos/shims/LoaderCompatShim;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/CursorLoader;",
        "Lcom/android/photos/shims/LoaderCompatShim",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final GLOBAL_CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mGlobalObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/PhotoSetLoader;->CONTENT_URI:Landroid/net/Uri;

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "supported_operations"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/photos/data/PhotoSetLoader;->PROJECTION:[Ljava/lang/String;

    .line 63
    const-string v0, "content://media/external/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/PhotoSetLoader;->GLOBAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v2, Lcom/android/photos/data/PhotoSetLoader;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/photos/data/PhotoSetLoader;->PROJECTION:[Ljava/lang/String;

    const-string v4, "media_type == 1 OR media_type == 3"

    const/4 v5, 0x0

    const-string v6, "date_added DESC"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/photos/data/PhotoSetLoader;->mGlobalObserver:Landroid/database/ContentObserver;

    .line 68
    return-void
.end method


# virtual methods
.method public deleteItemWithPath(Ljava/lang/Object;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/Object;

    .prologue
    .line 109
    return-void
.end method

.method public drawableForItem(Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "item"    # Landroid/database/Cursor;
    .param p2, "recycle"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "drawable":Lcom/android/photos/drawables/DataUriThumbnailDrawable;
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/android/photos/drawables/DataUriThumbnailDrawable;

    if-nez v1, :cond_1

    .line 87
    :cond_0
    new-instance v0, Lcom/android/photos/drawables/DataUriThumbnailDrawable;

    .end local v0    # "drawable":Lcom/android/photos/drawables/DataUriThumbnailDrawable;
    invoke-direct {v0}, Lcom/android/photos/drawables/DataUriThumbnailDrawable;-><init>()V

    .line 91
    .restart local v0    # "drawable":Lcom/android/photos/drawables/DataUriThumbnailDrawable;
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/photos/drawables/DataUriThumbnailDrawable;->setImage(Ljava/lang/Object;II)V

    .line 93
    return-object v0

    :cond_1
    move-object v0, p2

    .line 89
    check-cast v0, Lcom/android/photos/drawables/DataUriThumbnailDrawable;

    goto :goto_0
.end method

.method public bridge synthetic drawableForItem(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 34
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/photos/data/PhotoSetLoader;->drawableForItem(Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPathForItem(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "item"    # Landroid/database/Cursor;

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPathForItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/data/PhotoSetLoader;->getPathForItem(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/content/CursorLoader;->onReset()V

    .line 80
    invoke-virtual {p0}, Lcom/android/photos/data/PhotoSetLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/photos/data/PhotoSetLoader;->mGlobalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 72
    invoke-super {p0}, Landroid/content/CursorLoader;->onStartLoading()V

    .line 73
    invoke-virtual {p0}, Lcom/android/photos/data/PhotoSetLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/photos/data/PhotoSetLoader;->GLOBAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/photos/data/PhotoSetLoader;->mGlobalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    return-void
.end method

.method public uriForItem(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 1
    .param p1, "item"    # Landroid/database/Cursor;

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic uriForItem(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/data/PhotoSetLoader;->uriForItem(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public urisForSubItems(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "item"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic urisForSubItems(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/data/PhotoSetLoader;->urisForSubItems(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
