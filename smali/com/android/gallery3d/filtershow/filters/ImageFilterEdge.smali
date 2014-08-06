.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterEdge;
.super Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;
.source "ImageFilterEdge.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;-><init>()V

    .line 26
    const-string v0, "Edge"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterEdge;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 51
    :goto_0
    return-object p1

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 47
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 48
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterEdge;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x65

    int-to-float v1, v3

    .line 49
    .local v1, "p":F
    const/high16 v3, 0x42c80000

    div-float/2addr v1, v3

    .line 50
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterEdge;->nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V

    goto :goto_0
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/SimpleImageFilter;->getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 31
    const-string v1, "Edge"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 32
    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterEdge;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 33
    const v1, 0x7f0b018a

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setTextId(I)V

    .line 34
    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setButtonId(I)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setSupportsPartialRendering(Z)V

    .line 36
    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V
.end method
