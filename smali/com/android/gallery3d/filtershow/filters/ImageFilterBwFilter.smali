.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;
.super Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;
.source "ImageFilterBwFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;-><init>()V

    .line 28
    const-string v0, "BW Filter"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    const/high16 v9, 0x3f800000

    .line 47
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 51
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 52
    .local v3, "h":I
    const/4 v0, 0x3

    new-array v7, v0, [F

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v1

    add-int/lit16 v1, v1, 0xb4

    int-to-float v1, v1

    aput v1, v7, v0

    const/4 v0, 0x1

    aput v9, v7, v0

    const/4 v0, 0x2

    aput v9, v7, v0

    .line 55
    .local v7, "hsv":[F
    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    .line 56
    .local v8, "rgb":I
    shr-int/lit8 v0, v8, 0x10

    and-int/lit16 v4, v0, 0xff

    .line 57
    .local v4, "r":I
    shr-int/lit8 v0, v8, 0x8

    and-int/lit16 v5, v0, 0xff

    .line 58
    .local v5, "g":I
    shr-int/lit8 v0, v8, 0x0

    and-int/lit16 v6, v0, 0xff

    .local v6, "b":I
    move-object v0, p0

    move-object v1, p1

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;->nativeApplyFilter(Landroid/graphics/Bitmap;IIIII)V

    goto :goto_0
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 33
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    const-string v1, "BW Filter"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    .line 34
    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterBwFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 35
    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    .line 36
    const/16 v1, -0xb4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    .line 37
    const v1, 0x7f0b017b

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    .line 38
    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setButtonId(I)V

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setSupportsPartialRendering(Z)V

    .line 40
    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIIII)V
.end method
