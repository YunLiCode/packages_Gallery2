.class public abstract Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.super Ljava/lang/Object;
.source "AbstractSlotRenderer.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SlotView$SlotRenderer;


# instance fields
.field private final mFramePressed:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

.field private mFramePressedUp:Lcom/android/gallery3d/glrenderer/FadeOutTexture;

.field private final mFrameSelected:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

.field private final mPanoramaIcon:Lcom/android/gallery3d/glrenderer/ResourceTexture;

.field private final mVideoOverlay:Lcom/android/gallery3d/glrenderer/ResourceTexture;

.field private final mVideoPlayIcon:Lcom/android/gallery3d/glrenderer/ResourceTexture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f020165

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/android/gallery3d/glrenderer/ResourceTexture;

    .line 40
    new-instance v0, Lcom/android/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0200e7

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/android/gallery3d/glrenderer/ResourceTexture;

    .line 41
    new-instance v0, Lcom/android/gallery3d/glrenderer/ResourceTexture;

    const v1, 0x7f0200d4

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/android/gallery3d/glrenderer/ResourceTexture;

    .line 42
    new-instance v0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f0200b6

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    .line 43
    new-instance v0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f0200b7

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    .line 44
    return-void
.end method

.method protected static drawFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/glrenderer/Texture;IIII)V
    .locals 6
    .param p0, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "frame"    # Lcom/android/gallery3d/glrenderer/Texture;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 116
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, p3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p4, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p5

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/Texture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 118
    return-void
.end method


# virtual methods
.method protected drawContent(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/gallery3d/glrenderer/Texture;III)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "content"    # Lcom/android/gallery3d/glrenderer/Texture;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rotation"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    .line 48
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 52
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    move p3, p4

    .line 53
    if-eqz p5, :cond_0

    .line 54
    div-int/lit8 v1, p3, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 55
    int-to-float v1, p5

    invoke-interface {p1, v1, v3, v3, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 56
    neg-int v1, p3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, p4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 60
    :cond_0
    int-to-float v1, p3

    invoke-interface {p2}, Lcom/android/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p4

    invoke-interface {p2}, Lcom/android/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 63
    .local v0, "scale":F
    invoke-interface {p1, v0, v0, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 64
    invoke-interface {p2, p1, v5, v5}, Lcom/android/gallery3d/glrenderer/Texture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    .line 66
    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 67
    return-void
.end method

.method protected drawPanoramaIcon(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 83
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x6

    .line 84
    .local v4, "iconSize":I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/android/gallery3d/glrenderer/ResourceTexture;

    sub-int v1, p2, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, p3, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 86
    return-void
.end method

.method protected drawPressedFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/glrenderer/Texture;IIII)V

    .line 108
    return-void
.end method

.method protected drawPressedUpFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/glrenderer/FadeOutTexture;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/gallery3d/glrenderer/FadeOutTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/glrenderer/FadeOutTexture;-><init>(Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/glrenderer/FadeOutTexture;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/glrenderer/FadeOutTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/glrenderer/Texture;IIII)V

    .line 104
    return-void
.end method

.method protected drawSelectedFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/glrenderer/Texture;IIII)V

    .line 112
    return-void
.end method

.method protected drawVideoOverlay(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 14
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/android/gallery3d/glrenderer/ResourceTexture;

    .line 73
    .local v1, "v":Lcom/android/gallery3d/glrenderer/ResourceTexture;
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 74
    .local v13, "scale":F
    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 75
    .local v5, "w":I
    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 76
    .local v6, "h":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 78
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v11, v2, 0x6

    .line 79
    .local v11, "s":I
    iget-object v7, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/android/gallery3d/glrenderer/ResourceTexture;

    sub-int v2, p2, v11

    div-int/lit8 v9, v2, 0x2

    sub-int v2, p3, v11

    div-int/lit8 v10, v2, 0x2

    move-object v8, p1

    move v12, v11

    invoke-virtual/range {v7 .. v12}, Lcom/android/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 80
    return-void
.end method

.method protected isPressedUpFrameFinished()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/glrenderer/FadeOutTexture;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/glrenderer/FadeOutTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/glrenderer/FadeOutTexture;

    .line 96
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
