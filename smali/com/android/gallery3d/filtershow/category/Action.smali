.class public Lcom/android/gallery3d/filtershow/category/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;


# instance fields
.field private mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

.field private mContext:Landroid/content/Context;

.field private mImage:Landroid/graphics/Bitmap;

.field private mImageFrame:Landroid/graphics/Rect;

.field private mName:Ljava/lang/String;

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private mPortraitImage:Landroid/graphics/Bitmap;

.field private mRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/category/Action;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .param p3, "type"    # I

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/Action;->mType:I

    .line 49
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/category/Action;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/filtershow/category/Action;->setType(I)V

    .line 52
    return-void
.end method

.method private drawCenteredImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 9
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "destination"    # Landroid/graphics/Bitmap;
    .param p3, "scale"    # Z

    .prologue
    const/4 v8, 0x0

    .line 120
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v8, v8, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 121
    .local v3, "image":Landroid/graphics/RectF;
    const/4 v0, 0x0

    .line 122
    .local v0, "border":I
    if-nez p3, :cond_0

    .line 123
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v0, v5, v6

    .line 124
    if-gez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 128
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v5, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v2, v5, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 131
    .local v2, "frame":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 132
    .local v4, "m":Landroid/graphics/Matrix;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v2, v3, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 133
    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 134
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 135
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v3, v2, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 136
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 137
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 138
    return-void
.end method

.method private postNewIconRenderRequest(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>()V

    .line 113
    .local v0, "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->addFilter(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 114
    const/4 v1, 0x3

    invoke-static {p1, v0, v1, p0}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->post(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;ILcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;)V

    .line 117
    .end local v0    # "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_0
    return-void
.end method


# virtual methods
.method public available(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)V
    .locals 7
    .param p1, "request"    # Lcom/android/gallery3d/filtershow/cache/RenderingRequest;

    .prologue
    const/4 v6, 0x0

    .line 142
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    .line 143
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getOverlayId()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/Action;->mRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getOverlayId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/Action;->getRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getPriority()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 153
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 162
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 157
    :cond_4
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    const/16 v1, 0x80

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 159
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2, v6}, Lcom/android/gallery3d/filtershow/category/Action;->drawCenteredImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/Action;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPortraitImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/Action;->mPortraitImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/Action;->mRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    return-object v0
.end method

.method public setAdapter(Lcom/android/gallery3d/filtershow/category/CategoryAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 104
    return-void
.end method

.method public setImageFrame(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "imageFrame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    .line 76
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImageFrame:Landroid/graphics/Rect;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImageFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getLargeThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 81
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImageFrame:Landroid/graphics/Rect;

    .line 82
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImageFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 83
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/category/Action;->mImageFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 84
    .local v2, "h":I
    iget v4, p0, Lcom/android/gallery3d/filtershow/category/Action;->mType:I

    if-ne v4, v5, :cond_2

    .line 85
    div-int/lit8 v3, v3, 0x2

    .line 87
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    .local v1, "bitmapCrop":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v1, v5}, Lcom/android/gallery3d/filtershow/category/Action;->drawCenteredImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 90
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/category/Action;->postNewIconRenderRequest(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setOverlayBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "overlayBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 181
    return-void
.end method

.method public setPortraitImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "portraitImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mPortraitImage:Landroid/graphics/Bitmap;

    .line 169
    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 64
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/Action;->mName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/gallery3d/filtershow/category/Action;->mType:I

    .line 108
    return-void
.end method
