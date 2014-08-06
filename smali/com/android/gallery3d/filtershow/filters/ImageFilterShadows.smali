.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;
.super Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;
.source "ImageFilterShadows.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;-><init>()V

    .line 26
    const-string v0, "Shadows"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 56
    :goto_0
    return-object p1

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 52
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 53
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v3

    int-to-float v1, v3

    .line 55
    .local v1, "p":F
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;->nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V

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
    const-string v1, "Shadows"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    .line 34
    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterShadows;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 35
    const v1, 0x7f0b017e

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    .line 36
    const v1, 0x7f0a0047

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
