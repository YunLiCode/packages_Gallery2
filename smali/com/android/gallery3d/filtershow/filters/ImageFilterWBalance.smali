.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterWBalance.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 28
    const-string v0, "WBalance"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    const/4 v4, -0x1

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 54
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .local v3, "h":I
    move-object v0, p0

    move-object v1, p1

    move v5, v4

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;->nativeApplyFilter(Landroid/graphics/Bitmap;IIII)V

    .line 56
    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterDirectRepresentation;

    const-string v1, "WBalance"

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDirectRepresentation;-><init>(Ljava/lang/String;)V

    .line 33
    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterWBalance;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 34
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setPriority(I)V

    .line 35
    const v1, 0x7f0b017c

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setTextId(I)V

    .line 36
    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setButtonId(I)V

    .line 37
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setShowEditingControls(Z)V

    .line 38
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setShowParameterValue(Z)V

    .line 39
    const v1, 0x7f0a0054

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setEditorId(I)V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setSupportsPartialRendering(Z)V

    .line 41
    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIII)V
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 47
    return-void
.end method
