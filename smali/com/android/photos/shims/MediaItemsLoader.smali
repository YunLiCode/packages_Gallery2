.class public Lcom/android/photos/shims/MediaItemsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "MediaItemsLoader.java"

# interfaces
.implements Lcom/android/photos/shims/LoaderCompatShim;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/photos/shims/LoaderCompatShim",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final sNullListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;


# instance fields
.field private final mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mMediaItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mObserver:Lcom/android/gallery3d/data/ContentListener;

.field private mSyncTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/android/photos/shims/MediaItemsLoader$1;

    invoke-direct {v0}, Lcom/android/photos/shims/MediaItemsLoader$1;-><init>()V

    sput-object v0, Lcom/android/photos/shims/MediaItemsLoader;->sNullListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/photos/shims/MediaItemsLoader;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 56
    new-instance v1, Lcom/android/photos/shims/MediaItemsLoader$2;

    invoke-direct {v1, p0}, Lcom/android/photos/shims/MediaItemsLoader$2;-><init>(Lcom/android/photos/shims/MediaItemsLoader;)V

    iput-object v1, p0, Lcom/android/photos/shims/MediaItemsLoader;->mObserver:Lcom/android/gallery3d/data/ContentListener;

    .line 66
    invoke-static {p1}, Lcom/android/gallery3d/data/DataManager;->from(Landroid/content/Context;)Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/photos/shims/MediaItemsLoader;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 67
    iget-object v1, p0, Lcom/android/photos/shims/MediaItemsLoader;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/photos/shims/MediaItemsLoader;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentPath"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 56
    new-instance v0, Lcom/android/photos/shims/MediaItemsLoader$2;

    invoke-direct {v0, p0}, Lcom/android/photos/shims/MediaItemsLoader$2;-><init>(Lcom/android/photos/shims/MediaItemsLoader;)V

    iput-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mObserver:Lcom/android/gallery3d/data/ContentListener;

    .line 73
    invoke-virtual {p0}, Lcom/android/photos/shims/MediaItemsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/DataManager;->from(Landroid/content/Context;)Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 74
    iget-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 75
    return-void
.end method

.method public static getThumbnailSize()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public deleteItemWithPath(Ljava/lang/Object;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/Object;

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/photos/shims/MediaItemsLoader;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    check-cast p1, Lcom/android/gallery3d/data/Path;

    .end local p1    # "path":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 175
    .local v0, "o":Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->delete()V

    .line 178
    :cond_0
    return-void
.end method

.method public drawableForItem(Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "item"    # Landroid/database/Cursor;
    .param p2, "recycle"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "drawable":Lcom/android/photos/shims/BitmapJobDrawable;
    if-eqz p2, :cond_0

    instance-of v2, p2, Lcom/android/photos/shims/BitmapJobDrawable;

    if-nez v2, :cond_1

    .line 147
    :cond_0
    new-instance v0, Lcom/android/photos/shims/BitmapJobDrawable;

    .end local v0    # "drawable":Lcom/android/photos/shims/BitmapJobDrawable;
    invoke-direct {v0}, Lcom/android/photos/shims/BitmapJobDrawable;-><init>()V

    .line 151
    .restart local v0    # "drawable":Lcom/android/photos/shims/BitmapJobDrawable;
    :goto_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 152
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v2}, Lcom/android/photos/shims/BitmapJobDrawable;->setMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 153
    return-object v0

    .end local v1    # "index":I
    :cond_1
    move-object v0, p2

    .line 149
    check-cast v0, Lcom/android/photos/shims/BitmapJobDrawable;

    goto :goto_0
.end method

.method public bridge synthetic drawableForItem(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 45
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/photos/shims/MediaItemsLoader;->drawableForItem(Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPathForItem(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 3
    .param p1, "item"    # Landroid/database/Cursor;

    .prologue
    .line 182
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 183
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 184
    .local v1, "mi":Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 187
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getPathForItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/shims/MediaItemsLoader;->getPathForItem(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 110
    iget-object v3, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    .line 111
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/photos/data/PhotoSetLoader;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 112
    .local v0, "cursor":Landroid/database/MatrixCursor;
    sget-object v3, Lcom/android/photos/data/PhotoSetLoader;->PROJECTION:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 113
    .local v2, "row":[Ljava/lang/Object;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 114
    .local v1, "mediaItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v3, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    new-instance v4, Lcom/android/photos/shims/MediaItemsLoader$3;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/photos/shims/MediaItemsLoader$3;-><init>(Lcom/android/photos/shims/MediaItemsLoader;[Ljava/lang/Object;Landroid/database/MatrixCursor;Landroid/util/SparseArray;)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 137
    iget-object v4, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    monitor-enter v4

    .line 138
    :try_start_0
    iput-object v1, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaItems:Landroid/util/SparseArray;

    .line 139
    monitor-exit v4

    .line 140
    return-object v0

    .line 139
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/photos/shims/MediaItemsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelLoad()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 91
    :cond_0
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 104
    invoke-virtual {p0}, Lcom/android/photos/shims/MediaItemsLoader;->onStopLoading()V

    .line 105
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 80
    iget-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/photos/shims/MediaItemsLoader;->mObserver:Lcom/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    sget-object v1, Lcom/android/photos/shims/MediaItemsLoader;->sNullListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 82
    invoke-virtual {p0}, Lcom/android/photos/shims/MediaItemsLoader;->forceLoad()V

    .line 83
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 97
    invoke-virtual {p0}, Lcom/android/photos/shims/MediaItemsLoader;->cancelLoad()Z

    .line 98
    iget-object v0, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/photos/shims/MediaItemsLoader;->mObserver:Lcom/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 99
    return-void
.end method

.method public uriForItem(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .param p1, "item"    # Landroid/database/Cursor;

    .prologue
    .line 162
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 163
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/photos/shims/MediaItemsLoader;->mMediaItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 164
    .local v1, "mi":Lcom/android/gallery3d/data/MediaItem;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic uriForItem(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/shims/MediaItemsLoader;->uriForItem(Landroid/database/Cursor;)Landroid/net/Uri;

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
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic urisForSubItems(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/shims/MediaItemsLoader;->urisForSubItems(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
