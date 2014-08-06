.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterGeometry.java"


# instance fields
.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 32
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 44
    const-string v0, "Geometry"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 26
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v5

    .line 77
    .local v5, "cb":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v15

    .line 78
    .local v15, "pb":Landroid/graphics/RectF;
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_0

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_0

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_1

    .line 79
    :cond_0
    const-string v22, "ImageFilterGeometry"

    const-string v23, "Cannot apply geometry: geometry metadata has not been initialized"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, p1

    .line 137
    :goto_0
    return-object v19

    .line 82
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getCropExtras()Lcom/android/gallery3d/filtershow/crop/CropExtras;

    move-result-object v9

    .line 83
    .local v9, "extras":Lcom/android/gallery3d/filtershow/crop/CropExtras;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getUseCropExtrasFlag()Z

    move-result v20

    .line 84
    .local v20, "useExtras":Z
    const/4 v12, 0x0

    .line 85
    .local v12, "outputX":I
    const/4 v13, 0x0

    .line 86
    .local v13, "outputY":I
    const/16 v16, 0x0

    .line 87
    .local v16, "s":Z
    if-eqz v9, :cond_2

    if-eqz v20, :cond_2

    .line 88
    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getOutputX()I

    move-result v12

    .line 89
    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getOutputY()I

    move-result v13

    .line 90
    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getScaleUp()Z

    move-result v16

    .line 94
    :cond_2
    new-instance v7, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    .local v7, "cropBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getCropBounds(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v6

    .line 96
    .local v6, "crop":Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_3

    .line 97
    invoke-static {v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v7

    .line 99
    :cond_3
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 100
    .local v21, "width":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 102
    .local v10, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasSwitchedWidthHeight()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 103
    move/from16 v19, v21

    .line 104
    .local v19, "temp":I
    move/from16 v21, v10

    .line 105
    move/from16 v10, v19

    .line 108
    .end local v19    # "temp":I
    :cond_4
    if-lez v12, :cond_5

    if-gtz v13, :cond_6

    .line 109
    :cond_5
    move/from16 v12, v21

    .line 110
    move v13, v10

    .line 113
    :cond_6
    const/high16 v17, 0x3f800000

    .line 114
    .local v17, "scaleX":F
    const/high16 v18, 0x3f800000

    .line 115
    .local v18, "scaleY":F
    if-eqz v16, :cond_7

    .line 116
    int-to-float v0, v12

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v17, v22, v23

    .line 117
    int-to-float v0, v13

    move/from16 v22, v0

    int-to-float v0, v10

    move/from16 v23, v0

    div-float v18, v22, v23

    .line 120
    :cond_7
    const/16 v19, 0x0

    .line 121
    .local v19, "temp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v12, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 123
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v8, v0, [F

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    aput v23, v8, v22

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000

    div-float v23, v23, v24

    aput v23, v8, v22

    .line 127
    .local v8, "displayCenter":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildTotalXform(FF[F)Landroid/graphics/Matrix;

    move-result-object v11

    .line 129
    .local v11, "m1":Landroid/graphics/Matrix;
    const/16 v22, 0x0

    aget v22, v8, v22

    const/16 v23, 0x1

    aget v23, v8, v23

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 131
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 133
    .local v14, "paint":Landroid/graphics/Paint;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 135
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    .line 51
    .local v0, "filter":Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 68
    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 69
    return-void
.end method
