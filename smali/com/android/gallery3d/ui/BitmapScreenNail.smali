.class public Lcom/android/gallery3d/ui/BitmapScreenNail;
.super Ljava/lang/Object;
.source "BitmapScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# instance fields
.field private final mBitmapTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/BitmapTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 45
    return-void
.end method

.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "dest"    # Landroid/graphics/RectF;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 60
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 55
    return-void
.end method
