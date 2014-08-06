.class public Lcom/android/gallery3d/filtershow/ui/FilterIconButton;
.super Lcom/android/gallery3d/filtershow/ui/IconButton;
.source "FilterIconButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;
.implements Lcom/android/gallery3d/filtershow/imageshow/GeometryListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAction:Lcom/android/gallery3d/filtershow/category/Action;

.field private mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

.field private mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private mOverlayOnly:Z

.field private mSelectPaint:Landroid/graphics/Paint;

.field private mSelectStroke:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/ui/IconButton;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayOnly:Z

    .line 52
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 53
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/ui/IconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayOnly:Z

    .line 52
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 53
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/ui/IconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayOnly:Z

    .line 52
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 53
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 68
    return-void
.end method

.method private postNewIconRenderRequest()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 180
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 181
    .local v1, "dst":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    if-eqz v4, :cond_0

    .line 182
    new-instance v3, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>()V

    .line 183
    .local v3, "mPreset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->addFilter(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 185
    iget-object v2, v3, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 186
    .local v2, "geometry":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 187
    .local v0, "bound":Landroid/graphics/RectF;
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    .line 188
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 190
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v3, v5, p0}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->post(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;ILcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;)V

    .line 193
    .end local v0    # "bound":Landroid/graphics/RectF;
    .end local v2    # "geometry":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    .end local v3    # "mPreset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_0
    return-void
.end method

.method private setFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 2
    .param p1, "filterRepresentation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getOverlayId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getOverlayBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getOverlayId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/Action;->setOverlayBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getOverlayOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayOnly:Z

    .line 119
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayOnly:Z

    if-eqz v0, :cond_3

    .line 120
    sget-boolean v0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getOverlayBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setIcon(Landroid/graphics/Bitmap;)V

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->invalidate()V

    .line 124
    return-void
.end method


# virtual methods
.method public available(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/gallery3d/filtershow/cache/RenderingRequest;

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, "bmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayOnly:Z

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 158
    :cond_2
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 159
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/filtershow/tools/IconFactory;->drawIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setIcon(Landroid/graphics/Bitmap;)V

    .line 164
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/category/Action;->setPortraitImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public geometryChanged()V
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayOnly:Z

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 176
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->invalidate()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 87
    .local v0, "activity":Lcom/android/gallery3d/filtershow/FilterShowActivity;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->showRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 88
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->setSelected(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mOverlayOnly:Z

    if-nez v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->postNewIconRenderRequest()V

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/category/CategoryAdapter;->isSelected(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v7, v0, v1

    .line 135
    .local v7, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->getCompoundDrawablePadding()I

    move-result v8

    .line 138
    .local v8, "padding":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->getScrollX()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mSelectStroke:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->getScrollY()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mSelectStroke:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 141
    .local v9, "r":Landroid/graphics/Rect;
    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    iget v0, v9, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mSelectStroke:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x2

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mSelectStroke:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mSelectStroke:I

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mSelectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/ui/SelectionRenderer;->drawSelection(Landroid/graphics/Canvas;IIIIILandroid/graphics/Paint;)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 147
    .end local v7    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "padding":I
    .end local v9    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void

    .line 131
    :cond_1
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/ui/IconButton;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setAction(Lcom/android/gallery3d/filtershow/category/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/android/gallery3d/filtershow/category/Action;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    .line 97
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getPortraitImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getPortraitImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setIcon(Landroid/graphics/Bitmap;)V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAction:Lcom/android/gallery3d/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/Action;->getRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    goto :goto_0
.end method

.method public setup(Ljava/lang/String;Landroid/widget/LinearLayout;Lcom/android/gallery3d/filtershow/category/CategoryAdapter;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/widget/LinearLayout;
    .param p3, "adapter"    # Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .prologue
    .line 71
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mAdapter:Lcom/android/gallery3d/filtershow/category/CategoryAdapter;

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74
    invoke-super {p0, p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->addGeometryListener(Lcom/android/gallery3d/filtershow/imageshow/GeometryListener;)V

    .line 77
    const v1, 0x7f0e00cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mSelectStroke:I

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mSelectPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mSelectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->mSelectPaint:Landroid/graphics/Paint;

    const v2, 0x7f09006e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/FilterIconButton;->invalidate()V

    .line 82
    return-void
.end method
