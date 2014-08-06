.class public Lcom/android/gallery3d/filtershow/crop/BoundedRect;
.super Ljava/lang/Object;
.source "BoundedRect.java"


# instance fields
.field private inner:Landroid/graphics/RectF;

.field private innerRotated:[F

.field private outer:Landroid/graphics/RectF;

.field private rot:F


# direct methods
.method public constructor <init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "outerRect"    # Landroid/graphics/RectF;
    .param p3, "innerRect"    # Landroid/graphics/RectF;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->rot:F

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->rotateInner()V

    .line 52
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    .line 54
    :cond_0
    return-void
.end method

.method private getInverseRotMatrix()Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 364
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 365
    .local v0, "m":Landroid/graphics/Matrix;
    iget v1, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->rot:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 366
    return-object v0
.end method

.method private getRotMatrix()Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 358
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 359
    .local v0, "m":Landroid/graphics/Matrix;
    iget v1, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->rot:F

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 360
    return-object v0
.end method

.method private isConstrained()Z
    .locals 5

    .prologue
    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 340
    :goto_1
    return v1

    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 340
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private reconstrain()V
    .locals 4

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getEdgePoints(Landroid/graphics/RectF;[F)V

    .line 346
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 347
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 348
    .local v1, "unrotated":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 349
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/crop/CropMath;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 350
    return-void
.end method

.method private rotateInner()V
    .locals 2

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 354
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 355
    return-void
.end method


# virtual methods
.method public fixedAspectResizeInner(Landroid/graphics/RectF;)V
    .locals 29
    .param p1, "newInner"    # Landroid/graphics/RectF;

    .prologue
    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v15

    .line 247
    .local v15, "m":Landroid/graphics/Matrix;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v16

    .line 249
    .local v16, "m0":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 250
    .local v4, "aspectW":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 251
    .local v3, "aspectH":F
    div-float v2, v4, v3

    .line 252
    .local v2, "aspRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v7

    .line 254
    .local v7, "corners":[F
    invoke-virtual {v15, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v21

    .line 256
    .local v21, "oldInnerCorners":[F
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v19

    .line 259
    .local v19, "newInnerCorners":[F
    const/4 v8, -0x1

    .line 260
    .local v8, "fixed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_2

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_1

    .line 262
    const/4 v8, 0x0

    .line 272
    :cond_0
    :goto_0
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_4

    .line 331
    :goto_1
    return-void

    .line 263
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_0

    .line 264
    const/4 v8, 0x2

    goto :goto_0

    .line 265
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_3

    .line 267
    const/4 v8, 0x4

    goto :goto_0

    .line 268
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_0

    .line 269
    const/4 v8, 0x6

    goto :goto_0

    .line 274
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v25

    .line 275
    .local v25, "widthSoFar":F
    const/16 v17, -0x1

    .line 276
    .local v17, "moved":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_8

    .line 277
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v5, v0, [F

    const/16 v26, 0x0

    aget v27, v19, v12

    aput v27, v5, v26

    const/16 v26, 0x1

    add-int/lit8 v27, v12, 0x1

    aget v27, v19, v27

    aput v27, v5, v26

    .line 280
    .local v5, "c":[F
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    .line 281
    .local v6, "c0":[F
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v6, v27

    const/16 v28, 0x1

    aget v28, v6, v28

    invoke-static/range {v26 .. v28}, Lcom/android/gallery3d/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v26

    if-nez v26, :cond_5

    .line 283
    move/from16 v17, v12

    .line 284
    move/from16 v0, v17

    if-ne v0, v8, :cond_6

    .line 276
    :cond_5
    :goto_3
    add-int/lit8 v12, v12, 0x2

    goto :goto_2

    .line 286
    :cond_6
    invoke-static {v5, v7}, Lcom/android/gallery3d/filtershow/crop/CropMath;->closestSide([F[F)[F

    move-result-object v14

    .line 287
    .local v14, "l2":[F
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v13, v0, [F

    const/16 v26, 0x0

    aget v27, v19, v12

    aput v27, v13, v26

    const/16 v26, 0x1

    add-int/lit8 v27, v12, 0x1

    aget v27, v19, v27

    aput v27, v13, v26

    const/16 v26, 0x2

    aget v27, v21, v12

    aput v27, v13, v26

    const/16 v26, 0x3

    add-int/lit8 v27, v12, 0x1

    aget v27, v21, v27

    aput v27, v13, v26

    .line 291
    .local v13, "l1":[F
    invoke-static {v13, v14}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->lineIntersect([F[F)[F

    move-result-object v22

    .line 292
    .local v22, "p":[F
    if-nez v22, :cond_7

    .line 295
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 296
    const/16 v26, 0x0

    aget v27, v21, v12

    aput v27, v22, v26

    .line 297
    const/16 v26, 0x1

    add-int/lit8 v27, v12, 0x1

    aget v27, v21, v27

    aput v27, v22, v26

    .line 301
    :cond_7
    aget v9, v21, v8

    .line 302
    .local v9, "fixed_x":F
    add-int/lit8 v26, v8, 0x1

    aget v10, v21, v26

    .line 303
    .local v10, "fixed_y":F
    const/16 v26, 0x0

    aget v26, v22, v26

    sub-float v26, v9, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 304
    .local v20, "newWidth":F
    const/16 v26, 0x1

    aget v26, v22, v26

    sub-float v26, v10, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 305
    .local v18, "newHeight":F
    mul-float v26, v2, v18

    move/from16 v0, v20

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 306
    cmpg-float v26, v20, v25

    if-gez v26, :cond_5

    .line 307
    move/from16 v25, v20

    goto :goto_3

    .line 311
    .end local v5    # "c":[F
    .end local v6    # "c0":[F
    .end local v9    # "fixed_x":F
    .end local v10    # "fixed_y":F
    .end local v13    # "l1":[F
    .end local v14    # "l2":[F
    .end local v18    # "newHeight":F
    .end local v20    # "newWidth":F
    .end local v22    # "p":[F
    :cond_8
    div-float v11, v25, v2

    .line 312
    .local v11, "heightSoFar":F
    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 313
    .local v23, "ret":Landroid/graphics/RectF;
    if-nez v8, :cond_a

    .line 314
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    add-float v26, v26, v25

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 315
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    add-float v26, v26, v11

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 326
    :cond_9
    :goto_4
    invoke-static/range {v23 .. v23}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v24

    .line 327
    .local v24, "retCorners":[F
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 328
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    goto/16 :goto_1

    .line 316
    .end local v24    # "retCorners":[F
    :cond_a
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v8, v0, :cond_b

    .line 317
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    sub-float v26, v26, v25

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 318
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    add-float v26, v26, v11

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    .line 319
    :cond_b
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v8, v0, :cond_c

    .line 320
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    sub-float v26, v26, v25

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 321
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    sub-float v26, v26, v11

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto :goto_4

    .line 322
    :cond_c
    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v8, v0, :cond_9

    .line 323
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    add-float v26, v26, v25

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 324
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    sub-float v26, v26, v11

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    goto :goto_4
.end method

.method public getInner()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getOuter()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public moveInner(FF)V
    .locals 16
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 116
    .local v8, "m0":Landroid/graphics/Matrix;
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-direct {v11, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 117
    .local v11, "translatedInner":Landroid/graphics/RectF;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 119
    invoke-static {v11}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v12

    .line 120
    .local v12, "translatedInnerCorners":[F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v13}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v10

    .line 122
    .local v10, "outerCorners":[F
    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 123
    const/4 v13, 0x2

    new-array v5, v13, [F

    fill-array-data v5, :array_0

    .line 128
    .local v5, "correction":[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v13, v12

    if-ge v7, v13, :cond_1

    .line 129
    aget v13, v12, v7

    const/4 v14, 0x0

    aget v14, v5, v14

    add-float v3, v13, v14

    .line 130
    .local v3, "correctedInnerX":F
    add-int/lit8 v13, v7, 0x1

    aget v13, v12, v13

    const/4 v14, 0x1

    aget v14, v5, v14

    add-float v4, v13, v14

    .line 131
    .local v4, "correctedInnerY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v13, v3, v4}, Lcom/android/gallery3d/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v13

    if-nez v13, :cond_0

    .line 132
    const/4 v13, 0x2

    new-array v2, v13, [F

    const/4 v13, 0x0

    aput v3, v2, v13

    const/4 v13, 0x1

    aput v4, v2, v13

    .line 135
    .local v2, "badCorner":[F
    invoke-static {v2, v10}, Lcom/android/gallery3d/filtershow/crop/CropMath;->closestSide([F[F)[F

    move-result-object v9

    .line 136
    .local v9, "nearestSide":[F
    invoke-static {v2, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->shortestVectorFromPointToLine([F[F)[F

    move-result-object v6

    .line 138
    .local v6, "correctionVec":[F
    const/4 v13, 0x0

    aget v14, v5, v13

    const/4 v15, 0x0

    aget v15, v6, v15

    add-float/2addr v14, v15

    aput v14, v5, v13

    .line 139
    const/4 v13, 0x1

    aget v14, v5, v13

    const/4 v15, 0x1

    aget v15, v6, v15

    add-float/2addr v14, v15

    aput v14, v5, v13

    .line 128
    .end local v2    # "badCorner":[F
    .end local v6    # "correctionVec":[F
    .end local v9    # "nearestSide":[F
    :cond_0
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 143
    .end local v3    # "correctedInnerX":F
    .end local v4    # "correctedInnerY":F
    :cond_1
    const/4 v7, 0x0

    :goto_1
    array-length v13, v12

    if-ge v7, v13, :cond_3

    .line 144
    aget v13, v12, v7

    const/4 v14, 0x0

    aget v14, v5, v14

    add-float v3, v13, v14

    .line 145
    .restart local v3    # "correctedInnerX":F
    add-int/lit8 v13, v7, 0x1

    aget v13, v12, v13

    const/4 v14, 0x1

    aget v14, v5, v14

    add-float v4, v13, v14

    .line 146
    .restart local v4    # "correctedInnerY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v13, v3, v4}, Lcom/android/gallery3d/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v13

    if-nez v13, :cond_2

    .line 147
    const/4 v13, 0x2

    new-array v6, v13, [F

    const/4 v13, 0x0

    aput v3, v6, v13

    const/4 v13, 0x1

    aput v4, v6, v13

    .line 150
    .restart local v6    # "correctionVec":[F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v13, v6}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getEdgePoints(Landroid/graphics/RectF;[F)V

    .line 151
    const/4 v13, 0x0

    aget v14, v6, v13

    sub-float/2addr v14, v3

    aput v14, v6, v13

    .line 152
    const/4 v13, 0x1

    aget v14, v6, v13

    sub-float/2addr v14, v4

    aput v14, v6, v13

    .line 153
    const/4 v13, 0x0

    aget v14, v5, v13

    const/4 v15, 0x0

    aget v15, v6, v15

    add-float/2addr v14, v15

    aput v14, v5, v13

    .line 154
    const/4 v13, 0x1

    aget v14, v5, v13

    const/4 v15, 0x1

    aget v15, v6, v15

    add-float/2addr v14, v15

    aput v14, v5, v13

    .line 143
    .end local v6    # "correctionVec":[F
    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 159
    .end local v3    # "correctedInnerX":F
    .end local v4    # "correctedInnerY":F
    :cond_3
    const/4 v7, 0x0

    :goto_2
    array-length v13, v12

    if-ge v7, v13, :cond_4

    .line 160
    aget v13, v12, v7

    const/4 v14, 0x0

    aget v14, v5, v14

    add-float v3, v13, v14

    .line 161
    .restart local v3    # "correctedInnerX":F
    add-int/lit8 v13, v7, 0x1

    aget v13, v12, v13

    const/4 v14, 0x1

    aget v14, v5, v14

    add-float v4, v13, v14

    .line 163
    .restart local v4    # "correctedInnerY":F
    aput v3, v12, v7

    .line 164
    add-int/lit8 v13, v7, 0x1

    aput v4, v12, v13

    .line 159
    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    .line 167
    .end local v3    # "correctedInnerX":F
    .end local v4    # "correctedInnerY":F
    :cond_4
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    .line 170
    return-void

    .line 123
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public resetTo(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "outerRect"    # Landroid/graphics/RectF;
    .param p3, "innerRect"    # Landroid/graphics/RectF;

    .prologue
    .line 57
    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->rot:F

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 61
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->rotateInner()V

    .line 62
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    .line 64
    :cond_0
    return-void
.end method

.method public resizeInner(Landroid/graphics/RectF;)V
    .locals 17
    .param p1, "newInner"    # Landroid/graphics/RectF;

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getRotMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 178
    .local v4, "m":Landroid/graphics/Matrix;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInverseRotMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 180
    .local v5, "m0":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    invoke-static {v14}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v8

    .line 181
    .local v8, "outerCorners":[F
    invoke-virtual {v4, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v14}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v7

    .line 183
    .local v7, "oldInnerCorners":[F
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v6

    .line 184
    .local v6, "newInnerCorners":[F
    new-instance v12, Landroid/graphics/RectF;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 186
    .local v12, "ret":Landroid/graphics/RectF;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v14, v6

    if-ge v3, v14, :cond_a

    .line 187
    const/4 v14, 0x2

    new-array v1, v14, [F

    const/4 v14, 0x0

    aget v15, v6, v3

    aput v15, v1, v14

    const/4 v14, 0x1

    add-int/lit8 v15, v3, 0x1

    aget v15, v6, v15

    aput v15, v1, v14

    .line 190
    .local v1, "c":[F
    const/4 v14, 0x2

    invoke-static {v1, v14}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 191
    .local v2, "c0":[F
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->outer:Landroid/graphics/RectF;

    const/4 v15, 0x0

    aget v15, v2, v15

    const/16 v16, 0x1

    aget v16, v2, v16

    invoke-static/range {v14 .. v16}, Lcom/android/gallery3d/filtershow/crop/CropMath;->inclusiveContains(Landroid/graphics/RectF;FF)Z

    move-result v14

    if-nez v14, :cond_1

    .line 193
    invoke-static {v1, v8}, Lcom/android/gallery3d/filtershow/crop/CropMath;->closestSide([F[F)[F

    move-result-object v9

    .line 194
    .local v9, "outerSide":[F
    const/4 v14, 0x4

    new-array v11, v14, [F

    const/4 v14, 0x0

    aget v15, v6, v3

    aput v15, v11, v14

    const/4 v14, 0x1

    add-int/lit8 v15, v3, 0x1

    aget v15, v6, v15

    aput v15, v11, v14

    const/4 v14, 0x2

    aget v15, v7, v3

    aput v15, v11, v14

    const/4 v14, 0x3

    add-int/lit8 v15, v3, 0x1

    aget v15, v7, v15

    aput v15, v11, v14

    .line 198
    .local v11, "pathOfCorner":[F
    invoke-static {v11, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->lineIntersect([F[F)[F

    move-result-object v10

    .line 199
    .local v10, "p":[F
    if-nez v10, :cond_0

    .line 201
    const/4 v14, 0x2

    new-array v10, v14, [F

    .line 202
    const/4 v14, 0x0

    aget v15, v7, v3

    aput v15, v10, v14

    .line 203
    const/4 v14, 0x1

    add-int/lit8 v15, v3, 0x1

    aget v15, v7, v15

    aput v15, v10, v14

    .line 207
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 186
    .end local v9    # "outerSide":[F
    .end local v10    # "p":[F
    .end local v11    # "pathOfCorner":[F
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 210
    .restart local v9    # "outerSide":[F
    .restart local v10    # "p":[F
    .restart local v11    # "pathOfCorner":[F
    :pswitch_0
    const/4 v14, 0x0

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->left:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    const/4 v14, 0x0

    aget v14, v10, v14

    :goto_2
    iput v14, v12, Landroid/graphics/RectF;->left:F

    .line 211
    const/4 v14, 0x1

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->top:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    const/4 v14, 0x1

    aget v14, v10, v14

    :goto_3
    iput v14, v12, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 210
    :cond_2
    iget v14, v12, Landroid/graphics/RectF;->left:F

    goto :goto_2

    .line 211
    :cond_3
    iget v14, v12, Landroid/graphics/RectF;->top:F

    goto :goto_3

    .line 215
    :pswitch_1
    const/4 v14, 0x0

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->right:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_4

    const/4 v14, 0x0

    aget v14, v10, v14

    :goto_4
    iput v14, v12, Landroid/graphics/RectF;->right:F

    .line 216
    const/4 v14, 0x1

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->top:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_5

    const/4 v14, 0x1

    aget v14, v10, v14

    :goto_5
    iput v14, v12, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 215
    :cond_4
    iget v14, v12, Landroid/graphics/RectF;->right:F

    goto :goto_4

    .line 216
    :cond_5
    iget v14, v12, Landroid/graphics/RectF;->top:F

    goto :goto_5

    .line 220
    :pswitch_2
    const/4 v14, 0x0

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->right:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_6

    const/4 v14, 0x0

    aget v14, v10, v14

    :goto_6
    iput v14, v12, Landroid/graphics/RectF;->right:F

    .line 221
    const/4 v14, 0x1

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->bottom:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_7

    const/4 v14, 0x1

    aget v14, v10, v14

    :goto_7
    iput v14, v12, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 220
    :cond_6
    iget v14, v12, Landroid/graphics/RectF;->right:F

    goto :goto_6

    .line 221
    :cond_7
    iget v14, v12, Landroid/graphics/RectF;->bottom:F

    goto :goto_7

    .line 225
    :pswitch_3
    const/4 v14, 0x0

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->left:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_8

    const/4 v14, 0x0

    aget v14, v10, v14

    :goto_8
    iput v14, v12, Landroid/graphics/RectF;->left:F

    .line 226
    const/4 v14, 0x1

    aget v14, v10, v14

    iget v15, v12, Landroid/graphics/RectF;->bottom:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_9

    const/4 v14, 0x1

    aget v14, v10, v14

    :goto_9
    iput v14, v12, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 225
    :cond_8
    iget v14, v12, Landroid/graphics/RectF;->left:F

    goto :goto_8

    .line 226
    :cond_9
    iget v14, v12, Landroid/graphics/RectF;->bottom:F

    goto :goto_9

    .line 233
    .end local v1    # "c":[F
    .end local v2    # "c0":[F
    .end local v9    # "outerSide":[F
    .end local v10    # "p":[F
    .end local v11    # "pathOfCorner":[F
    :cond_a
    invoke-static {v12}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v13

    .line 234
    .local v13, "retCorners":[F
    invoke-virtual {v5, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 235
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    .line 238
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setInner(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "newInner"    # Landroid/graphics/RectF;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->innerRotated:[F

    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->rotateInner()V

    .line 75
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->isConstrained()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->reconstrain()V

    goto :goto_0
.end method

.method public setToInner(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->inner:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 94
    return-void
.end method
