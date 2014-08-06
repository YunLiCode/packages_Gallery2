.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterNegative;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterNegative.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 11
    const-string v0, "Negative"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 36
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 37
    .local v0, "h":I
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterNegative;->nativeApplyFilter(Landroid/graphics/Bitmap;II)V

    .line 38
    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterDirectRepresentation;

    const-string v1, "Negative"

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDirectRepresentation;-><init>(Ljava/lang/String;)V

    .line 16
    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterNegative;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 17
    const v1, 0x7f0b0188

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setTextId(I)V

    .line 18
    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setButtonId(I)V

    .line 19
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setShowEditingControls(Z)V

    .line 20
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setShowParameterValue(Z)V

    .line 21
    const v1, 0x7f0a0054

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setEditorId(I)V

    .line 22
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setSupportsPartialRendering(Z)V

    .line 23
    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II)V
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 31
    return-void
.end method
