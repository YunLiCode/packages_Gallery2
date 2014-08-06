.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterParametricBorder.java"


# instance fields
.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    .line 29
    const-string v0, "Border"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private applyHelper(Landroid/graphics/Canvas;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/high16 v7, 0x42c80000

    const/4 v6, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object v4

    if-nez v4, :cond_0

    .line 60
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 46
    .local v0, "border":Landroid/graphics/Path;
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 47
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getBorderSize()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    int-to-float v5, p2

    mul-float v1, v4, v5

    .line 48
    .local v1, "bs":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getBorderRadius()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    int-to-float v5, p2

    mul-float v3, v4, v5

    .line 49
    .local v3, "r":F
    int-to-float v4, p3

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    int-to-float v4, p2

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, p2

    sub-float/2addr v5, v1

    int-to-float v6, p3

    sub-float/2addr v6, v1

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v3, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 56
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 57
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 64
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->applyHelper(Landroid/graphics/Canvas;II)V

    .line 66
    return-object p1
.end method

.method public getParameters()Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    return-object v0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 33
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    .line 34
    .local v0, "parameters":Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterParametricBorder;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    .line 35
    return-void
.end method
