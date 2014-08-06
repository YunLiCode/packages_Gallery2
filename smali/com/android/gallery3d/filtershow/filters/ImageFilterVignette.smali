.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;
.super Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;
.source "ImageFilterVignette.java"


# instance fields
.field private mOverlayBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;-><init>()V

    .line 32
    const-string v0, "Vignette"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private calcRadius(FFII)F
    .locals 3
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 45
    move v0, p1

    .line 46
    .local v0, "d":F
    int-to-float v1, p3

    sub-float/2addr v1, p1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 47
    int-to-float v1, p3

    sub-float v0, v1, p1

    .line 49
    :cond_0
    cmpg-float v1, v0, p2

    if-gez v1, :cond_1

    .line 50
    move v0, p2

    .line 52
    :cond_1
    int-to-float v1, p4

    sub-float/2addr v1, p2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 53
    int-to-float v1, p4

    sub-float v0, v1, p2

    .line 55
    :cond_2
    mul-float v1, v0, v0

    const/high16 v2, 0x40000000

    mul-float/2addr v1, v2

    return v1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 60
    if-nez p3, :cond_2

    .line 61
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 63
    .local v18, "res":Landroid/content/res/Resources;
    const v1, 0x7f0200a2

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/IconUtilities;->getFXBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 66
    .end local v18    # "res":Landroid/content/res/Resources;
    :cond_0
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    .local v10, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 68
    .local v14, "dim":I
    new-instance v16, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .local v16, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->mOverlayBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v1, v2, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 96
    .end local v10    # "c":Landroid/graphics/Canvas;
    .end local v14    # "dim":I
    .end local v16    # "r":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-object p1

    .line 72
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    .line 73
    .local v17, "rep":Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;
    if-eqz v17, :cond_1

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 77
    .local v3, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 78
    .local v4, "h":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000

    div-float v9, v1, v2

    .line 79
    .local v9, "value":F
    div-int/lit8 v1, v3, 0x2

    int-to-float v12, v1

    .line 80
    .local v12, "cx":F
    div-int/lit8 v1, v4, 0x2

    int-to-float v13, v1

    .line 81
    .local v13, "cy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->calcRadius(FFII)F

    move-result v16

    .line 82
    .local v16, "r":F
    move/from16 v7, v16

    .line 83
    .local v7, "rx":F
    move/from16 v8, v16

    .line 84
    .local v8, "ry":F
    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->isCenterSet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object v15

    .line 86
    .local v15, "m":Landroid/graphics/Matrix;
    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getCenterX()F

    move-result v12

    .line 87
    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getCenterY()F

    move-result v13

    .line 88
    const/4 v1, 0x2

    new-array v11, v1, [F

    const/4 v1, 0x0

    aput v12, v11, v1

    const/4 v1, 0x1

    aput v13, v11, v1

    .line 89
    .local v11, "center":[F
    invoke-virtual {v15, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 90
    const/4 v1, 0x0

    aget v12, v11, v1

    .line 91
    const/4 v1, 0x1

    aget v13, v11, v1

    .line 92
    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getRadiusX()F

    move-result v1

    invoke-virtual {v15, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v7

    .line 93
    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getRadiusY()F

    move-result v1

    invoke-virtual {v15, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v8

    .line 95
    .end local v11    # "center":[F
    .end local v15    # "m":Landroid/graphics/Matrix;
    :cond_3
    float-to-int v5, v12

    float-to-int v6, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;->nativeApplyFilter(Landroid/graphics/Bitmap;IIIIFFF)V

    goto :goto_0
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;-><init>()V

    .line 38
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;
    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIIIFFF)V
.end method
