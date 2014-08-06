.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterRedEye.java"


# instance fields
.field mParameters:Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 27
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    .line 30
    const-string v0, "Red Eye"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    const/4 v9, 0x0

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 61
    .local v6, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 62
    .local v0, "h":I
    const/4 v7, 0x4

    new-array v4, v7, [S

    .line 64
    .local v4, "rect":[S
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->getNumberOfCandidates()I

    move-result v5

    .line 65
    .local v5, "size":I
    invoke-virtual {p0, v6, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object v2

    .line 66
    .local v2, "originalToScreen":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 67
    new-instance v3, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    invoke-virtual {v7, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->getCandidate(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;

    check-cast v7, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;

    iget-object v7, v7, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;->mRect:Landroid/graphics/RectF;

    invoke-direct {v3, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 68
    .local v3, "r":Landroid/graphics/RectF;
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 69
    int-to-float v7, v6

    int-to-float v8, v0

    invoke-virtual {v3, v9, v9, v7, v8}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    const/4 v7, 0x0

    iget v8, v3, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    int-to-short v8, v8

    aput-short v8, v4, v7

    .line 71
    const/4 v7, 0x1

    iget v8, v3, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    int-to-short v8, v8

    aput-short v8, v4, v7

    .line 72
    const/4 v7, 0x2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v8, v8

    int-to-short v8, v8

    aput-short v8, v4, v7

    .line 73
    const/4 v7, 0x3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    int-to-short v8, v8

    aput-short v8, v4, v7

    .line 74
    invoke-virtual {p0, p1, v6, v0, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->nativeApplyFilter(Landroid/graphics/Bitmap;II[S)V

    .line 66
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "r":Landroid/graphics/RectF;
    :cond_1
    return-object p1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->clearCandidates()V

    .line 48
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;-><init>()V

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II[S)V
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 54
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    .line 55
    .local v0, "parameters":Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    .line 56
    return-void
.end method
