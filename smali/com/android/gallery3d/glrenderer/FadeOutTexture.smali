.class public Lcom/android/gallery3d/glrenderer/FadeOutTexture;
.super Lcom/android/gallery3d/glrenderer/FadeTexture;
.source "FadeOutTexture.java"


# instance fields
.field private final mTexture:Lcom/android/gallery3d/glrenderer/BasicTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 3
    .param p1, "texture"    # Lcom/android/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/glrenderer/FadeTexture;-><init>(IIZ)V

    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/FadeOutTexture;->mTexture:Lcom/android/gallery3d/glrenderer/BasicTexture;

    .line 31
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/FadeOutTexture;->getRatio()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/FadeOutTexture;->mTexture:Lcom/android/gallery3d/glrenderer/BasicTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/BasicTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 39
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 41
    :cond_0
    return-void
.end method
