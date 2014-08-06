.class Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;
.super Lcom/android/gallery3d/glrenderer/UploadedTexture;
.source "TiledTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/glrenderer/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tile"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public contentHeight:I

.field public contentWidth:I

.field public nextFreeTile:Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;

.field public offsetX:I

.field public offsetY:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/glrenderer/TiledTexture$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/glrenderer/TiledTexture$1;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 151
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/16 v11, 0xfe

    const/high16 v4, 0x43800000

    const/4 v2, 0x0

    .line 132
    iget v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v9, v0, 0x1

    .line 133
    .local v9, "x":I
    iget v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v10, v0, 0x1

    .line 134
    .local v10, "y":I
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int v8, v0, v9

    .line 135
    .local v8, "r":I
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int v7, v0, v10

    .line 136
    .local v7, "b":I
    # getter for: Lcom/android/gallery3d/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v9

    int-to-float v5, v10

    # getter for: Lcom/android/gallery3d/glrenderer/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$100()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 140
    if-lez v9, :cond_0

    # getter for: Lcom/android/gallery3d/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v0

    add-int/lit8 v1, v9, -0x1

    int-to-float v1, v1

    add-int/lit8 v3, v9, -0x1

    int-to-float v3, v3

    # getter for: Lcom/android/gallery3d/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    :cond_0
    if-lez v10, :cond_1

    # getter for: Lcom/android/gallery3d/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v1

    add-int/lit8 v0, v10, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, v10, -0x1

    int-to-float v5, v0

    # getter for: Lcom/android/gallery3d/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 142
    :cond_1
    if-ge v8, v11, :cond_2

    # getter for: Lcom/android/gallery3d/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, v8

    int-to-float v3, v8

    # getter for: Lcom/android/gallery3d/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 143
    :cond_2
    if-ge v7, v11, :cond_3

    # getter for: Lcom/android/gallery3d/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v1

    int-to-float v3, v7

    int-to-float v5, v7

    # getter for: Lcom/android/gallery3d/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 145
    :cond_3
    # getter for: Lcom/android/gallery3d/glrenderer/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/gallery3d/glrenderer/TiledTexture;->access$400()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v1, 0x100

    .line 122
    iput p1, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->contentWidth:I

    .line 123
    iput p2, p0, Lcom/android/gallery3d/glrenderer/TiledTexture$Tile;->contentHeight:I

    .line 124
    add-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mWidth:I

    .line 125
    add-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mHeight:I

    .line 126
    iput v1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    .line 127
    iput v1, p0, Lcom/android/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    .line 128
    return-void
.end method
