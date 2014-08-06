.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterFx.java"


# instance fields
.field private mFxBitmap:Landroid/graphics/Bitmap;

.field private mFxBitmapId:I

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    .line 27
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mResources:Landroid/content/res/Resources;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmapId:I

    .line 32
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-object p1

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 58
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 60
    .local v3, "h":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->getParameters()Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;->getBitmapResource()I

    move-result v7

    .line 61
    .local v7, "bitmapResourceId":I
    if-eqz v7, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmapId:I

    if-eq v0, v7, :cond_3

    .line 66
    :cond_2
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 67
    .local v8, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 68
    iput v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmapId:I

    .line 69
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmapId:I

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmapId:I

    invoke-static {v0, v1, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    .line 76
    .end local v8    # "o":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 81
    .local v5, "fxw":I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 83
    .local v6, "fxh":I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 72
    .end local v5    # "fxw":I
    .end local v6    # "fxh":I
    .restart local v8    # "o":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    const-string v0, "ImageFilterFx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad resource for filter: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public freeResources()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    .line 38
    return-void
.end method

.method public getParameters()Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;II)V
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mResources:Landroid/content/res/Resources;

    .line 89
    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 41
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    .line 42
    .local v0, "parameters":Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFxRepresentation;

    .line 43
    return-void
.end method
