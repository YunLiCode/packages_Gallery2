.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterDraw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;,
        Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$SimpleDraw;,
        Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$DrawStyle;
    }
.end annotation


# instance fields
.field mCachedStrokes:I

.field mCurrentStyle:I

.field mDrawingsTypes:[Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$DrawStyle;

.field mOverlayBitmap:Landroid/graphics/Bitmap;

.field mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    .line 46
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mCurrentStyle:I

    .line 48
    new-instance v1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    .line 54
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$DrawStyle;

    new-instance v2, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$SimpleDraw;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$SimpleDraw;-><init>(Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;)V

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;

    const v4, 0x7f020010

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;-><init>(Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;

    const v4, 0x7f020011

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;-><init>(Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;I)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mDrawingsTypes:[Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$DrawStyle;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mDrawingsTypes:[Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$DrawStyle;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mDrawingsTypes:[Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$DrawStyle;

    aget-object v1, v1, v0

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$DrawStyle;->setType(B)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const-string v1, "Image Draw"

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 267
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 269
    .local v0, "h":I
    invoke-virtual {p0, v2, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object v1

    .line 270
    .local v1, "m":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3, v1, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->drawData(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 271
    return-object p1
.end method

.method public drawData(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "originalRotateToScreen"    # Landroid/graphics/Matrix;
    .param p3, "quality"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    .line 206
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 207
    .local v1, "paint":Landroid/graphics/Paint;
    if-ne p3, v5, :cond_0

    .line 208
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    :cond_0
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    const/high16 v4, -0x10000

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    const/high16 v4, 0x42200000

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->getCurrentDrawing()Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    move-result-object v4

    if-nez v4, :cond_2

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    if-ne p3, v5, :cond_3

    .line 218
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    .line 219
    .local v3, "strokeData":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->paint(Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto :goto_1

    .line 224
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "strokeData":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    if-ge v4, v5, :cond_5

    .line 229
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 231
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    .line 234
    :cond_5
    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 235
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->fillBuffer(Landroid/graphics/Matrix;)V

    .line 237
    :cond_6
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 239
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->getCurrentDrawing()Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    move-result-object v2

    .line 240
    .local v2, "stroke":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;
    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->paint(Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto :goto_0
.end method

.method public fillBuffer(Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "originalRotateToScreen"    # Landroid/graphics/Matrix;

    .prologue
    .line 246
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 247
    .local v0, "drawCache":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->getDrawing()Ljava/util/Vector;

    move-result-object v3

    .line 248
    .local v3, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;>;"
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 250
    .local v2, "n":I
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 251
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v0, p1, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->paint(Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_0
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mCachedStrokes:I

    .line 254
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;-><init>()V

    return-object v0
.end method

.method paint(Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2
    .param p1, "sd"    # Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "toScrMatrix"    # Landroid/graphics/Matrix;
    .param p4, "quality"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mDrawingsTypes:[Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$DrawStyle;

    iget-byte v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mType:B

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$DrawStyle;->paint(Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 203
    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 73
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    .line 74
    .local v0, "parameters":Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    .line 75
    return-void
.end method
