.class public Lcom/android/gallery3d/filtershow/ui/IconButton;
.super Landroid/widget/Button;
.source "IconButton.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mImageMirror:Landroid/graphics/Bitmap;

.field private stale_icon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/gallery3d/filtershow/ui/IconButton;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/gallery3d/filtershow/ui/IconButton;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/ui/IconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/ui/IconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mImageMirror:Landroid/graphics/Bitmap;

    .line 38
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mIcon:Landroid/graphics/Bitmap;

    .line 40
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->stale_icon:Z

    .line 52
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v0, v1, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 54
    .local v0, "ic":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mImageMirror:Landroid/graphics/Bitmap;

    .line 57
    :cond_0
    return-void
.end method

.method private makeAndSetIcon(Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getGoodIconSideSize()[I

    move-result-object v0

    .line 128
    .local v0, "sizes":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget v2, v0, v1

    if-lez v2, :cond_0

    aget v2, v0, v4

    if-lez v2, :cond_0

    .line 129
    aget v1, v0, v1

    aget v2, v0, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/ui/IconButton;->makeImageIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/ui/IconButton;->setImageIcon(Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 131
    :cond_0
    return v1
.end method

.method private makeImageIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, v2, :cond_0

    if-lt p2, v2, :cond_0

    if-ge p3, v2, :cond_1

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "input is null, or has invalid dimensions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_1
    const/4 v0, 0x0

    .line 167
    .local v0, "icon":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    if-nez v0, :cond_2

    .line 169
    invoke-static {p1, p2, p3, v3}, Lcom/android/gallery3d/filtershow/tools/IconFactory;->createIcon(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 171
    :cond_2
    sget-boolean v1, Lcom/android/gallery3d/filtershow/ui/IconButton;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p3, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 172
    :cond_4
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 173
    invoke-static {v0, p1, v3}, Lcom/android/gallery3d/filtershow/tools/IconFactory;->drawIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method private setImageIcon(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 140
    if-nez p1, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 144
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 145
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mIcon:Landroid/graphics/Bitmap;

    .line 147
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mIcon:Landroid/graphics/Bitmap;

    .line 148
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3, v0, v3, v3}, Lcom/android/gallery3d/filtershow/ui/IconButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 150
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getGoodIconSideSize()[I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 84
    .local v4, "p":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 86
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v9, v7, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getCompoundDrawablePadding()I

    move-result v7

    mul-int/lit8 v3, v7, 0x2

    .line 92
    .local v3, "inner_padding":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v6, v7, v3

    .line 96
    .local v6, "vert":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v2, v7, v3

    .line 98
    .local v2, "horiz":I
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 99
    .local v1, "defaultSize":I
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v1, v7, v9

    const/4 v8, 0x1

    aput v1, v7, v8

    return-object v7
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->stale_icon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mImageMirror:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mImageMirror:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mImageMirror:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mImageMirror:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->makeAndSetIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->stale_icon:Z

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 105
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->stale_icon:Z

    .line 108
    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->mImageMirror:Landroid/graphics/Bitmap;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/ui/IconButton;->stale_icon:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/IconButton;->invalidate()V

    .line 70
    return-void
.end method
