.class Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;
.super Landroid/database/ContentObserver;
.source "PicasaAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasasource/PicasaAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PicasaSyncTaskFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/ContentObserver;",
        "Lcom/android/gallery3d/util/Future",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCancelled:Z

.field protected mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

.field protected final mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field protected mResult:I

.field protected final mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)V
    .locals 1
    .param p1, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p2, "mediaSet"    # Lcom/android/gallery3d/data/MediaSet;
    .param p3, "listener"    # Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .prologue
    .line 341
    invoke-static {}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->createObserverHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 333
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mIsCancelled:Z

    .line 342
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    .line 343
    iput-object p2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 344
    iput-object p3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .line 345
    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->cancelInternal()V

    return-void
.end method

.method private declared-synchronized cancelInternal()V
    .locals 5

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mIsCancelled:Z

    .line 433
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 434
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 438
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    :try_start_3
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getContentProvider()Landroid/content/ContentProviderClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 441
    iget v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    if-gez v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "PicasaAlbumSet"

    const-string v2, "delete fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static createObserverHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture$1;-><init>(Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    .line 426
    return-void
.end method

.method public get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->waitDone()V

    .line 460
    iget v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getSyncResult()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 378
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v7

    .line 392
    :goto_0
    return v0

    .line 380
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    .line 381
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :pswitch_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    .line 385
    :pswitch_1
    const/4 v0, 0x2

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 387
    :pswitch_2
    const/4 v0, 0x1

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mIsCancelled:Z
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
    .line 454
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

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

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "listener":Lcom/android/gallery3d/data/MediaSet$SyncListener;
    monitor-enter p0

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->getSyncResult()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    .line 402
    iget v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    if-gez v1, :cond_1

    .line 404
    const-string v1, "PicasaAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad sync result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 409
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .line 410
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .line 411
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v1}, Lcom/android/gallery3d/picasasource/PicasaSource;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 412
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget v2, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/data/MediaSet$SyncListener;->onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V

    .line 414
    :cond_0
    return-void

    .line 406
    :cond_1
    :try_start_1
    const-string v1, "PicasaAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method startSync(Ljava/lang/String;)V
    .locals 6
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "listener":Lcom/android/gallery3d/data/MediaSet$SyncListener;
    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 357
    .local v2, "resolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 358
    :try_start_0
    iget-boolean v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mIsCancelled:Z

    if-eqz v3, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mSource:Lcom/android/gallery3d/picasasource/PicasaSource;

    invoke-virtual {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/picasasync/PicasaFacade;->requestImmediateSyncOnAlbumList(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mUri:Landroid/net/Uri;

    .line 361
    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->getSyncResult()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :goto_1
    :try_start_2
    iget v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    if-ltz v3, :cond_2

    .line 368
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .line 369
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mListener:Lcom/android/gallery3d/data/MediaSet$SyncListener;

    .line 370
    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 372
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget v4, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    invoke-interface {v1, v3, v4}, Lcom/android/gallery3d/data/MediaSet$SyncListener;->onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "PicasaAlbumSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestImmediateSyncOnAlbum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mResult:I

    goto :goto_1

    .line 372
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public declared-synchronized waitDone()V
    .locals 4

    .prologue
    .line 466
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "PicasaAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitDone() interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet$PicasaSyncTaskFuture;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
