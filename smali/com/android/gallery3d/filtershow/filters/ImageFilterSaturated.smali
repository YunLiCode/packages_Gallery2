.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;
.super Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;
.source "ImageFilterSaturated.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;-><init>()V

    .line 26
    const-string v0, "Saturated"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v4

    if-nez v4, :cond_0

    .line 56
    :goto_0
    return-object p1

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 52
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 53
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v1

    .line 54
    .local v1, "p":I
    const/high16 v4, 0x3f800000

    int-to-float v5, v1

    const/high16 v6, 0x42c80000

    div-float/2addr v5, v6

    add-float v2, v4, v5

    .line 55
    .local v2, "value":F
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;->nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V

    goto :goto_0
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 33
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    const-string v1, "Saturated"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    .line 34
    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 35
    const v1, 0x7f0b017a

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    .line 36
    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setButtonId(I)V

    .line 37
    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    .line 38
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setDefaultValue(I)V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setSupportsPartialRendering(Z)V

    .line 41
    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V
.end method
