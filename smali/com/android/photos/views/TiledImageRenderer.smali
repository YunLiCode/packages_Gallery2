.class public Lcom/android/photos/views/TiledImageRenderer;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/views/TiledImageRenderer$1;,
        Lcom/android/photos/views/TiledImageRenderer$TileDecoder;,
        Lcom/android/photos/views/TiledImageRenderer$TileQueue;,
        Lcom/android/photos/views/TiledImageRenderer$Tile;,
        Lcom/android/photos/views/TiledImageRenderer$TileSource;
    }
.end annotation


# static fields
.field private static sTilePool:Lcom/android/photos/data/GalleryBitmapPool;


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/android/photos/views/TiledImageRenderer$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mCenterX:I

.field protected mCenterY:I

.field private final mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mLayoutTiles:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mParent:Landroid/view/View;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private mTileDecoder:Lcom/android/photos/views/TiledImageRenderer$TileDecoder;

.field private final mTileRange:Landroid/graphics/Rect;

.field private mTileSize:I

.field private final mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

.field private mUploadQuota:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    sput-object v0, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Lcom/android/photos/data/GalleryBitmapPool;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v2, p0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    .line 90
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcom/android/photos/views/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    .line 95
    new-instance v0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcom/android/photos/views/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    .line 96
    new-instance v0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcom/android/photos/views/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    .line 99
    iput v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 100
    iput v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    .line 151
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer;->mParent:Landroid/view/View;

    .line 152
    new-instance v0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;

    invoke-direct {v0, p0, v3}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;-><init>(Lcom/android/photos/views/TiledImageRenderer;Lcom/android/photos/views/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileDecoder:Lcom/android/photos/views/TiledImageRenderer$TileDecoder;

    .line 153
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileDecoder:Lcom/android/photos/views/TiledImageRenderer$TileDecoder;

    invoke-virtual {v0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->start()V

    .line 154
    return-void
.end method

.method static synthetic access$1000(Lcom/android/photos/views/TiledImageRenderer;Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/photos/views/TiledImageRenderer;
    .param p1, "x1"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/photos/views/TiledImageRenderer;->queueForUpload(Lcom/android/photos/views/TiledImageRenderer$Tile;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/photos/data/GalleryBitmapPool;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Lcom/android/photos/data/GalleryBitmapPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/photos/views/TiledImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/views/TiledImageRenderer;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/photos/views/TiledImageRenderer;)Lcom/android/photos/views/TiledImageRenderer$TileSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/views/TiledImageRenderer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/photos/views/TiledImageRenderer;III)Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/views/TiledImageRenderer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer;->getTile(III)Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/photos/views/TiledImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/views/TiledImageRenderer;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/photos/views/TiledImageRenderer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/views/TiledImageRenderer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/photos/views/TiledImageRenderer;)Lcom/android/photos/views/TiledImageRenderer$TileQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/views/TiledImageRenderer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/photos/views/TiledImageRenderer;Lcom/android/photos/views/TiledImageRenderer$Tile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/views/TiledImageRenderer;
    .param p1, "x1"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/photos/views/TiledImageRenderer;->decodeTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    move-result v0

    return v0
.end method

.method private activateTile(III)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 511
    invoke-static {p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide v0

    .line 512
    .local v0, "key":J
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 513
    .local v2, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-eqz v2, :cond_1

    .line 514
    iget v3, v2, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 515
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer;->obtainTile(III)Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v2

    .line 520
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private static calulateLevelCount(Lcom/android/photos/views/TiledImageRenderer$TileSource;)I
    .locals 5
    .param p0, "source"    # Lcom/android/photos/views/TiledImageRenderer$TileSource;

    .prologue
    .line 181
    const/4 v0, 0x1

    .line 182
    .local v0, "levels":I
    invoke-interface {p0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v3

    invoke-interface {p0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 183
    .local v1, "maxDim":I
    invoke-interface {p0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getTileSize()I

    move-result v2

    .line 184
    .local v2, "t":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 185
    shl-int/lit8 v2, v2, 0x1

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return v0
.end method

.method private decodeTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z
    .locals 5
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    const/4 v1, 0x0

    .line 463
    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 464
    :try_start_0
    iget v3, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    monitor-exit v2

    move v0, v1

    .line 479
    :goto_0
    return v0

    .line 465
    :cond_0
    const/4 v3, 0x4

    iput v3, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 466
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-virtual {p1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->decode()Z

    move-result v0

    .line 468
    .local v0, "decodeComplete":Z
    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 469
    :try_start_1
    iget v3, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    .line 470
    const/16 v3, 0x40

    iput v3, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 471
    iget-object v3, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 472
    sget-object v3, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Lcom/android/photos/data/GalleryBitmapPool;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Lcom/android/photos/data/GalleryBitmapPool;

    iget-object v4, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 473
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 475
    :cond_2
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3, p1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    .line 476
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    goto :goto_0

    .line 466
    .end local v0    # "decodeComplete":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 478
    .restart local v0    # "decodeComplete":Z
    :cond_3
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    :goto_1
    :try_start_3
    iput v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 479
    monitor-exit v2

    goto :goto_0

    .line 480
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 478
    :cond_4
    const/16 v1, 0x10

    goto :goto_1
.end method

.method private drawTile(Lcom/android/gallery3d/glrenderer/GLCanvas;IIIFFF)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "tx"    # I
    .param p3, "ty"    # I
    .param p4, "level"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "length"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    .line 558
    .local v0, "source":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    .line 559
    .local v1, "target":Landroid/graphics/RectF;
    add-float v3, p5, p7

    add-float v4, p6, p7

    invoke-virtual {v1, p5, p6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 560
    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 562
    invoke-direct {p0, p2, p3, p4}, Lcom/android/photos/views/TiledImageRenderer;->getTile(III)Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v2

    .line 563
    .local v2, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-eqz v2, :cond_1

    .line 564
    invoke-virtual {v2}, Lcom/android/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 565
    iget v3, v2, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 566
    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQuota:I

    if-lez v3, :cond_2

    .line 567
    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQuota:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQuota:I

    .line 568
    invoke-virtual {v2, p1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 577
    :cond_0
    :goto_0
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/photos/views/TiledImageRenderer;->drawTile(Lcom/android/photos/views/TiledImageRenderer$Tile;Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 579
    :cond_1
    return-void

    .line 570
    :cond_2
    iput-boolean v6, p0, Lcom/android/photos/views/TiledImageRenderer;->mRenderComplete:Z

    goto :goto_0

    .line 572
    :cond_3
    iget v3, v2, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 573
    iput-boolean v6, p0, Lcom/android/photos/views/TiledImageRenderer;->mRenderComplete:Z

    .line 574
    invoke-direct {p0, v2}, Lcom/android/photos/views/TiledImageRenderer;->queueForDecode(Lcom/android/photos/views/TiledImageRenderer$Tile;)V

    goto :goto_0
.end method

.method private drawTile(Lcom/android/photos/views/TiledImageRenderer$Tile;Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;
    .param p2, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p3, "source"    # Landroid/graphics/RectF;
    .param p4, "target"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v3, 0x40000000

    .line 584
    :goto_0
    invoke-virtual {p1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    invoke-interface {p2, p1, p3, p4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 586
    const/4 v1, 0x1

    .line 591
    :goto_1
    return v1

    .line 590
    :cond_0
    invoke-virtual {p1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->getParentTile()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 591
    .local v0, "parent":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 592
    :cond_1
    iget v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    if-ne v1, v2, :cond_2

    .line 593
    iget v1, p3, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    .line 594
    iget v1, p3, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    .line 599
    :goto_2
    iget v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    if-ne v1, v2, :cond_3

    .line 600
    iget v1, p3, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    .line 601
    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    .line 606
    :goto_3
    move-object p1, v0

    .line 607
    goto :goto_0

    .line 596
    :cond_2
    iget v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    .line 597
    iget v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 603
    :cond_3
    iget v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    .line 604
    iget v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 25
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "cX"    # I
    .param p3, "cY"    # I
    .param p4, "level"    # I
    .param p5, "scale"    # F
    .param p6, "rotation"    # I

    .prologue
    .line 331
    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 332
    .local v9, "radians":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 333
    .local v16, "w":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v5, v0

    .line 335
    .local v5, "h":D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 336
    .local v3, "cos":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 337
    .local v12, "sin":D
    mul-double v19, v3, v16

    mul-double v21, v12, v5

    sub-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v3, v16

    mul-double v23, v12, v5

    add-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v18, v0

    .line 339
    .local v18, "width":I
    mul-double v19, v12, v16

    mul-double v21, v3, v5

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v12, v16

    mul-double v23, v3, v5

    sub-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    .line 342
    .local v7, "height":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->floor(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v8, v0

    .line 343
    .local v8, "left":I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->floor(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v15, v0

    .line 344
    .local v15, "top":I
    int-to-float v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v11, v0

    .line 345
    .local v11, "right":I
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v2, v0

    .line 348
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    move/from16 v19, v0

    shl-int v14, v19, p4

    .line 349
    .local v14, "size":I
    const/16 v19, 0x0

    div-int v20, v8, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 350
    const/16 v19, 0x0

    div-int v20, v15, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 354
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 355
    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIII)V
    .locals 7
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "cX"    # I
    .param p3, "cY"    # I
    .param p4, "level"    # I
    .param p5, "rotation"    # I

    .prologue
    .line 319
    const/high16 v0, 0x3f800000

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 320
    return-void
.end method

.method private getTile(III)Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/photos/views/TiledImageRenderer$Tile;

    return-object v0
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 166
    return-void
.end method

.method private invalidateTiles()V
    .locals 5

    .prologue
    .line 304
    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 305
    :try_start_0
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 306
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 309
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 310
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 311
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 312
    .local v2, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    invoke-direct {p0, v2}, Lcom/android/photos/views/TiledImageRenderer;->recycleTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v2    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :cond_0
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 315
    monitor-exit v4

    .line 316
    return-void

    .line 315
    .end local v0    # "i":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private layoutTiles()V
    .locals 22

    .prologue
    .line 230
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    if-nez v3, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 241
    const/high16 v3, 0x3f800000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    div-float/2addr v3, v5

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->floorLog2(F)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    invoke-static {v3, v5, v6}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    .line 246
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    if-eq v3, v5, :cond_3

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    .line 248
    .local v4, "range":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 249
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetX:I

    .line 250
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetY:I

    .line 251
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    shl-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f400000

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    add-int/lit8 v13, v3, -0x1

    .line 259
    .end local v4    # "range":Landroid/graphics/Rect;
    .local v13, "fromLevel":I
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 260
    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 262
    .local v12, "endLevel":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/photos/views/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    .line 263
    .local v4, "range":[Landroid/graphics/Rect;
    move v9, v13

    .local v9, "i":I
    :goto_2
    if-ge v9, v12, :cond_4

    .line 264
    sub-int v3, v9, v13

    aget-object v6, v4, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIII)V

    .line 263
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 251
    .end local v9    # "i":I
    .end local v12    # "endLevel":I
    .end local v13    # "fromLevel":I
    .local v4, "range":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    goto :goto_1

    .line 254
    .end local v4    # "range":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    add-int/lit8 v13, v3, -0x2

    .line 255
    .restart local v13    # "fromLevel":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetX:I

    .line 256
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetY:I

    goto :goto_1

    .line 268
    .local v4, "range":[Landroid/graphics/Rect;
    .restart local v9    # "i":I
    .restart local v12    # "endLevel":I
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    rem-int/lit8 v3, v3, 0x5a

    if-nez v3, :cond_0

    .line 270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 271
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 273
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v15

    .line 278
    .local v15, "n":I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_7

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 280
    .local v19, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    .line 281
    .local v14, "level":I
    if-lt v14, v13, :cond_5

    if-ge v14, v12, :cond_5

    sub-int v3, v14, v13

    aget-object v3, v4, v3

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 283
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    .line 284
    add-int/lit8 v9, v9, -0x1

    .line 285
    add-int/lit8 v15, v15, -0x1

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/photos/views/TiledImageRenderer;->recycleTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)V

    .line 278
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 289
    .end local v14    # "level":I
    .end local v19    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :cond_7
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    move v9, v13

    :goto_4
    if-ge v9, v12, :cond_a

    .line 292
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    shl-int v18, v3, v9

    .line 293
    .local v18, "size":I
    sub-int v3, v9, v13

    aget-object v16, v4, v3

    .line 294
    .local v16, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .local v21, "y":I
    move-object/from16 v0, v16

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .local v11, "bottom":I
    :goto_5
    move/from16 v0, v21

    if-ge v0, v11, :cond_9

    .line 295
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .local v20, "x":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .local v17, "right":I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 296
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v9}, Lcom/android/photos/views/TiledImageRenderer;->activateTile(III)V

    .line 295
    add-int v20, v20, v18

    goto :goto_6

    .line 289
    .end local v11    # "bottom":I
    .end local v15    # "n":I
    .end local v16    # "r":Landroid/graphics/Rect;
    .end local v17    # "right":I
    .end local v18    # "size":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 294
    .restart local v11    # "bottom":I
    .restart local v15    # "n":I
    .restart local v16    # "r":Landroid/graphics/Rect;
    .restart local v17    # "right":I
    .restart local v18    # "size":I
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    :cond_8
    add-int v21, v21, v18

    goto :goto_5

    .line 291
    .end local v17    # "right":I
    .end local v20    # "x":I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 300
    .end local v11    # "bottom":I
    .end local v16    # "r":Landroid/graphics/Rect;
    .end local v18    # "size":I
    .end local v21    # "y":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidate()V

    goto/16 :goto_0
.end method

.method private static makeTileKey(III)J
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "level"    # I

    .prologue
    const/16 v6, 0x10

    .line 528
    int-to-long v0, p0

    .line 529
    .local v0, "result":J
    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 530
    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 531
    return-wide v0
.end method

.method private obtainTile(III)Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 484
    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 486
    .local v0, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    .line 487
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 488
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer$Tile;->update(III)V

    .line 489
    monitor-exit v2

    .line 491
    .end local v0    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :goto_0
    return-object v0

    .restart local v0    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :cond_0
    new-instance v0, Lcom/android/photos/views/TiledImageRenderer$Tile;

    .end local v0    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer$Tile;-><init>(Lcom/android/photos/views/TiledImageRenderer;III)V

    monitor-exit v2

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private queueForDecode(Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    iget v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 454
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 455
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 459
    :cond_0
    monitor-exit v1

    .line 460
    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private queueForUpload(Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    .locals 2
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    .line 443
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidate()V

    .line 449
    return-void

    .line 443
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private recycleTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    iget v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 498
    const/16 v0, 0x20

    iput v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 499
    monitor-exit v1

    .line 508
    :goto_0
    return-void

    .line 501
    :cond_0
    const/16 v0, 0x40

    iput v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 502
    iget-object v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 503
    sget-object v0, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Lcom/android/photos/data/GalleryBitmapPool;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Lcom/android/photos/data/GalleryBitmapPool;

    iget-object v2, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 504
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    .line 507
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private uploadBackgroundTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 430
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    .line 431
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 432
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 433
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 434
    .local v2, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    invoke-virtual {v2}, Lcom/android/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 435
    invoke-direct {p0, v2}, Lcom/android/photos/views/TiledImageRenderer;->queueForDecode(Lcom/android/photos/views/TiledImageRenderer$Tile;)V

    .line 432
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    .end local v2    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :cond_1
    return-void
.end method

.method private uploadTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 535
    const/4 v0, 0x1

    .line 536
    .local v0, "quota":I
    const/4 v1, 0x0

    .line 537
    .local v1, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 538
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 539
    :try_start_0
    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v2}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v1

    .line 540
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    if-nez v1, :cond_3

    .line 548
    :cond_1
    if-eqz v1, :cond_2

    .line 549
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidate()V

    .line 551
    :cond_2
    return-void

    .line 540
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 542
    :cond_3
    invoke-virtual {v1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    iget v2, v1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 544
    invoke-virtual {v1, p1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 545
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 543
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 21
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/android/photos/views/TiledImageRenderer;->layoutTiles()V

    .line 383
    invoke-direct/range {p0 .. p1}, Lcom/android/photos/views/TiledImageRenderer;->uploadTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 385
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQuota:I

    .line 386
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mRenderComplete:Z

    .line 388
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    .line 389
    .local v7, "level":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    move/from16 v17, v0

    .line 390
    .local v17, "rotation":I
    const/4 v13, 0x0

    .line 391
    .local v13, "flags":I
    if-eqz v17, :cond_0

    or-int/lit8 v13, v13, 0x2

    .line 393
    :cond_0
    if-eqz v13, :cond_1

    .line 394
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 395
    if-eqz v17, :cond_1

    .line 396
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    div-int/lit8 v11, v3, 0x2

    .local v11, "centerX":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    div-int/lit8 v12, v3, 0x2

    .line 397
    .local v12, "centerY":I
    int-to-float v3, v11

    int-to-float v4, v12

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 398
    move/from16 v0, v17

    int-to-float v3, v0

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 399
    neg-int v3, v11

    int-to-float v3, v3

    neg-int v4, v12

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 403
    .end local v11    # "centerX":I
    .end local v12    # "centerY":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    if-eq v7, v3, :cond_3

    .line 404
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    shl-int v18, v3, v7

    .line 405
    .local v18, "size":I
    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float v10, v3, v4

    .line 406
    .local v10, "length":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 408
    .local v16, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .local v6, "ty":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v3, :cond_3

    .line 409
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetY:I

    int-to-float v3, v3

    int-to-float v4, v14

    mul-float/2addr v4, v10

    add-float v9, v3, v4

    .line 410
    .local v9, "y":F
    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .local v5, "tx":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v5, v3, :cond_2

    .line 411
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetX:I

    int-to-float v3, v3

    int-to-float v4, v15

    mul-float/2addr v4, v10

    add-float v8, v3, v4

    .local v8, "x":F
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 412
    invoke-direct/range {v3 .. v10}, Lcom/android/photos/views/TiledImageRenderer;->drawTile(Lcom/android/gallery3d/glrenderer/GLCanvas;IIIFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    add-int v5, v5, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 408
    .end local v8    # "x":F
    :cond_2
    add-int v6, v6, v18

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 417
    .end local v5    # "tx":I
    .end local v6    # "ty":I
    .end local v9    # "y":F
    .end local v10    # "length":F
    .end local v14    # "i":I
    .end local v15    # "j":I
    .end local v16    # "r":Landroid/graphics/Rect;
    .end local v18    # "size":I
    :cond_3
    if-eqz v13, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 420
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mRenderComplete:Z

    if-eqz v3, :cond_7

    .line 421
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    if-nez v3, :cond_5

    .line 422
    invoke-direct/range {p0 .. p1}, Lcom/android/photos/views/TiledImageRenderer;->uploadBackgroundTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 427
    :cond_5
    :goto_2
    return-void

    .line 417
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_6
    throw v3

    .line 425
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidate()V

    goto :goto_2
.end method

.method public notifyModelInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidateTiles()V

    .line 193
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    if-nez v0, :cond_0

    .line 194
    iput v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 195
    iput v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 196
    iput v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    .line 203
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 204
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidate()V

    .line 205
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 199
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 200
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-static {v0}, Lcom/android/photos/views/TiledImageRenderer;->calulateLevelCount(Lcom/android/photos/views/TiledImageRenderer$TileSource;)I

    move-result v0

    iput v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    .line 201
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getTileSize()I

    move-result v0

    iput v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    goto :goto_0
.end method

.method public setModel(Lcom/android/photos/views/TiledImageRenderer$TileSource;I)V
    .locals 1
    .param p1, "model"    # Lcom/android/photos/views/TiledImageRenderer$TileSource;
    .param p2, "rotation"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    if-eq v0, p1, :cond_0

    .line 170
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    .line 171
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageRenderer;->notifyModelInvalidated()V

    .line 173
    :cond_0
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    if-eq v0, p2, :cond_1

    .line 174
    iput p2, p0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 176
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidate()V

    .line 178
    :cond_1
    return-void
.end method

.method public setPosition(IIF)V
    .locals 1
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "scale"    # F

    .prologue
    .line 213
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iput p1, p0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    .line 216
    iput p2, p0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    .line 217
    iput p3, p0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 219
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidate()V

    goto :goto_0
.end method

.method public setViewSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    .line 209
    iput p2, p0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    .line 210
    return-void
.end method
