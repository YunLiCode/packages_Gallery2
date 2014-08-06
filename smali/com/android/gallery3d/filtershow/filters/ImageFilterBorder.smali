.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterBorder.java"


# instance fields
.field private mDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    .line 33
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mResources:Landroid/content/res/Resources;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mDrawables:Ljava/util/HashMap;

    .line 38
    const-string v0, "Border"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->getDrawableResource()I

    move-result v2

    if-nez v2, :cond_1

    .line 73
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 71
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/high16 v2, 0x40000000

    mul-float v1, p2, v2

    .line 72
    .local v1, "scale2":F
    const/high16 v2, 0x3f800000

    div-float v0, v2, v1

    .line 73
    .local v0, "scale1":F
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->applyHelper(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public applyHelper(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale1"    # F
    .param p3, "scale2"    # F

    .prologue
    const/4 v7, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 56
    .local v4, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 57
    .local v3, "h":I
    new-instance v0, Landroid/graphics/Rect;

    int-to-float v5, v4

    mul-float/2addr v5, p2

    float-to-int v5, v5

    int-to-float v6, v3

    mul-float/2addr v6, p2

    float-to-int v6, v6

    invoke-direct {v0, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->getDrawableResource()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 61
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 62
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 63
    return-object p1
.end method

.method public freeResources()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 52
    return-void
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "rsc"    # I

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mDrawables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 85
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mResources:Landroid/content/res/Resources;

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 87
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mDrawables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    return-object v0
.end method

.method public getParameters()Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    return-object v0
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mResources:Landroid/content/res/Resources;

    if-eq v0, p1, :cond_0

    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mResources:Landroid/content/res/Resources;

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    :cond_0
    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 42
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    .line 43
    .local v0, "parameters":Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    .line 44
    return-void
.end method
