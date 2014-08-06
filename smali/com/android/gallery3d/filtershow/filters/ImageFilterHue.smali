.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;
.super Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;
.source "ImageFilterHue.java"


# instance fields
.field private cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    .line 28
    const-string v0, "Hue"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    .line 30
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 61
    :goto_0
    return-object p1

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 54
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 55
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v3

    int-to-float v1, v3

    .line 56
    .local v1, "value":F
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->identity()V

    .line 57
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->setHue(F)V

    .line 59
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->cmatrix:Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/ColorSpaceMatrix;->getMatrix()[F

    move-result-object v3

    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;->nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V

    goto :goto_0
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 35
    const-string v1, "Hue"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setName(Ljava/lang/String;)V

    .line 36
    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterHue;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 37
    const/16 v1, -0xb4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMinimum(I)V

    .line 38
    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setMaximum(I)V

    .line 39
    const v1, 0x7f0b017d

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    .line 40
    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setButtonId(I)V

    .line 41
    sget v1, Lcom/android/gallery3d/filtershow/editors/BasicEditor;->ID:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setEditorId(I)V

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setSupportsPartialRendering(Z)V

    .line 43
    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II[F)V
.end method
