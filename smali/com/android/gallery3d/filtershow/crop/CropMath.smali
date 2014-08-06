.class public Lcom/android/gallery3d/filtershow/crop/CropMath;
.super Ljava/lang/Object;
.source "CropMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closestSide([F[F)[F
    .locals 8
    .param p0, "point"    # [F
    .param p1, "corners"    # [F

    .prologue
    .line 114
    array-length v2, p1

    .line 115
    .local v2, "len":I
    const/high16 v5, 0x7f800000

    .line 116
    .local v5, "oldMag":F
    const/4 v0, 0x0

    .line 117
    .local v0, "bestLine":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 118
    const/4 v6, 0x4

    new-array v3, v6, [F

    const/4 v6, 0x0

    aget v7, p1, v1

    aput v7, v3, v6

    const/4 v6, 0x1

    add-int/lit8 v7, v1, 0x1

    rem-int/2addr v7, v2

    aget v7, p1, v7

    aput v7, v3, v6

    const/4 v6, 0x2

    add-int/lit8 v7, v1, 0x2

    rem-int/2addr v7, v2

    aget v7, p1, v7

    aput v7, v3, v6

    const/4 v6, 0x3

    add-int/lit8 v7, v1, 0x3

    rem-int/2addr v7, v2

    aget v7, p1, v7

    aput v7, v3, v6

    .line 122
    .local v3, "line":[F
    invoke-static {p0, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->shortestVectorFromPointToLine([F[F)[F

    move-result-object v6

    invoke-static {v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->vectorLength([F)F

    move-result v4

    .line 124
    .local v4, "mag":F
    cmpg-float v6, v4, v5

    if-gez v6, :cond_0

    .line 125
    move v5, v4

    .line 126
    move-object v0, v3

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 129
    .end local v3    # "line":[F
    .end local v4    # "mag":F
    :cond_1
    return-object v0
.end method

.method public static constrainedRotation(F)I
    .locals 3
    .param p0, "rotation"    # F

    .prologue
    .line 244
    const/high16 v1, 0x43b40000

    rem-float v1, p0, v1

    const/high16 v2, 0x42b40000

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 245
    .local v0, "r":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 246
    :cond_0
    mul-int/lit8 v1, v0, 0x5a

    return v1
.end method

.method public static fixAspectRatio(Landroid/graphics/RectF;FF)V
    .locals 9
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    const/high16 v7, 0x40000000

    .line 174
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 175
    .local v4, "scale":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 176
    .local v0, "centX":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 177
    .local v1, "centY":F
    mul-float v5, v4, p1

    div-float v3, v5, v7

    .line 178
    .local v3, "hw":F
    mul-float v5, v4, p2

    div-float v2, v5, v7

    .line 179
    .local v2, "hh":F
    sub-float v5, v0, v3

    sub-float v6, v1, v2

    add-float v7, v0, v3

    add-float v8, v1, v2

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 180
    return-void
.end method

.method public static fixAspectRatioContained(Landroid/graphics/RectF;FF)V
    .locals 14
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v9

    .line 192
    .local v9, "origW":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 193
    .local v8, "origH":F
    div-float v7, v9, v8

    .line 194
    .local v7, "origA":F
    div-float v0, p1, p2

    .line 195
    .local v0, "a":F
    move v4, v9

    .line 196
    .local v4, "finalW":F
    move v3, v8

    .line 197
    .local v3, "finalH":F
    cmpg-float v10, v7, v0

    if-gez v10, :cond_0

    .line 198
    div-float v3, v9, v0

    .line 202
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 203
    .local v1, "centX":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 204
    .local v2, "centY":F
    const/high16 v10, 0x40000000

    div-float v6, v4, v10

    .line 205
    .local v6, "hw":F
    const/high16 v10, 0x40000000

    div-float v5, v3, v10

    .line 206
    .local v5, "hh":F
    sub-float v10, v1, v6

    sub-float v11, v2, v5

    add-float v12, v1, v6

    add-float v13, v2, v5

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 207
    return-void

    .line 200
    .end local v1    # "centX":F
    .end local v2    # "centY":F
    .end local v5    # "hh":F
    .end local v6    # "hw":F
    :cond_0
    mul-float v4, v8, v0

    goto :goto_0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static getCornersFromRect(Landroid/graphics/RectF;)[F
    .locals 3
    .param p0, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 43
    const/16 v1, 0x8

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    .line 49
    .local v0, "corners":[F
    return-object v0
.end method

.method public static getEdgePoints(Landroid/graphics/RectF;[F)V
    .locals 5
    .param p0, "imageBound"    # Landroid/graphics/RectF;
    .param p1, "array"    # [F

    .prologue
    .line 97
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 103
    :cond_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 100
    aget v1, p1, v0

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->clamp(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 101
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->clamp(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 99
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3
    .param p0, "cropBounds"    # Landroid/graphics/RectF;
    .param p1, "photoBounds"    # Landroid/graphics/RectF;
    .param p2, "displayBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 220
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 221
    .local v0, "m":Landroid/graphics/Matrix;
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p1, p2, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 222
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 223
    .local v1, "trueCrop":Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    const/4 v1, 0x0

    .line 226
    .end local v1    # "trueCrop":Landroid/graphics/RectF;
    :cond_0
    return-object v1
.end method

.method public static inclusiveContains(Landroid/graphics/RectF;FF)Z
    .locals 1
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 63
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trapToRect([F)Landroid/graphics/RectF;
    .locals 6
    .param p0, "array"    # [F

    .prologue
    const/high16 v5, 0x7f800000

    const/high16 v4, -0x800000

    .line 74
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v5, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    .local v1, "r":Landroid/graphics/RectF;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_4

    .line 77
    add-int/lit8 v4, v0, -0x1

    aget v2, p0, v4

    .line 78
    .local v2, "x":F
    aget v3, p0, v0

    .line 79
    .local v3, "y":F
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    move v4, v2

    :goto_1
    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 80
    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    move v4, v3

    :goto_2
    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 81
    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .end local v2    # "x":F
    :goto_3
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 82
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .end local v3    # "y":F
    :goto_4
    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 76
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 79
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_0
    iget v4, v1, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 80
    :cond_1
    iget v4, v1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 81
    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 82
    .end local v2    # "x":F
    :cond_3
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    .line 84
    .end local v3    # "y":F
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/RectF;->sort()V

    .line 85
    return-object v1
.end method
