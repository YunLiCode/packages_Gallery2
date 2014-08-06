.class public Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "GeometryMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    }
.end annotation


# instance fields
.field private final mCropBounds:Landroid/graphics/RectF;

.field private mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

.field private mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

.field private final mPhotoBounds:Landroid/graphics/RectF;

.field private mRotation:F

.field private mScaleFactor:F

.field private mStraightenRotation:F

.field private mUseCropExtras:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    const-string v0, "GeometryMetadata"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 35
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 36
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 37
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    .line 40
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 47
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mUseCropExtras:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    .line 67
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setFilterClass(Ljava/lang/Class;)V

    .line 68
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setEditorId(I)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setTextId(I)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setShowParameterValue(Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V
    .locals 2
    .param p1, "g"    # Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .prologue
    const/4 v1, 0x0

    .line 84
    const-string v0, "GeometryMetadata"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 35
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 36
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 37
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    .line 40
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mUseCropExtras:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 86
    return-void
.end method

.method public static buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;
    .locals 4
    .param p0, "photo"    # Landroid/graphics/RectF;
    .param p1, "crop"    # Landroid/graphics/RectF;
    .param p2, "rotation"    # F
    .param p3, "straighten"    # F
    .param p4, "type"    # Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    .param p5, "newCenter"    # [F

    .prologue
    .line 436
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 437
    .local v1, "m":Landroid/graphics/Matrix;
    const/4 v2, 0x2

    new-array v0, v2, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    aput v3, v0, v2

    .line 440
    .local v0, "center":[F
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 441
    invoke-static {v1, v0, p5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 442
    return-object v1
.end method

.method public static buildPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)Landroid/graphics/Matrix;
    .locals 3
    .param p0, "photo"    # Landroid/graphics/RectF;
    .param p1, "crop"    # Landroid/graphics/RectF;
    .param p2, "rotation"    # F
    .param p3, "straighten"    # F
    .param p4, "type"    # Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .prologue
    .line 360
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 361
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 362
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v2, p4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatMirrorMatrix(Landroid/graphics/Matrix;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V

    .line 363
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 365
    return-object v0
.end method

.method public static buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;
    .locals 4
    .param p0, "photo"    # Landroid/graphics/RectF;
    .param p1, "crop"    # Landroid/graphics/RectF;
    .param p2, "rotation"    # F
    .param p3, "straighten"    # F
    .param p4, "type"    # Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    .param p5, "newCenter"    # [F

    .prologue
    .line 478
    invoke-static/range {p0 .. p5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v0

    .line 479
    .local v0, "m":Landroid/graphics/Matrix;
    neg-float v1, p3

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 480
    return-object v0
.end method

.method private compareRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "a"    # Landroid/graphics/RectF;
    .param p2, "b"    # Landroid/graphics/RectF;

    .prologue
    .line 197
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static concatHorizontalMatrix(Landroid/graphics/Matrix;F)V
    .locals 2
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "width"    # F

    .prologue
    .line 240
    const/high16 v0, -0x40800000

    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 242
    return-void
.end method

.method public static concatMirrorMatrix(Landroid/graphics/Matrix;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V
    .locals 1
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "type"    # Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .prologue
    .line 251
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->HORIZONTAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p3, v0, :cond_1

    .line 252
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatHorizontalMatrix(Landroid/graphics/Matrix;F)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->VERTICAL:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p3, v0, :cond_2

    .line 254
    invoke-static {p0, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatVerticalMatrix(Landroid/graphics/Matrix;F)V

    goto :goto_0

    .line 255
    :cond_2
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->BOTH:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne p3, v0, :cond_0

    .line 256
    invoke-static {p0, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatVerticalMatrix(Landroid/graphics/Matrix;F)V

    .line 257
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatHorizontalMatrix(Landroid/graphics/Matrix;F)V

    goto :goto_0
.end method

.method public static concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V
    .locals 3
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "currentCenter"    # [F
    .param p2, "newCenter"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 375
    aget v0, p2, v1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    aget v1, p2, v2

    aget v2, p1, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 376
    return-void
.end method

.method protected static concatVerticalMatrix(Landroid/graphics/Matrix;F)V
    .locals 2
    .param p0, "m"    # Landroid/graphics/Matrix;
    .param p1, "height"    # F

    .prologue
    .line 245
    const/high16 v0, 0x3f800000

    const/high16 v1, -0x40800000

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 247
    return-void
.end method


# virtual methods
.method public buildTotalXform(FF[F)Landroid/graphics/Matrix;
    .locals 11
    .param p1, "bmWidth"    # F
    .param p2, "bmHeight"    # F
    .param p3, "displayCenter"    # [F

    .prologue
    const/4 v4, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 390
    .local v9, "rp":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v8

    .line 391
    .local v8, "rc":Landroid/graphics/RectF;
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v10

    .line 392
    .local v10, "scale":F
    invoke-static {v8, v10}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    .line 393
    .local v1, "scaledCrop":Landroid/graphics/RectF;
    invoke-static {v9, v10}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 398
    .local v0, "scaledPhoto":Landroid/graphics/RectF;
    iget v2, v8, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, v8, Landroid/graphics/RectF;->right:F

    iget v3, v9, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 399
    iput v4, v0, Landroid/graphics/RectF;->left:F

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 400
    iput p1, v0, Landroid/graphics/RectF;->right:F

    iput p1, v1, Landroid/graphics/RectF;->right:F

    .line 402
    :cond_0
    iget v2, v8, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    iget v2, v8, Landroid/graphics/RectF;->bottom:F

    iget v3, v9, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 403
    iput v4, v0, Landroid/graphics/RectF;->top:F

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 404
    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    iput p2, v1, Landroid/graphics/RectF;->bottom:F

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v7

    .line 410
    .local v7, "m1":Landroid/graphics/Matrix;
    const/4 v2, 0x2

    new-array v6, v2, [F

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    aput v3, v6, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    aput v3, v6, v2

    .line 413
    .local v6, "cropCenter":[F
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 415
    invoke-static {v7, v6, p3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 416
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v7, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 418
    return-object v7
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 492
    .local v0, "representation":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 493
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
    .line 33
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 5
    .param p1, "o"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    if-ne p0, p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 208
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 210
    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 211
    .local v0, "d":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->compareRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->compareRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCropBounds(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 140
    const/high16 v1, 0x3f800000

    .line 141
    .local v1, "scale":F
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v1

    .line 143
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 149
    .local v0, "croppedRegion":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 150
    iput v6, v0, Landroid/graphics/RectF;->left:F

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 154
    iput v6, v0, Landroid/graphics/RectF;->top:F

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 157
    :cond_1
    return-object v0
.end method

.method public getCropExtras()Lcom/android/gallery3d/filtershow/crop/CropExtras;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    return-object v0
.end method

.method public getEditorIds()[I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0a0056
        0x7f0a0059
        0x7f0a0058
        0x7f0a0057
    .end array-data
.end method

.method public getFlipType()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    return-object v0
.end method

.method public getMatrixOriginalOrientation(IFF)Landroid/graphics/Matrix;
    .locals 8
    .param p1, "orientation"    # I
    .param p2, "originalWidth"    # F
    .param p3, "originalHeight"    # F

    .prologue
    const/high16 v7, 0x43870000

    const/high16 v6, 0x42b40000

    const/high16 v5, 0x3f800000

    const/high16 v4, -0x40800000

    const/high16 v3, 0x40000000

    .line 263
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 264
    .local v0, "imageRotation":Landroid/graphics/Matrix;
    packed-switch p1, :pswitch_data_0

    .line 304
    :goto_0
    return-object v0

    .line 266
    :pswitch_0
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v6, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 267
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 272
    :pswitch_1
    const/high16 v1, 0x43340000

    div-float v2, p2, v3

    div-float v3, p3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    .line 276
    :pswitch_2
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v7, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 277
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 282
    :pswitch_3
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 286
    :pswitch_4
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 290
    :pswitch_5
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v6, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 291
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 293
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 297
    :pswitch_6
    div-float v1, p2, v3

    div-float v2, p3, v3

    invoke-virtual {v0, v7, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 298
    sub-float v1, p2, p3

    neg-float v1, v1

    div-float/2addr v1, v3

    sub-float v2, p3, p2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 300
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public getOriginalToScreen(ZFFFF)Landroid/graphics/Matrix;
    .locals 20
    .param p1, "rotate"    # Z
    .param p2, "originalWidth"    # F
    .param p3, "originalHeight"    # F
    .param p4, "viewWidth"    # F
    .param p5, "viewHeight"    # F

    .prologue
    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v16

    .line 310
    .local v16, "photoBounds":Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPreviewCropBounds()Landroid/graphics/RectF;

    move-result-object v9

    .line 311
    .local v9, "cropBounds":Landroid/graphics/RectF;
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v13

    .line 312
    .local v13, "imageWidth":F
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v11

    .line 314
    .local v11, "imageHeight":F
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getZoomOrientation()I

    move-result v15

    .line 315
    .local v15, "orientation":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getMatrixOriginalOrientation(IFF)Landroid/graphics/Matrix;

    move-result-object v12

    .line 317
    .local v12, "imageRotation":Landroid/graphics/Matrix;
    const/4 v5, 0x6

    if-eq v15, v5, :cond_0

    const/16 v5, 0x8

    if-eq v15, v5, :cond_0

    const/4 v5, 0x5

    if-eq v15, v5, :cond_0

    const/4 v5, 0x7

    if-ne v15, v5, :cond_1

    .line 321
    :cond_0
    move/from16 v19, p2

    .line 322
    .local v19, "tmp":F
    move/from16 p2, p3

    .line 323
    move/from16 p3, v19

    .line 326
    .end local v19    # "tmp":F
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v6

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v17

    .line 328
    .local v17, "preScale":F
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v13, v11, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v18

    .line 330
    .local v18, "scale":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v5

    const/high16 v6, 0x42b40000

    div-float/2addr v5, v6

    float-to-int v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 331
    move/from16 v0, p5

    move/from16 v1, p4

    invoke-static {v13, v11, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v18

    .line 334
    :cond_2
    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    .line 335
    .local v4, "scaledCrop":Landroid/graphics/RectF;
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v3

    .line 336
    .local v3, "scaledPhoto":Landroid/graphics/RectF;
    const/4 v5, 0x2

    new-array v8, v5, [F

    const/4 v5, 0x0

    const/high16 v6, 0x40000000

    div-float v6, p4, v6

    aput v6, v8, v5

    const/4 v5, 0x1

    const/high16 v6, 0x40000000

    div-float v6, p5, v6

    aput v6, v8, v5

    .line 339
    .local v8, "displayCenter":[F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getFlipType()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v7

    invoke-static/range {v3 .. v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v14

    .line 341
    .local v14, "m1":Landroid/graphics/Matrix;
    const/4 v5, 0x2

    new-array v10, v5, [F

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v10, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v10, v5

    .line 344
    .local v10, "cropCenter":[F
    invoke-virtual {v14, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 345
    invoke-static {v14, v10, v8}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->concatRecenterMatrix(Landroid/graphics/Matrix;[F[F)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getStraightenRotation()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {v14, v5, v6, v7}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 347
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 348
    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 349
    invoke-virtual {v14, v12}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 351
    return-object v14
.end method

.method public getPhotoBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getPreviewCropBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    return v0
.end method

.method public getStraightenRotation()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    return v0
.end method

.method public getUseCropExtrasFlag()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mUseCropExtras:Z

    return v0
.end method

.method public hasModifications()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 89
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    const/high16 v4, 0x3f800000

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v2

    .line 92
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    .line 95
    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 99
    .local v0, "cropBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    .line 100
    .local v1, "photoBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    sget-object v4, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->NONE:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasSwitchedWidthHeight()Z
    .locals 2

    .prologue
    .line 355
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

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

.method public hashCode()I
    .locals 3

    .prologue
    .line 221
    const/16 v0, 0x17

    .line 222
    .local v0, "result":I
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x2c9

    .line 223
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 224
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 225
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 226
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 227
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 228
    return v0
.end method

.method public set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V
    .locals 2
    .param p1, "g"    # Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .prologue
    .line 110
    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 111
    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 112
    iget v0, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 115
    iget-object v0, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 117
    iget-boolean v0, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mUseCropExtras:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mUseCropExtras:Z

    .line 118
    iget-object v0, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lcom/android/gallery3d/filtershow/crop/CropExtras;

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/crop/CropExtras;-><init>(Lcom/android/gallery3d/filtershow/crop/CropExtras;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    .line 121
    :cond_0
    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "newCropBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 186
    return-void
.end method

.method public setFlipType(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;)V
    .locals 0
    .param p1, "flip"    # Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    .line 174
    return-void
.end method

.method public setPhotoBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "newPhotoBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 190
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 177
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    .line 178
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 169
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    .line 170
    return-void
.end method

.method public setStraightenRotation(F)V
    .locals 0
    .param p1, "straighten"    # F

    .prologue
    .line 181
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    .line 182
    return-void
.end method

.method public setUseCropExtrasFlag(Z)V
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mUseCropExtras:Z

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mFlip:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",straighten="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mStraightenRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",photoRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 485
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 486
    .local v0, "data":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 487
    return-void
.end method
