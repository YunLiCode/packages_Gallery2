.class public Lcom/android/gallery3d/glrenderer/ColorTexture;
.super Ljava/lang/Object;
.source "ColorTexture.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/Texture;


# instance fields
.field private final mColor:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/gallery3d/glrenderer/ColorTexture;->mColor:I

    .line 30
    iput v0, p0, Lcom/android/gallery3d/glrenderer/ColorTexture;->mWidth:I

    .line 31
    iput v0, p0, Lcom/android/gallery3d/glrenderer/ColorTexture;->mHeight:I

    .line 32
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 36
    iget v4, p0, Lcom/android/gallery3d/glrenderer/ColorTexture;->mWidth:I

    iget v5, p0, Lcom/android/gallery3d/glrenderer/ColorTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/ColorTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 37
    return-void
.end method

.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 41
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    iget v5, p0, Lcom/android/gallery3d/glrenderer/ColorTexture;->mColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 42
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/gallery3d/glrenderer/ColorTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/glrenderer/ColorTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/gallery3d/glrenderer/ColorTexture;->mColor:I

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/gallery3d/glrenderer/ColorTexture;->mWidth:I

    .line 51
    iput p2, p0, Lcom/android/gallery3d/glrenderer/ColorTexture;->mHeight:I

    .line 52
    return-void
.end method
