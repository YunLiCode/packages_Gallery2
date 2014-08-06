.class public Lcom/android/photos/shims/MediaSetLoader;
.super Landroid/content/AsyncTaskLoader;
.source "MediaSetLoader.java"

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
.field private mCoverItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataManager:Lcom/android/gallery3d/data/DataManager;

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
    .line 44
    new-instance v0, Lcom/android/photos/shims/MediaSetLoader$1;

    invoke-direct {v0}, Lcom/android/photos/shims/MediaSetLoader$1;-><init>()V

    sput-object v0, Lcom/android/photos/shims/MediaSetLoader;->sNullListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/photos/shims/MediaSetLoader;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 53
    new-instance v1, Lcom/android/photos/shims/MediaSetLoader$2;

    invoke-direct {v1, p0}, Lcom/android/photos/shims/MediaSetLoader$2;-><init>(Lcom/android/photos/shims/MediaSetLoader;)V

    iput-object v1, p0, Lcom/android/photos/shims/MediaSetLoader;->mObserver:Lcom/android/gallery3d/data/ContentListener;

    .line 64
    invoke-static {p1}, Lcom/android/gallery3d/data/DataManager;->from(Landroid/content/Context;)Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/photos/shims/MediaSetLoader;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 65
    iget-object v1, p0, Lcom/android/photos/shims/MediaSetLoader;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/photos/shims/MediaSetLoader;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/photos/shims/MediaSetLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 67
    return-void
.end method


# virtual methods
.method public deleteItemWithPath(Ljava/lang/Object;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/Object;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/photos/shims/MediaSetLoader;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    check-cast p1, Lcom/android/gallery3d/data/Path;

    .end local p1    # "path":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 177
    .local v0, "o":Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->delete()V

    .line 180
    :cond_0
    return-void
.end method

.method public drawableForItem(Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "item"    # Landroid/database/Cursor;
    .param p2, "recycle"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "drawable":Lcom/android/photos/shims/BitmapJobDrawable;
    if-eqz p2, :cond_0

    instance-of v2, p2, Lcom/android/photos/shims/BitmapJobDrawable;

    if-nez v2, :cond_1

    .line 137
    :cond_0
    new-instance v0, Lcom/android/photos/shims/BitmapJobDrawable;

    .end local v0    # "drawable":Lcom/android/photos/shims/BitmapJobDrawable;
    invoke-direct {v0}, Lcom/android/photos/shims/BitmapJobDrawable;-><init>()V

    .line 141
    .restart local v0    # "drawable":Lcom/android/photos/shims/BitmapJobDrawable;
    :goto_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 142
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/photos/shims/MediaSetLoader;->mCoverItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v2}, Lcom/android/photos/shims/BitmapJobDrawable;->setMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 143
    return-object v0

    .end local v1    # "index":I
    :cond_1
    move-object v0, p2

    .line 139
    check-cast v0, Lcom/android/photos/shims/BitmapJobDrawable;

    goto :goto_0
.end method

.method public bridge synthetic drawableForItem(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 42
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/photos/shims/MediaSetLoader;->drawableForItem(Landroid/database/Cursor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPathForItem(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 3
    .param p1, "item"    # Landroid/database/Cursor;

    .prologue
    .line 184
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 185
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/photos/shims/MediaSetLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    .line 186
    .local v1, "ms":Lcom/android/gallery3d/data/MediaSet;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 189
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
    .line 42
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/shims/MediaSetLoader;->getPathForItem(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 108
    iget-object v7, p0, Lcom/android/photos/shims/MediaSetLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    .line 109
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/photos/data/AlbumSetLoader;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v3, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 110
    .local v3, "cursor":Landroid/database/MatrixCursor;
    sget-object v7, Lcom/android/photos/data/AlbumSetLoader;->PROJECTION:[Ljava/lang/String;

    array-length v7, v7

    new-array v6, v7, [Ljava/lang/Object;

    .line 111
    .local v6, "row":[Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/photos/shims/MediaSetLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    .line 112
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .local v2, "coverItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 114
    iget-object v7, p0, Lcom/android/photos/shims/MediaSetLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v7, v4}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    .line 115
    .local v5, "m":Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    .line 116
    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 117
    const/4 v7, 0x1

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 118
    const/4 v7, 0x7

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 119
    const/16 v7, 0x8

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 120
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 121
    .local v1, "coverItem":Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    .line 122
    const/4 v7, 0x2

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 124
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v3, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "coverItem":Lcom/android/gallery3d/data/MediaItem;
    .end local v5    # "m":Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    iget-object v8, p0, Lcom/android/photos/shims/MediaSetLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    monitor-enter v8

    .line 128
    :try_start_0
    iput-object v2, p0, Lcom/android/photos/shims/MediaSetLoader;->mCoverItems:Ljava/util/ArrayList;

    .line 129
    monitor-exit v8

    .line 130
    return-object v3

    .line 129
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/photos/shims/MediaSetLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelLoad()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/photos/shims/MediaSetLoader;->mSyncTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/photos/shims/MediaSetLoader;->mSyncTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/photos/shims/MediaSetLoader;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 102
    invoke-virtual {p0}, Lcom/android/photos/shims/MediaSetLoader;->onStopLoading()V

    .line 103
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 78
    iget-object v0, p0, Lcom/android/photos/shims/MediaSetLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/photos/shims/MediaSetLoader;->mObserver:Lcom/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/photos/shims/MediaSetLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    sget-object v1, Lcom/android/photos/shims/MediaSetLoader;->sNullListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/photos/shims/MediaSetLoader;->mSyncTask:Lcom/android/gallery3d/util/Future;

    .line 80
    invoke-virtual {p0}, Lcom/android/photos/shims/MediaSetLoader;->forceLoad()V

    .line 81
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 95
    invoke-virtual {p0}, Lcom/android/photos/shims/MediaSetLoader;->cancelLoad()Z

    .line 96
    iget-object v0, p0, Lcom/android/photos/shims/MediaSetLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/photos/shims/MediaSetLoader;->mObserver:Lcom/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 97
    return-void
.end method

.method public uriForItem(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .param p1, "item"    # Landroid/database/Cursor;

    .prologue
    .line 152
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 153
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/photos/shims/MediaSetLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    .line 154
    .local v1, "ms":Lcom/android/gallery3d/data/MediaSet;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic uriForItem(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/shims/MediaSetLoader;->uriForItem(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public urisForSubItems(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 4
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
    .line 159
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 160
    .local v0, "index":I
    iget-object v3, p0, Lcom/android/photos/shims/MediaSetLoader;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    .line 161
    .local v1, "ms":Lcom/android/gallery3d/data/MediaSet;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 171
    :goto_0
    return-object v2

    .line 162
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v3, Lcom/android/photos/shims/MediaSetLoader$3;

    invoke-direct {v3, p0, v2}, Lcom/android/photos/shims/MediaSetLoader$3;-><init>(Lcom/android/photos/shims/MediaSetLoader;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    goto :goto_0
.end method

.method public bridge synthetic urisForSubItems(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/photos/shims/MediaSetLoader;->urisForSubItems(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
