.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;
.super Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;
.source "ImageFilterHighlights.java"


# instance fields
.field mHighlightCurve:[D

.field mSpline:Lcom/android/gallery3d/filtershow/filters/SplineMath;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 26
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;-><init>()V

    .line 30
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/SplineMath;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/SplineMath;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;->mSpline:Lcom/android/gallery3d/filtershow/filters/SplineMath;

    .line 31
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;->mHighlightCurve:[D

    .line 27
    const-string v0, "Highlights"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 28
    return-void

    .line 31
    nop

    :array_0
    .array-data 8
        0x0
        0x3fd47ae147ae147bL
        0x3fdac083126e978dL
        0x3fde76c8b4395810L
        0x3fe48b4395810625L
    .end array-data
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v2

    if-nez v2, :cond_0

    .line 71
    :goto_0
    return-object p1

    .line 54
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v2

    int-to-float v11, v2

    .line 55
    .local v11, "p":F
    float-to-double v15, v11

    const-wide/high16 v17, 0x4059000000000000L

    div-double v12, v15, v17

    .line 56
    .local v12, "t":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v2, 0x5

    if-ge v3, v2, :cond_1

    .line 57
    int-to-double v15, v3

    const-wide/high16 v17, 0x4010000000000000L

    div-double v4, v15, v17

    .line 58
    .local v4, "x":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;->mHighlightCurve:[D

    aget-wide v15, v2, v3

    mul-double/2addr v15, v12

    const-wide/high16 v17, 0x3ff0000000000000L

    sub-double v17, v17, v12

    mul-double v17, v17, v4

    add-double v6, v15, v17

    .line 59
    .local v6, "y":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;->mSpline:Lcom/android/gallery3d/filtershow/filters/SplineMath;

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/filters/SplineMath;->setPoint(IDD)V

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v4    # "x":D
    .end local v6    # "y":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;->mSpline:Lcom/android/gallery3d/filtershow/filters/SplineMath;

    const/16 v15, 0x100

    invoke-virtual {v2, v15}, Lcom/android/gallery3d/filtershow/filters/SplineMath;->calculatetCurve(I)[[F

    move-result-object v8

    .line 63
    .local v8, "curve":[[F
    array-length v2, v8

    new-array v10, v2, [F

    .line 64
    .local v10, "luminanceMap":[F
    const/4 v3, 0x0

    :goto_2
    array-length v2, v10

    if-ge v3, v2, :cond_2

    .line 65
    aget-object v2, v8, v3

    const/4 v15, 0x1

    aget v2, v2, v15

    aput v2, v10, v3

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 68
    .local v14, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 70
    .local v9, "h":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v9, v10}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;->nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V

    goto :goto_0
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 36
    const-string v1, "Shadows"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    .line 37
    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterHighlights;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 38
    const v1, 0x7f0b017f

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    .line 39
    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setButtonId(I)V

    .line 40
    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    .line 41
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setDefaultValue(I)V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setSupportsPartialRendering(Z)V

    .line 44
    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V
.end method
