.class public abstract Lcom/android/gallery3d/ui/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mState:I

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mState:I

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelLoad()V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mState:I

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRequestInProgress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 95
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

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

.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "future":Lcom/android/gallery3d/util/Future;, "Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    monitor-enter p0

    .line 51
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/android/gallery3d/util/Future;

    .line 52
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    :cond_0
    monitor-exit p0

    .line 68
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 61
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p0}, Lcom/android/gallery3d/ui/BitmapLoader;->submitBitmapTask(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/android/gallery3d/util/Future;

    .line 62
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 64
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mState:I

    .line 66
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/BitmapLoader;->onLoadComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 64
    :cond_4
    const/4 v0, 0x2

    goto :goto_1
.end method

.method protected abstract onLoadComplete(Landroid/graphics/Bitmap;)V
.end method

.method public declared-synchronized recycle()V
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mState:I

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLoad()V
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mState:I

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mState:I

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/android/gallery3d/util/Future;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/gallery3d/ui/BitmapLoader;->submitBitmapTask(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract submitBitmapTask(Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
