.class public Lcom/android/camera/ui/ZoomRenderer;
.super Lcom/android/camera/ui/OverlayRenderer;
.source "ZoomRenderer.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mCircleSize:I

.field private mDetector:Landroid/view/ScaleGestureDetector;

.field private mInnerStroke:I

.field private mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

.field private mMaxCircle:F

.field private mMaxZoom:I

.field private mMinCircle:F

.field private mMinZoom:I

.field private mOuterStroke:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mZoomFraction:I

.field private mZoomSig:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/camera/ui/OverlayRenderer;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0e00b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 68
    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    const v1, 0x7f0e00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mInnerStroke:I

    .line 70
    const v1, 0x7f0e00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mOuterStroke:I

    .line 71
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 72
    const v1, 0x7f0e00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setVisible(Z)V

    .line 75
    return-void
.end method


# virtual methods
.method public layout(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/OverlayRenderer;->layout(IIII)V

    .line 100
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    .line 101
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomRenderer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomRenderer;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    .line 103
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    .line 104
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mInnerStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 114
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 115
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40800000

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mOuterStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mZoomSig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mZoomFraction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "txt":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 122
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterX:I

    iget-object v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ZoomRenderer;->mCenterY:I

    iget-object v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 129
    .local v1, "sf":F
    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v0, v3

    .line 130
    .local v0, "circle":F
    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 131
    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 132
    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    if-eqz v3, :cond_0

    float-to-int v3, v0

    iget v4, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    if-eq v3, v4, :cond_0

    .line 133
    float-to-int v3, v0

    iput v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    .line 134
    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinZoom:I

    iget v4, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxZoom:I

    iget v6, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinZoom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    iget v6, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 135
    .local v2, "zoom":I
    iget-object v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    invoke-interface {v3, v2}, Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 137
    .end local v2    # "zoom":I
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ZoomRenderer;->setVisible(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomStart()V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomRenderer;->update()V

    .line 147
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomRenderer;->setVisible(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    .line 156
    :cond_0
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/camera/ui/ZoomRenderer;->mListener:Lcom/android/camera/ui/ZoomRenderer$OnZoomChangedListener;

    .line 95
    return-void
.end method

.method public setZoom(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    int-to-float v1, p1

    iget v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxCircle:F

    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxZoom:I

    iget v3, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinZoom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mCircleSize:I

    .line 85
    return-void
.end method

.method public setZoomMax(I)V
    .locals 1
    .param p1, "zoomMaxIndex"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/camera/ui/ZoomRenderer;->mMaxZoom:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mMinZoom:I

    .line 81
    return-void
.end method

.method public setZoomValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 88
    div-int/lit8 p1, p1, 0xa

    .line 89
    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mZoomSig:I

    .line 90
    rem-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/android/camera/ui/ZoomRenderer;->mZoomFraction:I

    .line 91
    return-void
.end method
