.class public Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImageVignette.java"


# instance fields
.field private mActiveHandle:I

.field private mEditorVignette:Lcom/android/gallery3d/filtershow/editors/EditorVignette;

.field mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

.field private mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    .line 41
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    .line 46
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    .line 47
    return-void
.end method


# virtual methods
.method public computeEllipses()V
    .locals 13

    .prologue
    const v12, 0x3f4ccccd

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 101
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    if-nez v7, :cond_0

    .line 134
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v5

    .line 105
    .local v5, "toImg":Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    .local v6, "toScr":Landroid/graphics/Matrix;
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 108
    const/4 v7, 0x2

    new-array v0, v7, [F

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getCenterX()F

    move-result v7

    aput v7, v0, v10

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getCenterY()F

    move-result v7

    aput v7, v0, v11

    .line 110
    .local v0, "c":[F
    aget v7, v0, v10

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 111
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v1, v7

    .line 112
    .local v1, "cx":F
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v2, v7

    .line 113
    .local v2, "cy":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    mul-float v3, v7, v12

    .line 114
    .local v3, "rx":F
    move v4, v3

    .line 115
    .local v4, "ry":F
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v7, v1, v2}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setCenter(FF)V

    .line 116
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v7, v3, v4}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setRadius(FF)V

    .line 118
    aput v1, v0, v10

    .line 119
    aput v2, v0, v11

    .line 120
    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 121
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->getWidth()I

    move-result v7

    if-eqz v7, :cond_1

    .line 122
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    aget v8, v0, v10

    aget v9, v0, v11

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setCenter(FF)V

    .line 123
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    aget v8, v0, v10

    mul-float/2addr v8, v12

    aget v9, v0, v11

    mul-float/2addr v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setRadius(FF)V

    .line 133
    .end local v1    # "cx":F
    .end local v2    # "cy":F
    .end local v3    # "rx":F
    .end local v4    # "ry":F
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mEditorVignette:Lcom/android/gallery3d/filtershow/editors/EditorVignette;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/editors/EditorVignette;->commitLocalRepresentation()V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 129
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    aget v8, v0, v10

    aget v9, v0, v11

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setCenter(FF)V

    .line 130
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getRadiusX()F

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getRadiusY()F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setRadius(FF)V

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    if-nez v3, :cond_0

    .line 163
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v1

    .line 153
    .local v1, "toImg":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 154
    .local v2, "toScr":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 155
    const/4 v3, 0x2

    new-array v0, v3, [F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getCenterX()F

    move-result v3

    aput v3, v0, v4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getCenterY()F

    move-result v3

    aput v3, v0, v5

    .line 157
    .local v0, "c":[F
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 158
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    aget v4, v0, v4

    aget v5, v0, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setCenter(FF)V

    .line 159
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getRadiusX()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getRadiusY()F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setRadius(FF)V

    .line 162
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onSizeChanged(IIII)V

    .line 143
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->computeEllipses()V

    .line 144
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v8, -0x1

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 52
    .local v1, "mask":I
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    if-ne v5, v8, :cond_2

    .line 53
    if-eqz v1, :cond_0

    .line 54
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 92
    :goto_0
    return v4

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 57
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->getCloseHandle(FF)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    .line 59
    :cond_1
    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    if-ne v5, v8, :cond_3

    .line 60
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 63
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 71
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 72
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 74
    .local v3, "y":F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setScrToImageMatrix(Landroid/graphics/Matrix;)V

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "didComputeEllipses":Z
    packed-switch v1, :pswitch_data_1

    .line 88
    :goto_2
    if-nez v0, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->computeEllipses()V

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->invalidate()V

    goto :goto_0

    .line 65
    .end local v0    # "didComputeEllipses":Z
    .end local v2    # "x":F
    .end local v3    # "y":F
    :pswitch_0
    iput v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    goto :goto_1

    .line 79
    .restart local v0    # "didComputeEllipses":Z
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :pswitch_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v5, v2, v3, v6}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->actionDown(FFLcom/android/gallery3d/filtershow/imageshow/Oval;)V

    goto :goto_2

    .line 83
    :pswitch_2
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mElipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mActiveHandle:I

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {v5, v6, v2, v3, v7}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->actionMove(IFFLcom/android/gallery3d/filtershow/imageshow/Oval;)V

    .line 84
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;)V

    .line 85
    const/4 v0, 0x1

    goto :goto_2

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 77
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/EditorVignette;)V
    .locals 0
    .param p1, "editorVignette"    # Lcom/android/gallery3d/filtershow/editors/EditorVignette;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mEditorVignette:Lcom/android/gallery3d/filtershow/editors/EditorVignette;

    .line 138
    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;)V
    .locals 0
    .param p1, "vignetteRep"    # Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->mVignetteRep:Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    .line 97
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageVignette;->computeEllipses()V

    .line 98
    return-void
.end method
