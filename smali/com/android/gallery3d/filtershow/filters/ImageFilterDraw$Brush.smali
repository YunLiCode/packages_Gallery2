.class Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;
.super Ljava/lang/Object;
.source "ImageFilterDraw.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$DrawStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Brush"
.end annotation


# instance fields
.field mBrush:Landroid/graphics/Bitmap;

.field mBrushID:I

.field mType:B

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;I)V
    .locals 0
    .param p2, "brushID"    # I

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->this$0:Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->mBrushID:I

    .line 129
    return-void
.end method


# virtual methods
.method public createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I
    .param p4, "filter"    # Z

    .prologue
    .line 157
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    .local v1, "m":Landroid/graphics/Matrix;
    int-to-float v4, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {p2, p3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 160
    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 163
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 164
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 166
    return-object v3
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFLandroid/graphics/Path;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "color"    # I
    .param p4, "size"    # F
    .param p5, "path"    # Landroid/graphics/Path;

    .prologue
    .line 170
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4}, Landroid/graphics/PathMeasure;-><init>()V

    .line 171
    .local v4, "mPathMeasure":Landroid/graphics/PathMeasure;
    const/4 v9, 0x2

    new-array v5, v9, [F

    .line 172
    .local v5, "mPosition":[F
    const/4 v9, 0x2

    new-array v6, v9, [F

    .line 174
    .local v6, "mTan":[F
    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 176
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, p3

    invoke-direct {v9, v0, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 183
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->getBrush()Landroid/graphics/Bitmap;

    move-result-object v9

    move/from16 v0, p4

    float-to-int v10, v0

    move/from16 v0, p4

    float-to-int v11, v0

    const/4 v12, 0x1

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 184
    .local v1, "brush":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    .line 185
    .local v3, "len":F
    const/high16 v9, 0x40000000

    div-float v7, p4, v9

    .line 186
    .local v7, "s2":F
    const/high16 v9, 0x41000000

    div-float v8, v7, v9

    .line 187
    .local v8, "step":F
    const/4 v2, 0x0

    .local v2, "i":F
    :goto_0
    cmpg-float v9, v2, v3

    if-gez v9, :cond_0

    .line 188
    invoke-virtual {v4, v2, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 190
    const/4 v9, 0x0

    aget v9, v5, v9

    sub-float/2addr v9, v7

    const/4 v10, 0x1

    aget v10, v5, v10

    sub-float/2addr v10, v7

    invoke-virtual {p1, v1, v9, v10, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 187
    add-float/2addr v2, v8

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public getBrush()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->mBrush:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 132
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 133
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 134
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->mBrushID:I

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->decodeImage(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->mBrush:Landroid/graphics/Bitmap;

    .line 135
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->mBrush:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->mBrush:Landroid/graphics/Bitmap;

    .line 137
    .end local v0    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->mBrush:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public paint(Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "sd"    # Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "toScrMatrix"    # Landroid/graphics/Matrix;
    .param p4, "quality"    # I

    .prologue
    .line 143
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 147
    .local v2, "paint":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 150
    .local v5, "mCacheTransPath":Landroid/graphics/Path;
    iget-object v0, p1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 151
    iget v3, p1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    const/high16 v1, 0x40000000

    mul-float v4, v0, v1

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFLandroid/graphics/Path;)V

    goto :goto_0
.end method

.method public setType(B)V
    .locals 0
    .param p1, "type"    # B

    .prologue
    .line 196
    iput-byte p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$Brush;->mType:B

    .line 197
    return-void
.end method
