.class Lcom/android/gallery3d/ui/EdgeEffect$Drawable;
.super Lcom/android/gallery3d/glrenderer/ResourceTexture;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/EdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Drawable"
.end annotation


# instance fields
.field private mAlpha:I

.field private mBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 416
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 412
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    .line 413
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->mAlpha:I

    .line 417
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 436
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 437
    iget v0, p0, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->mAlpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 438
    iget-object v6, p0, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    .line 439
    .local v6, "b":Landroid/graphics/Rect;
    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 440
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 441
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->getWidth()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 432
    iput p1, p0, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->mAlpha:I

    .line 433
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/gallery3d/ui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 429
    return-void
.end method
