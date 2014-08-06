.class public Lcom/android/gallery3d/filtershow/filters/LSC;
.super Ljava/lang/Object;
.source "LSC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/filters/LSC$TileData;
    }
.end annotation


# instance fields
.field final IMAGE_SCALE_FAC:F

.field final IMAGE_SCALE_PRESCALED:F

.field private mHistogramResult:[I

.field private mLookupTextureSizeHeight:I

.field private mLookupTextureSizeWidth:I

.field private mRadius:I

.field private mSigma:F

.field private mTileCount:I

.field private mTileData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/LSC$TileData;",
            ">;"
        }
    .end annotation
.end field

.field private mTileSize:I

.field private mUseNaturalHistogramAlignment:Z


# direct methods
.method constructor <init>(IFZ)V
    .locals 2
    .param p1, "tileCount"    # I
    .param p2, "sigma"    # F
    .param p3, "useNaturalHistogramAlignment"    # Z

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/high16 v0, 0x3e800000

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->IMAGE_SCALE_FAC:F

    .line 81
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->IMAGE_SCALE_PRESCALED:F

    .line 90
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mHistogramResult:[I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileData:Ljava/util/List;

    .line 102
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileCount:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileSize:I

    .line 104
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mSigma:F

    .line 105
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mLookupTextureSizeWidth:I

    .line 106
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mLookupTextureSizeHeight:I

    .line 107
    iput-boolean p3, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mUseNaturalHistogramAlignment:Z

    .line 108
    const/high16 v0, 0x40400000

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mSigma:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mRadius:I

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    return-void
.end method

.method private blurHistogram([I[I)V
    .locals 13
    .param p1, "histogram"    # [I
    .param p2, "histogramResult"    # [I

    .prologue
    const/16 v12, 0x40

    const/16 v8, 0x3f

    const/high16 v11, 0x3f000000

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v12, :cond_4

    .line 178
    iget v9, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mRadius:I

    sub-int v9, v1, v9

    if-gez v9, :cond_0

    const/4 v3, 0x0

    .line 179
    .local v3, "left":I
    :goto_1
    iget v9, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mRadius:I

    add-int/2addr v9, v1

    if-le v9, v8, :cond_1

    move v7, v8

    .line 180
    .local v7, "right":I
    :goto_2
    const/4 v4, 0x0

    .line 181
    .local v4, "nominator":F
    const/4 v0, 0x0

    .line 183
    .local v0, "denominator":F
    move v2, v3

    .local v2, "j":I
    :goto_3
    if-gt v2, v7, :cond_3

    .line 184
    const/high16 v9, 0x3f800000

    sub-int v10, v2, v1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mSigma:F

    div-float v5, v9, v10

    .line 185
    .local v5, "pos":F
    mul-float/2addr v5, v5

    .line 187
    const/high16 v9, 0x41200000

    cmpl-float v9, v5, v9

    if-lez v9, :cond_2

    const/4 v6, 0x0

    .line 189
    .local v6, "posTmp":F
    :goto_4
    int-to-float v9, v2

    add-float/2addr v9, v11

    mul-float/2addr v9, v6

    aget v10, p1, v2

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v4, v9

    .line 190
    aget v9, p1, v2

    int-to-float v9, v9

    mul-float/2addr v9, v6

    add-float/2addr v0, v9

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 178
    .end local v0    # "denominator":F
    .end local v2    # "j":I
    .end local v3    # "left":I
    .end local v4    # "nominator":F
    .end local v5    # "pos":F
    .end local v6    # "posTmp":F
    .end local v7    # "right":I
    :cond_0
    iget v9, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mRadius:I

    sub-int v3, v1, v9

    goto :goto_1

    .line 179
    .restart local v3    # "left":I
    :cond_1
    iget v9, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mRadius:I

    add-int v7, v1, v9

    goto :goto_2

    .line 187
    .restart local v0    # "denominator":F
    .restart local v2    # "j":I
    .restart local v4    # "nominator":F
    .restart local v5    # "pos":F
    .restart local v7    # "right":I
    :cond_2
    const/high16 v9, -0x41000000

    mul-float/2addr v9, v5

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    double-to-float v6, v9

    goto :goto_4

    .line 194
    .end local v5    # "pos":F
    :cond_3
    const/high16 v9, 0x40800000

    mul-float/2addr v9, v4

    div-float/2addr v9, v0

    add-float/2addr v9, v11

    float-to-int v9, v9

    aput v9, p2, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "denominator":F
    .end local v2    # "j":I
    .end local v3    # "left":I
    .end local v4    # "nominator":F
    .end local v7    # "right":I
    :cond_4
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v12, :cond_5

    .line 198
    aget v8, p2, v1

    aput v8, p1, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 200
    :cond_5
    return-void
.end method

.method private processTile(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/filters/LSC$TileData;[I)V
    .locals 14
    .param p1, "rgba8Data"    # Landroid/graphics/Bitmap;
    .param p2, "td"    # Lcom/android/gallery3d/filtershow/filters/LSC$TileData;
    .param p3, "histogramResult"    # [I

    .prologue
    .line 152
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v11, 0x40

    if-ge v5, v11, :cond_0

    .line 153
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->getHistogram()[I

    move-result-object v11

    const/4 v12, 0x1

    aput v12, v11, v5

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const v3, 0x41424924

    .line 159
    .local v3, "colorToHistogrammFac":F
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->getTileHeight()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 160
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->getTileWidth()I

    move-result v11

    if-ge v9, v11, :cond_1

    .line 161
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->getXPos()I

    move-result v11

    iget v12, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileSize:I

    mul-int/2addr v11, v12

    add-int/2addr v11, v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->getYPos()I

    move-result v12

    iget v13, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileSize:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 163
    .local v2, "color":I
    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v7, v11, 0xff

    .line 164
    .local v7, "r":I
    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v4, v11, 0xff

    .line 165
    .local v4, "g":I
    and-int/lit16 v1, v2, 0xff

    .line 166
    .local v1, "b":I
    add-int v11, v7, v4

    add-int v8, v11, v1

    .line 167
    .local v8, "sum":I
    const/high16 v11, 0x3f000000

    const/high16 v12, 0x3f800000

    int-to-float v13, v8

    mul-float/2addr v12, v13

    const v13, 0x41424924

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v6, v11

    .line 169
    .local v6, "idx":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->getHistogram()[I

    move-result-object v11

    aget v12, v11, v6

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v6

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 159
    .end local v1    # "b":I
    .end local v2    # "color":I
    .end local v4    # "g":I
    .end local v6    # "idx":I
    .end local v7    # "r":I
    .end local v8    # "sum":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 173
    .end local v9    # "x":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->getHistogram()[I

    move-result-object v11

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/android/gallery3d/filtershow/filters/LSC;->blurHistogram([I[I)V

    .line 174
    return-void
.end method


# virtual methods
.method public calculateLookupTextureSizeHeight()I
    .locals 4

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/LSC;->countTilesX()I

    move-result v0

    .line 231
    .local v0, "xTileCount":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/LSC;->countTilesY()I

    move-result v1

    .line 233
    .local v1, "yTileCount":I
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mUseNaturalHistogramAlignment:Z

    if-eqz v2, :cond_0

    .end local v1    # "yTileCount":I
    :goto_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mLookupTextureSizeHeight:I

    .line 235
    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mLookupTextureSizeHeight:I

    return v2

    .line 233
    .restart local v1    # "yTileCount":I
    :cond_0
    mul-int v2, v0, v1

    int-to-float v2, v2

    const/high16 v3, 0x40800000

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    goto :goto_0
.end method

.method public calculateLookupTextureSizeWidth()I
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/LSC;->countTilesX()I

    move-result v0

    .line 222
    .local v0, "xTileCount":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/LSC;->countTilesY()I

    move-result v1

    .line 224
    .local v1, "yTileCount":I
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mUseNaturalHistogramAlignment:Z

    if-eqz v2, :cond_0

    mul-int/lit8 v2, v0, 0x40

    :goto_0
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mLookupTextureSizeWidth:I

    .line 226
    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mLookupTextureSizeWidth:I

    return v2

    .line 224
    :cond_0
    const/16 v2, 0x100

    goto :goto_0
.end method

.method public countTilesX()I
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;

    .line 243
    .local v2, "td":Lcom/android/gallery3d/filtershow/filters/LSC$TileData;
    # getter for: Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mXPos:I
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->access$000(Lcom/android/gallery3d/filtershow/filters/LSC$TileData;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v2    # "td":Lcom/android/gallery3d/filtershow/filters/LSC$TileData;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public countTilesY()I
    .locals 4

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;

    .line 254
    .local v2, "td":Lcom/android/gallery3d/filtershow/filters/LSC$TileData;
    # getter for: Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->mYPos:I
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->access$100(Lcom/android/gallery3d/filtershow/filters/LSC$TileData;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "td":Lcom/android/gallery3d/filtershow/filters/LSC$TileData;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public createLookupTexture()[B
    .locals 8

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/LSC;->calculateLookupTextureSizeWidth()I

    .line 204
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/LSC;->calculateLookupTextureSizeHeight()I

    .line 206
    iget v6, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mLookupTextureSizeWidth:I

    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mLookupTextureSizeHeight:I

    mul-int/2addr v6, v7

    new-array v5, v6, [B

    .line 207
    .local v5, "memory":[B
    const/4 v2, 0x0

    .line 209
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 210
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileData:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;

    .line 212
    .local v0, "data":Lcom/android/gallery3d/filtershow/filters/LSC$TileData;
    const/4 v4, 0x0

    .local v4, "j":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_1
    const/16 v6, 0x40

    if-ge v4, v6, :cond_0

    .line 213
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;->getHistogram()[I

    move-result-object v6

    aget v6, v6, v4

    add-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 212
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_1

    .line 209
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 217
    .end local v0    # "data":Lcom/android/gallery3d/filtershow/filters/LSC$TileData;
    .end local v4    # "j":I
    :cond_1
    return-object v5
.end method

.method public processTiles(Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1, "rgba8Data"    # Landroid/graphics/Bitmap;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 121
    .local v9, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 123
    .local v6, "height":I
    if-lt v9, v6, :cond_1

    move v8, v9

    .line 124
    .local v8, "maxWH":I
    :goto_0
    int-to-float v0, v8

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileSize:I

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "xCnt":I
    const/4 v3, 0x0

    .line 130
    .local v3, "yCnt":I
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_1
    if-ge v12, v6, :cond_0

    .line 131
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileSize:I

    add-int/2addr v0, v12

    if-lt v0, v6, :cond_2

    sub-int v5, v6, v12

    .line 132
    .local v5, "tileHeight":I
    :goto_2
    if-gtz v5, :cond_3

    .line 146
    .end local v5    # "tileHeight":I
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_7

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileData:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mHistogramResult:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/filters/LSC;->processTile(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/filters/LSC$TileData;[I)V

    .line 146
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v2    # "xCnt":I
    .end local v3    # "yCnt":I
    .end local v7    # "i":I
    .end local v8    # "maxWH":I
    .end local v12    # "y":I
    :cond_1
    move v8, v6

    .line 123
    goto :goto_0

    .line 131
    .restart local v2    # "xCnt":I
    .restart local v3    # "yCnt":I
    .restart local v8    # "maxWH":I
    .restart local v12    # "y":I
    :cond_2
    iget v5, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileSize:I

    goto :goto_2

    .line 134
    .restart local v5    # "tileHeight":I
    :cond_3
    const/4 v2, 0x0

    .line 136
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_4
    if-ge v10, v9, :cond_6

    .line 137
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileSize:I

    add-int/2addr v0, v10

    if-lt v0, v9, :cond_4

    sub-int v4, v9, v10

    .line 138
    .local v4, "tileWidth":I
    :goto_5
    if-gtz v4, :cond_5

    .line 136
    :goto_6
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileSize:I

    add-int/2addr v10, v0

    goto :goto_4

    .line 137
    .end local v4    # "tileWidth":I
    :cond_4
    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileSize:I

    goto :goto_5

    .line 140
    .restart local v4    # "tileWidth":I
    :cond_5
    iget-object v13, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileData:Ljava/util/List;

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;

    add-int/lit8 v11, v2, 0x1

    .end local v2    # "xCnt":I
    .local v11, "xCnt":I
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/LSC$TileData;-><init>(Lcom/android/gallery3d/filtershow/filters/LSC;IIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v11

    .end local v11    # "xCnt":I
    .restart local v2    # "xCnt":I
    goto :goto_6

    .line 143
    .end local v4    # "tileWidth":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 130
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/LSC;->mTileSize:I

    add-int/2addr v12, v0

    goto :goto_1

    .line 149
    .end local v5    # "tileHeight":I
    .end local v10    # "x":I
    .restart local v7    # "i":I
    :cond_7
    return-void
.end method
