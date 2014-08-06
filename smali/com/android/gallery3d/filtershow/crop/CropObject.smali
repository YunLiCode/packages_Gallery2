.class public Lcom/android/gallery3d/filtershow/crop/CropObject;
.super Ljava/lang/Object;
.source "CropObject.java"


# instance fields
.field private mAspectHeight:F

.field private mAspectWidth:F

.field private mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

.field private mFixAspectRatio:Z

.field private mMinSideSize:F

.field private mMovingEdges:I

.field private mRotation:F

.field private mTouchTolerance:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 2
    .param p1, "outerBound"    # Landroid/graphics/RectF;
    .param p2, "innerBound"    # Landroid/graphics/RectF;
    .param p3, "outerAngle"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mAspectWidth:F

    .line 28
    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mAspectHeight:F

    .line 29
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mFixAspectRatio:Z

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mRotation:F

    .line 31
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    .line 32
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mMinSideSize:F

    .line 48
    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mMovingEdges:I

    .line 55
    new-instance v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    rem-int/lit16 v1, p3, 0x168

    int-to-float v1, v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    .line 56
    return-void
.end method

.method private calculateSelectedEdge(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 266
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v1

    .line 268
    .local v1, "cropped":Landroid/graphics/RectF;
    iget v6, v1, Landroid/graphics/RectF;->left:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 269
    .local v3, "left":F
    iget v6, v1, Landroid/graphics/RectF;->right:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 270
    .local v4, "right":F
    iget v6, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 271
    .local v5, "top":F
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 273
    .local v0, "bottom":F
    const/4 v2, 0x0

    .line 275
    .local v2, "edgeSelected":I
    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    add-float/2addr v6, p2

    iget v7, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    sub-float v6, p2, v6

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2

    cmpg-float v6, v3, v4

    if-gez v6, :cond_2

    .line 277
    or-int/lit8 v2, v2, 0x1

    .line 285
    :cond_0
    :goto_0
    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_3

    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    add-float/2addr v6, p1

    iget v7, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    sub-float v6, p1, v6

    iget v7, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    cmpg-float v6, v5, v0

    if-gez v6, :cond_3

    .line 287
    or-int/lit8 v2, v2, 0x2

    .line 293
    :cond_1
    :goto_1
    return v2

    .line 279
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    add-float/2addr v6, p2

    iget v7, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    sub-float v6, p2, v6

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 281
    or-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 289
    :cond_3
    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_1

    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    add-float/2addr v6, p1

    iget v7, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    sub-float v6, p1, v6

    iget v7, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 291
    or-int/lit8 v2, v2, 0x8

    goto :goto_1
.end method

.method public static checkBlock(I)Z
    .locals 1
    .param p0, "selected"    # I

    .prologue
    .line 143
    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkCorner(I)Z
    .locals 1
    .param p0, "selected"    # I

    .prologue
    .line 133
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkEdge(I)Z
    .locals 2
    .param p0, "selected"    # I

    .prologue
    const/4 v0, 0x1

    .line 138
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkValid(I)Z
    .locals 1
    .param p0, "selected"    # I

    .prologue
    .line 147
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/crop/CropObject;->checkBlock(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/crop/CropObject;->checkEdge(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/crop/CropObject;->checkCorner(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fixEdgeToCorner(I)I
    .locals 1
    .param p0, "moving_edges"    # I

    .prologue
    .line 316
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 317
    or-int/lit8 p0, p0, 0x2

    .line 319
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 320
    or-int/lit8 p0, p0, 0x1

    .line 322
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 323
    or-int/lit8 p0, p0, 0x8

    .line 325
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 326
    or-int/lit8 p0, p0, 0x4

    .line 328
    :cond_3
    return p0
.end method

.method private static fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;
    .locals 6
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "moving_corner"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, "newCrop":Landroid/graphics/RectF;
    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 300
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p2

    iget v4, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 312
    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-object v0

    .line 302
    :cond_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    .line 303
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p2

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    goto :goto_0

    .line 305
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 306
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p2

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p3

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    goto :goto_0

    .line 308
    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 309
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p3

    iget v3, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p2

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    goto :goto_0
.end method


# virtual methods
.method public clearSelectState()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mMovingEdges:I

    .line 153
    return-void
.end method

.method public getInnerBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getInnerBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->setToInner(Landroid/graphics/RectF;)V

    .line 64
    return-void
.end method

.method public getOuterBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getOuter()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getSelectState()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mMovingEdges:I

    return v0
.end method

.method public isFixedAspect()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mFixAspectRatio:Z

    return v0
.end method

.method public moveCurrentSelection(FF)Z
    .locals 17
    .param p1, "dX"    # F
    .param p2, "dY"    # F

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mMovingEdges:I

    if-nez v14, :cond_0

    .line 191
    const/4 v14, 0x0

    .line 260
    :goto_0
    return v14

    .line 193
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    invoke-virtual {v14}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v4

    .line 195
    .local v4, "crop":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mMinSideSize:F

    .line 197
    .local v10, "minWidthHeight":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mMovingEdges:I

    .line 198
    .local v11, "movingEdges":I
    const/16 v14, 0x10

    if-ne v11, v14, :cond_1

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->moveInner(FF)V

    .line 200
    const/4 v14, 0x1

    goto :goto_0

    .line 202
    :cond_1
    const/4 v6, 0x0

    .line 203
    .local v6, "dx":F
    const/4 v7, 0x0

    .line 205
    .local v7, "dy":F
    and-int/lit8 v14, v11, 0x1

    if-eqz v14, :cond_2

    .line 206
    iget v14, v4, Landroid/graphics/RectF;->left:F

    add-float v14, v14, p1

    iget v15, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget v15, v4, Landroid/graphics/RectF;->left:F

    sub-float v6, v14, v15

    .line 208
    :cond_2
    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_3

    .line 209
    iget v14, v4, Landroid/graphics/RectF;->top:F

    add-float v14, v14, p2

    iget v15, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    iget v15, v4, Landroid/graphics/RectF;->top:F

    sub-float v7, v14, v15

    .line 211
    :cond_3
    and-int/lit8 v14, v11, 0x4

    if-eqz v14, :cond_4

    .line 212
    iget v14, v4, Landroid/graphics/RectF;->right:F

    add-float v14, v14, p1

    iget v15, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    iget v15, v4, Landroid/graphics/RectF;->right:F

    sub-float v6, v14, v15

    .line 215
    :cond_4
    and-int/lit8 v14, v11, 0x8

    if-eqz v14, :cond_5

    .line 216
    iget v14, v4, Landroid/graphics/RectF;->bottom:F

    add-float v14, v14, p2

    iget v15, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    iget v15, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v14, v15

    .line 220
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mFixAspectRatio:Z

    if-eqz v14, :cond_8

    .line 221
    const/4 v14, 0x2

    new-array v8, v14, [F

    const/4 v14, 0x0

    iget v15, v4, Landroid/graphics/RectF;->left:F

    aput v15, v8, v14

    const/4 v14, 0x1

    iget v15, v4, Landroid/graphics/RectF;->bottom:F

    aput v15, v8, v14

    .line 224
    .local v8, "l1":[F
    const/4 v14, 0x2

    new-array v9, v14, [F

    const/4 v14, 0x0

    iget v15, v4, Landroid/graphics/RectF;->right:F

    aput v15, v9, v14

    const/4 v14, 0x1

    iget v15, v4, Landroid/graphics/RectF;->top:F

    aput v15, v9, v14

    .line 227
    .local v9, "l2":[F
    const/4 v14, 0x3

    if-eq v11, v14, :cond_6

    const/16 v14, 0xc

    if-ne v11, v14, :cond_7

    .line 228
    :cond_6
    const/4 v14, 0x1

    iget v15, v4, Landroid/graphics/RectF;->top:F

    aput v15, v8, v14

    .line 229
    const/4 v14, 0x1

    iget v15, v4, Landroid/graphics/RectF;->bottom:F

    aput v15, v9, v14

    .line 231
    :cond_7
    const/4 v14, 0x2

    new-array v2, v14, [F

    const/4 v14, 0x0

    const/4 v15, 0x0

    aget v15, v8, v15

    const/16 v16, 0x0

    aget v16, v9, v16

    sub-float v15, v15, v16

    aput v15, v2, v14

    const/4 v14, 0x1

    const/4 v15, 0x1

    aget v15, v8, v15

    const/16 v16, 0x1

    aget v16, v9, v16

    sub-float v15, v15, v16

    aput v15, v2, v14

    .line 234
    .local v2, "b":[F
    const/4 v14, 0x2

    new-array v5, v14, [F

    const/4 v14, 0x0

    aput v6, v5, v14

    const/4 v14, 0x1

    aput v7, v5, v14

    .line 237
    .local v5, "disp":[F
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->normalize([F)[F

    move-result-object v3

    .line 238
    .local v3, "bUnit":[F
    invoke-static {v5, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scalarProjection([F[F)F

    move-result v13

    .line 239
    .local v13, "sp":F
    const/4 v14, 0x0

    aget v14, v3, v14

    mul-float v6, v13, v14

    .line 240
    const/4 v14, 0x1

    aget v14, v3, v14

    mul-float v7, v13, v14

    .line 241
    invoke-static {v4, v11, v6, v7}, Lcom/android/gallery3d/filtershow/crop/CropObject;->fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;

    move-result-object v12

    .line 243
    .local v12, "newCrop":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    invoke-virtual {v14, v12}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->fixedAspectResizeInner(Landroid/graphics/RectF;)V

    .line 260
    .end local v2    # "b":[F
    .end local v3    # "bUnit":[F
    .end local v5    # "disp":[F
    .end local v8    # "l1":[F
    .end local v9    # "l2":[F
    .end local v12    # "newCrop":Landroid/graphics/RectF;
    .end local v13    # "sp":F
    :goto_1
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 245
    :cond_8
    and-int/lit8 v14, v11, 0x1

    if-eqz v14, :cond_9

    .line 246
    iget v14, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v6

    iput v14, v4, Landroid/graphics/RectF;->left:F

    .line 248
    :cond_9
    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_a

    .line 249
    iget v14, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v7

    iput v14, v4, Landroid/graphics/RectF;->top:F

    .line 251
    :cond_a
    and-int/lit8 v14, v11, 0x4

    if-eqz v14, :cond_b

    .line 252
    iget v14, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v14, v6

    iput v14, v4, Landroid/graphics/RectF;->right:F

    .line 254
    :cond_b
    and-int/lit8 v14, v11, 0x8

    if-eqz v14, :cond_c

    .line 255
    iget v14, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v7

    iput v14, v4, Landroid/graphics/RectF;->bottom:F

    .line 257
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    invoke-virtual {v14, v4}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->resizeInner(Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method public resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "inner"    # Landroid/graphics/RectF;
    .param p2, "outer"    # Landroid/graphics/RectF;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->resetTo(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 60
    return-void
.end method

.method public selectEdge(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/crop/CropObject;->calculateSelectedEdge(FF)I

    move-result v0

    .line 180
    .local v0, "edgeSelected":I
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mFixAspectRatio:Z

    if-eqz v1, :cond_0

    .line 181
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/crop/CropObject;->fixEdgeToCorner(I)I

    move-result v0

    .line 183
    :cond_0
    if-nez v0, :cond_1

    .line 184
    const/4 v1, 0x0

    .line 186
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/crop/CropObject;->selectEdge(I)Z

    move-result v1

    goto :goto_0
.end method

.method public selectEdge(I)Z
    .locals 2
    .param p1, "edge"    # I

    .prologue
    .line 164
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/crop/CropObject;->checkValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad edge selected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mFixAspectRatio:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/crop/CropObject;->checkCorner(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/crop/CropObject;->checkBlock(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad corner selected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mMovingEdges:I

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public setInnerAspectRatio(FF)Z
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 93
    cmpg-float v2, p1, v3

    if-lez v2, :cond_0

    cmpg-float v2, p2, v3

    if-gtz v2, :cond_1

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Width and Height must be greater than zero"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    .line 97
    .local v0, "inner":Landroid/graphics/RectF;
    invoke-static {v0, p1, p2}, Lcom/android/gallery3d/filtershow/crop/CropMath;->fixAspectRatioContained(Landroid/graphics/RectF;FF)V

    .line 98
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mMinSideSize:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mMinSideSize:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 99
    :cond_2
    const/4 v1, 0x0

    .line 106
    :goto_0
    return v1

    .line 101
    :cond_3
    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mAspectWidth:F

    .line 102
    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mAspectHeight:F

    .line 103
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mFixAspectRatio:Z

    .line 104
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mBoundedRect:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->setInner(Landroid/graphics/RectF;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/CropObject;->clearSelectState()V

    goto :goto_0
.end method

.method public setMinInnerSideSize(F)V
    .locals 2
    .param p1, "minSide"    # F

    .prologue
    .line 117
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Min dide must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mMinSideSize:F

    .line 121
    return-void
.end method

.method public setTouchTolerance(F)V
    .locals 2
    .param p1, "tolerance"    # F

    .prologue
    .line 110
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tolerance must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/CropObject;->mTouchTolerance:F

    .line 114
    return-void
.end method
