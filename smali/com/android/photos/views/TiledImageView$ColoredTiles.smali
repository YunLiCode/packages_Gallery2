.class Lcom/android/photos/views/TiledImageView$ColoredTiles;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Lcom/android/photos/views/TiledImageRenderer$TileSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColoredTiles"
.end annotation


# static fields
.field private static COLORS:[I


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xffff01
        -0x100
        -0xff0100
        -0xff0001
        -0xff01
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 219
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    .line 231
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/photos/views/TiledImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/photos/views/TiledImageView$1;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageView$ColoredTiles;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    .prologue
    .line 245
    const/16 v0, 0x2000

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 240
    const/16 v0, 0x4000

    return v0
.end method

.method public getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v5, 0x43000000

    .line 250
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView$ColoredTiles;->getTileSize()I

    move-result v0

    .line 251
    .local v0, "tileSize":I
    if-nez p4, :cond_0

    .line 252
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/photos/views/TiledImageView$ColoredTiles;->COLORS:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 257
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41a00000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 259
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 260
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    shl-int/2addr v0, p1

    .line 262
    div-int/2addr p2, v0

    .line 263
    div-int/2addr p3, v0

    .line 264
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41f00000

    iget-object v4, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 265
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$ColoredTiles;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    return-object p4
.end method

.method public getTileSize()I
    .locals 1

    .prologue
    .line 235
    const/16 v0, 0x100

    return v0
.end method
