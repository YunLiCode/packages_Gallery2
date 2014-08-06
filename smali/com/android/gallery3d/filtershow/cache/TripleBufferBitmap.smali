.class public Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;
.super Ljava/lang/Object;
.source "TripleBufferBitmap.java"


# static fields
.field private static LOGTAG:Ljava/lang/String;


# instance fields
.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private volatile mBitmaps:[Landroid/graphics/Bitmap;

.field private volatile mConsumer:Landroid/graphics/Bitmap;

.field private volatile mIntermediate:Landroid/graphics/Bitmap;

.field private volatile mNeedsRepaint:Z

.field private volatile mNeedsSwap:Z

.field private volatile mProducer:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "TripleBufferBitmap"

    sput-object v0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 26
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mProducer:Landroid/graphics/Bitmap;

    .line 27
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mConsumer:Landroid/graphics/Bitmap;

    .line 28
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mIntermediate:Landroid/graphics/Bitmap;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mNeedsSwap:Z

    .line 31
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mNeedsRepaint:Z

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized checkRepaintNeeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mNeedsRepaint:Z

    if-eqz v1, :cond_0

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mNeedsRepaint:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v0, 0x1

    .line 89
    :cond_0
    monitor-exit p0

    return v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConsumer()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mConsumer:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProducer()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mProducer:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mNeedsRepaint:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProducer(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "producer"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mProducer:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized swapConsumer()V
    .locals 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mNeedsSwap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mIntermediate:Landroid/graphics/Bitmap;

    .line 75
    .local v0, "intermediate":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mConsumer:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mIntermediate:Landroid/graphics/Bitmap;

    .line 76
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mConsumer:Landroid/graphics/Bitmap;

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mNeedsSwap:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v0    # "intermediate":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized swapProducer()V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mIntermediate:Landroid/graphics/Bitmap;

    .line 65
    .local v0, "intermediate":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mProducer:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mIntermediate:Landroid/graphics/Bitmap;

    .line 66
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mProducer:Landroid/graphics/Bitmap;

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mNeedsSwap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 64
    .end local v0    # "intermediate":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateProducerBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->mProducer:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
