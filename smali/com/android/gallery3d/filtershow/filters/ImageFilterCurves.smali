.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterCurves.java"


# instance fields
.field mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 26
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    .line 40
    const-string v0, "Curves"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->reset()V

    .line 42
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/16 v0, 0x100

    new-array v4, v0, [I

    .line 59
    .local v4, "rgbGradient":[I
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V

    .line 64
    .end local v4    # "rgbGradient":[I
    :cond_0
    const/4 v9, 0x0

    .line 65
    .local v9, "redGradient":[I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const/16 v0, 0x100

    new-array v9, v0, [I

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v9, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    .line 69
    :cond_1
    const/4 v10, 0x0

    .line 70
    .local v10, "greenGradient":[I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    const/16 v0, 0x100

    new-array v10, v0, [I

    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, v10, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    .line 74
    :cond_2
    const/4 v11, 0x0

    .line 75
    .local v11, "blueGradient":[I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    const/16 v0, 0x100

    new-array v11, v0, [I

    .line 77
    const/4 v0, 0x3

    invoke-virtual {p0, v11, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->populateArray([II)V

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V

    .line 82
    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;-><init>()V

    return-object v0
.end method

.method public populateArray([II)V
    .locals 5
    .param p1, "array"    # [I
    .param p2, "curveIndex"    # I

    .prologue
    .line 45
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    invoke-virtual {v3, p2}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v2

    .line 46
    .local v2, "spline":Lcom/android/gallery3d/filtershow/ui/Spline;
    if-nez v2, :cond_1

    .line 53
    :cond_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/ui/Spline;->getAppliedCurve()[F

    move-result-object v0

    .line 50
    .local v0, "curve":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x100

    if-ge v1, v3, :cond_0

    .line 51
    aget v3, v0, v1

    const/high16 v4, 0x437f0000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, p1, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    .line 94
    new-instance v1, Lcom/android/gallery3d/filtershow/ui/Spline;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/ui/Spline;-><init>()V

    .line 96
    .local v1, "spline":Lcom/android/gallery3d/filtershow/ui/Spline;
    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(FF)I

    .line 97
    invoke-virtual {v1, v3, v2}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(FF)I

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    new-instance v3, Lcom/android/gallery3d/filtershow/ui/Spline;

    invoke-direct {v3, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;-><init>(Lcom/android/gallery3d/filtershow/ui/Spline;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->setSpline(ILcom/android/gallery3d/filtershow/ui/Spline;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 35
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    .line 36
    .local v0, "parameters":Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    .line 37
    return-void
.end method
