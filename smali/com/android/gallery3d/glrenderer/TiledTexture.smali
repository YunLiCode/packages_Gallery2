.class public Lcom/android/gallery3d/glrenderer/TiledTexture;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/Texture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/glrenderer/TiledTexture$1;,
        Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;,
        Lcom/android/gallery3d/glrenderer/TiledTexture$Uploader;
    }
.end annotation


# static fields
.field private static sBitmapPaint:Landroid/graphics/Paint;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sFreeTileHead:Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

.field private static final sFreeTileLock:Ljava/lang/Object;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sUploadBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final mDestRect:Landroid/graphics/RectF;

.field private final mHeight:I

.field private final mSrcRect:Landroid/graphics/RectF;

.field private final mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

.field private mUploadIndex:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v8, 0xfe

    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    .line 63
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 64
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;>;"
    const/4 v4, 0x0

    .local v4, "x":I
    iget v3, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    .local v3, "w":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 201
    const/4 v5, 0x0

    .local v5, "y":I
    iget v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    .local v0, "h":I
    :goto_1
    if-ge v5, v0, :cond_0

    .line 202
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->obtainTile()Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    move-result-object v2

    .line 203
    .local v2, "tile":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    iput v4, v2, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    .line 204
    iput v5, v2, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    .line 205
    iput-object p1, v2, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 206
    iget v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    sub-int/2addr v6, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    sub-int/2addr v7, v5

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->setSize(II)V

    .line 209
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit16 v5, v5, 0xfe

    goto :goto_1

    .line 200
    .end local v2    # "tile":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    :cond_0
    add-int/lit16 v4, v4, 0xfe

    goto :goto_0

    .line 212
    .end local v0    # "h":I
    .end local v5    # "y":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    iput-object v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/glrenderer/TiledTexture;Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/glrenderer/TiledTexture;
    .param p1, "x1"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/TiledTexture;->uploadNextTile(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static freeResources()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 229
    sput-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 230
    sput-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 231
    sput-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 232
    sput-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 233
    return-void
.end method

.method private static freeTile(Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;)V
    .locals 2
    .param p0, "tile"    # Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->invalidateContent()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 157
    sget-object v1, Lcom/android/gallery3d/glrenderer/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    .line 159
    sput-object p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
    .locals 4
    .param p0, "output"    # Landroid/graphics/RectF;
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "x0"    # F
    .param p3, "y0"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "scaleX"    # F
    .param p7, "scaleY"    # F

    .prologue
    .line 261
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p6

    add-float/2addr v0, p4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    mul-float/2addr v1, p7

    add-float/2addr v1, p5

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p2

    mul-float/2addr v2, p6

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    mul-float/2addr v3, p7

    add-float/2addr v3, p5

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 265
    return-void
.end method

.method private static obtainTile()Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    .locals 3

    .prologue
    .line 164
    sget-object v2, Lcom/android/gallery3d/glrenderer/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    .line 166
    .local v0, "result":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    .end local v0    # "result":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;-><init>(Lcom/android/gallery3d/glrenderer/TiledTexture$1;)V

    monitor-exit v2

    .line 169
    .restart local v0    # "result":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-object v1, v0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    sput-object v1, Lcom/android/gallery3d/glrenderer/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    .line 168
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    .line 169
    monitor-exit v2

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static prepareResources()V
    .locals 3

    .prologue
    const/16 v1, 0x100

    .line 236
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 237
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/android/gallery3d/glrenderer/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 238
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 239
    sget-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 240
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 241
    sget-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 242
    sget-object v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    return-void
.end method

.method private uploadNextTile(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 8
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    iget v4, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 176
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    monitor-enter v4

    .line 177
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    iget v6, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    aget-object v1, v5, v6

    .line 181
    .local v1, "next":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    iget-object v5, v1, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 182
    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->isLoaded()Z

    move-result v0

    .line 183
    .local v0, "hasBeenLoad":Z
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 189
    if-nez v0, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, p1, v5, v6}, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    .line 191
    .end local v0    # "hasBeenLoad":Z
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget v4, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v5, v5

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 191
    .end local v1    # "next":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 342
    iget v4, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    iget v5, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/TiledTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 343
    return-void
.end method

.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 13
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 290
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 291
    .local v2, "src":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 292
    .local v1, "dest":Landroid/graphics/RectF;
    move/from16 v0, p4

    int-to-float v3, v0

    iget v4, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    .line 293
    .local v7, "scaleX":F
    move/from16 v0, p5

    int-to-float v3, v0

    iget v4, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 294
    .local v8, "scaleY":F
    iget-object v12, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    monitor-enter v12

    .line 295
    const/4 v9, 0x0

    .local v9, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v10, v3

    .local v10, "n":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 296
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    aget-object v11, v3, v9

    .line 297
    .local v11, "t":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 298
    iget v3, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 299
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p2

    move/from16 v0, p3

    int-to-float v6, v0

    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/glrenderer/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 300
    iget v3, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 301
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    invoke-interface {p1, v11, v3, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 295
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 303
    .end local v11    # "t":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    :cond_0
    monitor-exit v12

    .line 304
    return-void

    .line 303
    .end local v10    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 17
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 309
    .local v2, "src":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 310
    .local v1, "dest":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 311
    .local v3, "x0":F
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 312
    .local v4, "y0":F
    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 313
    .local v5, "x":F
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/RectF;->top:F

    .line 314
    .local v6, "y":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v7, v12, v13

    .line 315
    .local v7, "scaleX":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v8, v12, v13

    .line 317
    .local v8, "scaleY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    monitor-enter v13

    .line 318
    const/4 v9, 0x0

    .local v9, "i":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v10, v12

    .local v10, "n":I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 319
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    aget-object v11, v12, v9

    .line 320
    .local v11, "t":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    const/4 v12, 0x0

    const/4 v14, 0x0

    iget v15, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->contentWidth:I

    int-to-float v15, v15

    iget v0, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->contentHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v12, v14, v15, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 321
    iget v12, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    int-to-float v12, v12

    iget v14, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    int-to-float v14, v14

    invoke-virtual {v2, v12, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 322
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 318
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 323
    :cond_0
    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/glrenderer/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 324
    iget v12, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    iget v14, v11, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v14, v14, 0x1

    int-to-float v14, v14

    invoke-virtual {v2, v12, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 325
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2, v1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1

    .line 327
    .end local v10    # "n":I
    .end local v11    # "t":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .restart local v10    # "n":I
    :cond_1
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    return-void
.end method

.method public drawMixed(Lcom/android/gallery3d/glrenderer/GLCanvas;IFIIII)V
    .locals 18
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "color"    # I
    .param p3, "ratio"    # F
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 272
    .local v2, "src":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 273
    .local v1, "dest":Landroid/graphics/RectF;
    move/from16 v0, p6

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    .line 274
    .local v7, "scaleX":F
    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 275
    .local v8, "scaleY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 276
    const/4 v15, 0x0

    .local v15, "i":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v0, v3

    move/from16 v16, v0

    .local v16, "n":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    aget-object v10, v3, v15

    .line 278
    .local v10, "t":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v10, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v10, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 279
    iget v3, v10, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v10, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 280
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/glrenderer/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 281
    iget v3, v10, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v10, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-interface/range {v9 .. v14}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 276
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 284
    .end local v10    # "t":Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
    :cond_0
    monitor-exit v17

    .line 285
    return-void

    .line 284
    .end local v16    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 4

    .prologue
    .line 221
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    monitor-enter v3

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/gallery3d/glrenderer/TiledTexture;->freeTile(Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    monitor-exit v3

    .line 226
    return-void

    .line 225
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
