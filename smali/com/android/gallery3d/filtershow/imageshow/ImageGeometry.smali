.class public abstract Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImageGeometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;
    }
.end annotation


# instance fields
.field protected mCenterX:F

.field protected mCenterY:F

.field protected mCurrentX:F

.field protected mCurrentY:F

.field private mHasDrawn:Z

.field private mLocalDisplayBounds:Landroid/graphics/RectF;

.field private mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

.field protected mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

.field protected mTouchCenterX:F

.field protected mTouchCenterY:F

.field protected mVisibilityGained:Z

.field protected mXOffset:F

.field protected mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 51
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 52
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 53
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 54
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 60
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 51
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 52
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 53
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 54
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 60
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 66
    return-void
.end method

.method protected static angleFor(FF)F
    .locals 4
    .param p0, "dx"    # F
    .param p1, "dy"    # F

    .prologue
    .line 78
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private calculateLocalScalingFactorAndOffset()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000

    .line 113
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    if-nez v5, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 116
    .local v2, "imageBounds":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 117
    .local v4, "imageWidth":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 118
    .local v3, "imageHeight":F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 119
    .local v1, "displayWidth":F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 121
    .local v0, "displayHeight":F
    div-float v5, v1, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    .line 122
    div-float v5, v0, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    .line 123
    sub-float v5, v0, v3

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mYOffset:F

    .line 124
    sub-float v5, v1, v4

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mXOffset:F

    .line 125
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    goto :goto_0
.end method

.method protected static drawRotatedShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 21
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "innerBounds"    # Landroid/graphics/RectF;
    .param p3, "outerBounds"    # Landroid/graphics/RectF;
    .param p4, "rotation"    # F
    .param p5, "centerX"    # F
    .param p6, "centerY"    # F

    .prologue
    .line 381
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    .line 382
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 384
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->right:F

    sub-float v19, v4, v7

    .line 385
    .local v19, "x":F
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v20, v4, v7

    .line 386
    .local v20, "y":F
    mul-float v4, v19, v19

    mul-float v7, v20, v20

    add-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v4, v7

    const/high16 v7, 0x40000000

    div-float v18, v4, v7

    .line 387
    .local v18, "longest":F
    sub-float v5, p5, v18

    .line 388
    .local v5, "minX":F
    add-float v15, p5, v18

    .line 389
    .local v15, "maxX":F
    sub-float v6, p6, v18

    .line 390
    .local v6, "minY":F
    add-float v11, p6, v18

    .line 391
    .local v11, "maxY":F
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 392
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v7, p0

    move v8, v5

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 393
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v7, p0

    move v10, v15

    move-object/from16 v12, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 395
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move-object/from16 v12, p0

    move v14, v6

    move-object/from16 v17, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 397
    move/from16 v0, p4

    neg-float v4, v0

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->restore()V

    .line 399
    return-void
.end method

.method public static getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 32
    .param p0, "imageRect"    # Landroid/graphics/RectF;
    .param p1, "straightenAngle"    # F

    .prologue
    .line 344
    move/from16 v8, p1

    .line 345
    .local v8, "deg":F
    const/16 v26, 0x0

    cmpg-float v26, v8, v26

    if-gez v26, :cond_0

    .line 346
    neg-float v8, v8

    .line 348
    :cond_0
    float-to-double v0, v8

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 349
    .local v3, "a":D
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    .line 350
    .local v21, "sina":D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 352
    .local v6, "cosa":D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->width()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 353
    .local v19, "rw":D
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 354
    .local v16, "rh":D
    mul-double v26, v16, v16

    mul-double v28, v19, v21

    mul-double v30, v16, v6

    add-double v28, v28, v30

    div-double v9, v26, v28

    .line 355
    .local v9, "h1":D
    mul-double v26, v16, v19

    mul-double v28, v19, v6

    mul-double v30, v16, v21

    add-double v28, v28, v30

    div-double v11, v26, v28

    .line 356
    .local v11, "h2":D
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    .line 357
    .local v13, "hh":D
    mul-double v26, v13, v19

    div-double v24, v26, v16

    .line 359
    .local v24, "ww":D
    sub-double v26, v19, v24

    const-wide/high16 v28, 0x3fe0000000000000L

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v15, v0

    .line 360
    .local v15, "left":F
    sub-double v26, v16, v13

    const-wide/high16 v28, 0x3fe0000000000000L

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v23, v0

    .line 361
    .local v23, "top":F
    float-to-double v0, v15

    move-wide/from16 v26, v0

    add-double v26, v26, v24

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v18, v0

    .line 362
    .local v18, "right":F
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v26, v26, v13

    move-wide/from16 v0, v26

    double-to-float v5, v0

    .line 364
    .local v5, "bottom":F
    new-instance v26, Landroid/graphics/RectF;

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v26
.end method

.method private setupLocalDisplayBounds(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/RectF;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->calculateLocalScalingFactorAndOffset()V

    .line 75
    return-void
.end method

.method protected static snappedAngle(F)I
    .locals 3
    .param p0, "angle"    # F

    .prologue
    const/high16 v2, 0x42b40000

    .line 82
    rem-float v1, p0, v2

    .line 83
    .local v1, "remainder":F
    div-float v2, p0, v2

    float-to-int v0, v2

    .line 84
    .local v0, "current":I
    const/high16 v2, -0x3dcc0000

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 85
    add-int/lit8 v0, v0, -0x1

    .line 89
    :cond_0
    :goto_0
    mul-int/lit8 v2, v0, 0x5a

    return v2

    .line 86
    :cond_1
    const/high16 v2, 0x42340000

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected computeScale(FF)F
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 107
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 108
    .local v1, "imageWidth":F
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 109
    .local v0, "imageHeight":F
    invoke-static {v1, v0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v2

    return v2
.end method

.method protected constrainedRotation(F)I
    .locals 3
    .param p1, "rotation"    # F

    .prologue
    .line 189
    const/high16 v1, 0x43b40000

    rem-float v1, p1, v1

    const/high16 v2, 0x42b40000

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 190
    .local v0, "r":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 191
    :cond_0
    mul-int/lit8 v1, v0, 0x5a

    return v1
.end method

.method protected drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "innerBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 403
    .local v3, "w":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v0

    int-to-float v10, v0

    .line 404
    .local v10, "h":F
    iget v4, p3, Landroid/graphics/RectF;->top:F

    move-object v0, p1

    move v2, v1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 405
    iget v6, p3, Landroid/graphics/RectF;->top:F

    iget v7, p3, Landroid/graphics/RectF;->left:F

    iget v8, p3, Landroid/graphics/RectF;->bottom:F

    move-object v4, p1

    move v5, v1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 406
    iget v5, p3, Landroid/graphics/RectF;->right:F

    iget v6, p3, Landroid/graphics/RectF;->top:F

    iget v8, p3, Landroid/graphics/RectF;->bottom:F

    move-object v4, p1

    move v7, v3

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 407
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move v4, v10

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 408
    return-void
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 428
    return-void
.end method

.method protected drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;[F)Landroid/graphics/RectF;
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "photo"    # Landroid/graphics/Bitmap;
    .param p3, "p"    # Landroid/graphics/Paint;
    .param p4, "offset"    # [F

    .prologue
    .line 457
    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual {p3, v2, v3, v4, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 458
    const/4 v2, 0x2

    new-array v5, v2, [F

    .line 459
    .local v5, "displayCenter":[F
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 460
    .local v1, "scaledCrop":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 461
    .local v0, "scaledPhoto":Landroid/graphics/RectF;
    invoke-virtual {p0, v0, v1, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getTransformState(Landroid/graphics/RectF;Landroid/graphics/RectF;[F)F

    move-result v9

    .line 462
    .local v9, "scale":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v6

    .line 465
    .local v6, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v7

    .line 467
    .local v7, "m1":Landroid/graphics/Matrix;
    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 468
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 469
    .local v8, "path":Landroid/graphics/Path;
    const/4 v2, 0x0

    aget v2, p4, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, p4, v3

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 470
    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 472
    invoke-virtual {v6, v9, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 473
    const/4 v2, 0x0

    aget v2, p4, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aget v3, p4, v3

    neg-float v3, v3

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 475
    invoke-virtual {p1, p2, v6, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 476
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 478
    const/4 v2, -0x1

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 480
    const/high16 v2, 0x40000000

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 481
    invoke-virtual {p1, v8, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getDefaultBackgroundColor()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    const/16 v2, 0x80

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 485
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 486
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    .line 487
    return-object v1
.end method

.method protected drawTransformedCropped(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "photo"    # Landroid/graphics/Bitmap;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v22

    .line 492
    .local v22, "photoBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v17

    .line 493
    .local v17, "cropBounds":Landroid/graphics/RectF;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v20

    .line 494
    .local v20, "imageWidth":F
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->height()F

    move-result v19

    .line 495
    .local v19, "imageHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v6, v7}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v23

    .line 497
    .local v23, "scale":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->isHeightWidthSwapped()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v7

    int-to-float v7, v7

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v6, v7}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v23

    .line 501
    :cond_0
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v5

    .line 502
    .local v5, "scaledCrop":Landroid/graphics/RectF;
    invoke-static/range {v22 .. v23}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 503
    .local v4, "scaledPhoto":Landroid/graphics/RectF;
    const/4 v6, 0x2

    new-array v9, v6, [F

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    aput v7, v9, v6

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    aput v7, v9, v6

    .line 506
    .local v9, "displayCenter":[F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v8

    invoke-static/range {v4 .. v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v21

    .line 508
    .local v21, "m1":Landroid/graphics/Matrix;
    const/4 v6, 0x2

    new-array v0, v6, [F

    move-object/from16 v18, v0

    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    aput v7, v18, v6

    const/4 v6, 0x1

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    aput v7, v18, v6

    .line 511
    .local v18, "cropCenter":[F
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 512
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 514
    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 516
    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 518
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getDefaultBackgroundColor()I

    move-result v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 522
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 523
    const/4 v6, 0x0

    aget v6, v9, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v9, v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 525
    new-instance v13, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v13, v6, v7, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 526
    .local v13, "display":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v15, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    move/from16 v16, v0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object v12, v5

    invoke-static/range {v10 .. v16}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawRotatedShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    .line 528
    return-void
.end method

.method protected gainedVisibility()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method protected getCurrentTouchAngle()F
    .locals 8

    .prologue
    .line 93
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 94
    const/4 v6, 0x0

    .line 103
    :goto_0
    return v6

    .line 96
    :cond_0
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    sub-float v2, v6, v7

    .line 97
    .local v2, "dX1":F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    sub-float v4, v6, v7

    .line 98
    .local v4, "dY1":F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterX:F

    sub-float v3, v6, v7

    .line 99
    .local v3, "dX2":F
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCenterY:F

    sub-float v5, v6, v7

    .line 101
    .local v5, "dY2":F
    invoke-static {v2, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->angleFor(FF)F

    move-result v0

    .line 102
    .local v0, "angleA":F
    invoke-static {v3, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->angleFor(FF)F

    move-result v1

    .line 103
    .local v1, "angleB":F
    sub-float v6, v1, v0

    const/high16 v7, 0x43b40000

    rem-float/2addr v6, v7

    goto :goto_0
.end method

.method protected getLocalCropBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalDisplayBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalDisplayBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method protected getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalPhotoBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalRotation()F
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v0

    return v0
.end method

.method protected getLocalScale()F
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method protected getLocalStraighten()F
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v0

    return v0
.end method

.method protected getLocalValue()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-string v0, "Geometry"

    return-object v0
.end method

.method protected getTransformState(Landroid/graphics/RectF;Landroid/graphics/RectF;[F)F
    .locals 6
    .param p1, "photo"    # Landroid/graphics/RectF;
    .param p2, "crop"    # Landroid/graphics/RectF;
    .param p3, "displayCenter"    # [F

    .prologue
    const/high16 v5, 0x40000000

    .line 435
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 436
    .local v1, "photoBounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 437
    .local v0, "cropBounds":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v2

    .line 439
    .local v2, "scale":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->isHeightWidthSwapped()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v2

    .line 443
    :cond_0
    if-eqz p2, :cond_1

    .line 444
    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 446
    :cond_1
    if-eqz p1, :cond_2

    .line 447
    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 449
    :cond_2
    if-eqz p3, :cond_3

    array-length v3, p3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 450
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, p3, v3

    .line 451
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, p3, v3

    .line 453
    :cond_3
    return v2
.end method

.method protected isHeightWidthSwapped()Z
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalRotation()F

    move-result v0

    const/high16 v1, 0x42b40000

    div-float/2addr v0, v1

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected lostVisibility()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getDirtyGeometryFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->syncLocalToMasterGeometry()V

    .line 414
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->clearDirtyGeometryFlag()V

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getFiltersOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    .local v0, "image":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 424
    :goto_0
    return-void

    .line 421
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    .line 423
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onSizeChanged(IIII)V

    .line 268
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setupLocalDisplayBounds(Landroid/graphics/RectF;)V

    .line 269
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 285
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setNoAction()V

    .line 287
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 288
    const/4 v0, 0x1

    return v0

    .line 275
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    goto :goto_0

    .line 278
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 279
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    goto :goto_0

    .line 282
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 241
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onVisibilityChanged(Landroid/view/View;I)V

    .line 242
    if-nez p2, :cond_0

    .line 243
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 244
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->invalidateFiltersOnly()V

    .line 245
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->syncLocalToMasterGeometry()V

    .line 246
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 247
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->gainedVisibility()V

    .line 255
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    if-ne v0, v1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->lostVisibility()V

    .line 252
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mVisibilityGained:Z

    .line 253
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mHasDrawn:Z

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->resetParameter()V

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalRotation(F)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalStraighten(F)V

    .line 133
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 134
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalFlip(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->saveAndSetPreset()V

    .line 136
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 137
    return-void
.end method

.method public saveAndSetPreset()V
    .locals 4

    .prologue
    .line 327
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 328
    .local v1, "lastHistoryItem":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 330
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 340
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->invalidate()V

    .line 341
    return-void

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 334
    .local v0, "copy":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 336
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setIsFx(Z)V

    .line 337
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    goto :goto_0
.end method

.method protected setActionDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 296
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterX:F

    .line 297
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mTouchCenterY:F

    .line 298
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    .line 299
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    .line 300
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->DOWN:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 301
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 304
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    .line 305
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    .line 306
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->MOVE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 307
    return-void
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->UP:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 311
    return-void
.end method

.method protected setLocalCropBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/RectF;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 206
    return-void
.end method

.method protected setLocalFlip(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V
    .locals 1
    .param p1, "flip"    # Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setFlipType(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 214
    return-void
.end method

.method protected setLocalRotation(F)V
    .locals 1
    .param p1, "r"    # F

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setRotation(F)V

    .line 182
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 183
    return-void
.end method

.method protected setLocalScale(F)V
    .locals 1
    .param p1, "s"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setScaleFactor(F)V

    .line 171
    return-void
.end method

.method protected setLocalStraighten(F)V
    .locals 1
    .param p1, "r"    # F

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setStraightenRotation(F)V

    .line 200
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->updateScale()V

    .line 201
    return-void
.end method

.method protected setNoAction()V
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->NONE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    .line 315
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public syncLocalToMasterGeometry()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getGeometry()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 142
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->calculateLocalScalingFactorAndOffset()V

    .line 143
    return-void
.end method

.method protected updateScale()V
    .locals 4

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mLocalGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getLocalStraighten()F

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 176
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->computeScale(FF)F

    move-result v1

    .line 177
    .local v1, "zoom":F
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setLocalScale(F)V

    .line 178
    return-void
.end method
