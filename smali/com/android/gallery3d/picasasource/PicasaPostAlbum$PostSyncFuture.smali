.class Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;
.super Ljava/lang/Object;
.source "PicasaPostAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$SyncListener;
.implements Lcom/android/gallery3d/util/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasasource/PicasaPostAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostSyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/Future",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/android/gallery3d/data/MediaSet$SyncListener;"
    }
.end annotation


# instance fields
.field private mAlbumIds:[J

.field private mAlbumIndex:I

.field private mFutures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsCancelled:Z

.field private final mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

.field private mPendingCount:I

.field private mResult:I

.field final synthetic this$0:Lcom/android/gallery3d/picasasource/PicasaPostAlbum;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/picasasource/PicasaPostAlbum;Lcom/android/gallery3d/data/MediaSet$SyncListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .prologue
    const/4 v0, 0x0

    .line 159
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->this$0:Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-boolean v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mIsCancelled:Z

    .line 155
    iput v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mResult:I

    .line 160
    iput-object p2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .line 161
    return-void
.end method

.method private syncNextPhotos(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 210
    move v0, p1

    .end local p1    # "count":I
    .local v0, "count":I
    :goto_0
    add-int/lit8 p1, v0, -0x1

    .end local v0    # "count":I
    .restart local p1    # "count":I
    if-lez v0, :cond_0

    iget v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mAlbumIndex:I

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mAlbumIds:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 211
    new-instance v1, Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;

    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->this$0:Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    iget-object v2, v2, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->this$0:Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;-><init>(Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)V

    .line 213
    .local v1, "future":Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mFutures:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mPendingCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mPendingCount:I

    .line 217
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mAlbumIds:[J

    iget v3, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mAlbumIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mAlbumIndex:I

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;->startSync(J)V

    move v0, p1

    .line 218
    .end local p1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 219
    .end local v0    # "count":I
    .end local v1    # "future":Lcom/android/gallery3d/picasasource/BasePicasaAlbum$PicasaSyncTaskFuture;
    .restart local p1    # "count":I
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mPendingCount:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mIsCancelled:Z

    .line 180
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mFutures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/util/Future;

    .local v0, "future":Lcom/android/gallery3d/util/Future;, "Lcom/android/gallery3d/util/Future<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 178
    .end local v0    # "future":Lcom/android/gallery3d/util/Future;, "Lcom/android/gallery3d/util/Future<Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 181
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    :try_start_2
    iput v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mResult:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->waitDone()V

    .line 197
    iget v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mResult:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mPendingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 10
    .param p1, "mediaSet"    # Lcom/android/gallery3d/data/MediaSet;
    .param p2, "resultCode"    # I

    .prologue
    const/4 v9, 0x2

    .line 223
    const/4 v8, 0x0

    .line 225
    .local v8, "listener":Lcom/android/gallery3d/data/MediaSet$SyncListener;
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mAlbumIds:[J

    if-nez v0, :cond_1

    .line 227
    const/4 v6, 0x0

    .line 229
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->this$0:Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    iget-object v0, v0, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->this$0:Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    # getter for: Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mPostAlbumsUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->access$100(Lcom/android/gallery3d/picasasource/PicasaPostAlbum;)Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->ALBUMS_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->access$200()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 230
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mAlbumIds:[J

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mAlbumIndex:I

    .line 233
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mAlbumIds:[J

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mAlbumIds:[J

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v0, v7

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 239
    .end local v7    # "i":I
    :cond_0
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 243
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    monitor-enter p0

    .line 244
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mPendingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mPendingCount:I

    .line 245
    if-ne p2, v9, :cond_5

    .line 246
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mResult:I

    .line 251
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mPendingCount:I

    if-nez v0, :cond_3

    .line 252
    iget-object v8, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 255
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    const-string v0, "PostSyncFuture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mPendingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz v8, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->this$0:Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    iget v1, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mResult:I

    invoke-interface {v8, v0, v1}, Lcom/android/gallery3d/data/MediaSet$SyncListener;->onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V

    .line 259
    :cond_4
    return-void

    .line 239
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    .line 247
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    :try_start_2
    iget-boolean v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mIsCancelled:Z

    if-nez v0, :cond_2

    .line 248
    iget v0, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mPendingCount:I

    rsub-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->syncNextPhotos(I)V

    goto :goto_1

    .line 255
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public declared-synchronized startSync()V
    .locals 3

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;

    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->this$0:Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    iget-object v1, v1, Lcom/android/gallery3d/picasasource/BasePicasaAlbum;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->this$0:Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;-><init>(Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)V

    .line 168
    .local v0, "syncAlbumList":Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mFutures:Ljava/util/ArrayList;

    .line 169
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mFutures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->mPendingCount:I

    .line 173
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->this$0:Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    # getter for: Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->mUserId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;->access$000(Lcom/android/gallery3d/picasasource/PicasaPostAlbum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->startSync(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 165
    .end local v0    # "syncAlbumList":Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized waitDone()V
    .locals 3

    .prologue
    .line 203
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum$PostSyncFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "PostSyncFuture"

    const-string v2, "waitDone() interrupted"

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
