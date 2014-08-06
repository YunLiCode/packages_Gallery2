.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;
.super Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;
.source "ImageFilterKMeans.java"


# instance fields
.field private mSeed:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;-><init>()V

    .line 25
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;->mSeed:I

    .line 28
    const-string v1, "KMeans"

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 32
    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 33
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;->mSeed:I

    .line 34
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object p1

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 61
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 63
    .local v3, "h":I
    move-object v4, p1

    .line 64
    .local v4, "large_bm_ds":Landroid/graphics/Bitmap;
    move-object v7, p1

    .line 67
    .local v7, "small_bm_ds":Landroid/graphics/Bitmap;
    move v5, v2

    .line 68
    .local v5, "lw":I
    move v6, v3

    .line 69
    .local v6, "lh":I
    :goto_1
    const/16 v0, 0x100

    if-le v5, v0, :cond_2

    const/16 v0, 0x100

    if-le v6, v0, :cond_2

    .line 70
    div-int/lit8 v5, v5, 0x2

    .line 71
    div-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 73
    :cond_2
    if-eq v5, v2, :cond_3

    .line 74
    const/4 v0, 0x1

    invoke-static {p1, v5, v6, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 78
    :cond_3
    move v8, v5

    .line 79
    .local v8, "sw":I
    move v9, v6

    .line 80
    .local v9, "sh":I
    :goto_2
    const/16 v0, 0x40

    if-le v8, v0, :cond_4

    const/16 v0, 0x40

    if-le v9, v0, :cond_4

    .line 81
    div-int/lit8 v8, v8, 0x2

    .line 82
    div-int/lit8 v9, v9, 0x2

    goto :goto_2

    .line 84
    :cond_4
    if-eq v8, v5, :cond_5

    .line 85
    const/4 v0, 0x1

    invoke-static {v4, v8, v9, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 88
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getMinimum()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getMaximum()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int v10, v0, v1

    .line 90
    .local v10, "p":I
    iget v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;->mSeed:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v11}, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIII)V

    goto :goto_0
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 37
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 38
    const-string v1, "KMeans"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    .line 39
    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterKMeans;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 40
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    .line 41
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    .line 42
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setValue(I)V

    .line 43
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setDefaultValue(I)V

    .line 44
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setPreviewValue(I)V

    .line 45
    const v1, 0x7f0b018b

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    .line 46
    const v1, 0x7f0a004d

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setButtonId(I)V

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setSupportsPartialRendering(Z)V

    .line 48
    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIII)V
.end method
