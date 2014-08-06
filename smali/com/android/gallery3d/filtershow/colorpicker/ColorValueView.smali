.class public Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;
.super Landroid/view/View;
.source "ColorValueView.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;


# instance fields
.field private dotRadus:F

.field private mBarPaint1:Landroid/graphics/Paint;

.field private mBgcolor:I

.field private mBorder:F

.field mColorListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotX:F

.field private mDotY:F

.field private mHSVO:[F

.field private mHeight:F

.field private mLinePaint1:Landroid/graphics/Paint;

.field private mLinePaint2:Landroid/graphics/Paint;

.field private mSliderColor:I

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x41a00000

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBgcolor:I

    .line 48
    const/4 v2, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    .line 51
    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    iput v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mColorListeners:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 58
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 59
    .local v0, "mDpToPix":F
    mul-float v2, v3, v0

    iput v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->dotRadus:F

    .line 60
    mul-float v2, v3, v0

    iput v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    .line 62
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBarPaint1:Landroid/graphics/Paint;

    .line 64
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBarPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mLinePaint1:Landroid/graphics/Paint;

    .line 72
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mLinePaint1:Landroid/graphics/Paint;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mLinePaint2:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090062

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mSliderColor:I

    .line 75
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mLinePaint2:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mSliderColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mLinePaint2:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    return-void
.end method

.method private setupButton()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 111
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    aget v1, v1, v8

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHeight:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    const/high16 v5, 0x40000000

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    mul-float v7, v1, v2

    .line 112
    .local v7, "pos":F
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    add-float/2addr v1, v7

    iput v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 114
    new-array v4, v9, [I

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mSliderColor:I

    aput v1, v4, v6

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mSliderColor:I

    aput v2, v4, v1

    const/high16 v1, 0x66000000

    aput v1, v4, v8

    const/4 v1, 0x3

    aput v6, v4, v1

    .line 116
    .local v4, "colors3":[I
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->dotRadus:F

    new-array v5, v9, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 118
    .local v0, "g":Landroid/graphics/RadialGradient;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 119
    return-void

    .line 116
    :array_0
    .array-data 4
        0x0
        0x3e99999a
        0x3e9eb852
        0x3f800000
    .end array-data
.end method

.method private updatePaint()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    const/4 v1, 0x3

    new-array v8, v1, [F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    aget v1, v1, v2

    aput v1, v8, v2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    aget v1, v1, v3

    aput v1, v8, v3

    const/4 v1, 0x0

    aput v1, v8, v4

    .line 133
    .local v8, "hsv":[F
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .line 134
    .local v5, "color1":I
    const/high16 v1, 0x3f800000

    aput v1, v8, v4

    .line 135
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 137
    .local v6, "color2":I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHeight:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    sub-float/2addr v4, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 139
    .local v0, "sg":Landroid/graphics/Shader;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBarPaint1:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 140
    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public notifyColorListeners([F)V
    .locals 3
    .param p1, "hsv"    # [F

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;

    .line 169
    .local v1, "l":Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;
    invoke-interface {v1, p1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;->setColor([F)V

    goto :goto_0

    .line 171
    .end local v1    # "l":Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBgcolor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 146
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mWidth:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHeight:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBarPaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 147
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHeight:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mLinePaint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 148
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mLinePaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 149
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotX:F

    const/high16 v1, 0x7fc00000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 150
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->dotRadus:F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 152
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 123
    int-to-float v0, p1

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mWidth:F

    .line 124
    int-to-float v0, p2

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHeight:F

    .line 125
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mWidth:F

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotX:F

    .line 126
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->updatePaint()V

    .line 127
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->setupButton()V

    .line 128
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotX:F

    .line 85
    .local v0, "ox":F
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 87
    .local v1, "oy":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 88
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 90
    .local v3, "y":F
    iput v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 92
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 93
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    iput v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 96
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHeight:F

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 97
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHeight:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 99
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHeight:F

    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mBorder:F

    const/high16 v9, 0x40000000

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 100
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->notifyColorListeners([F)V

    .line 101
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->setupButton()V

    .line 102
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->dotRadus:F

    sub-float v4, v0, v4

    float-to-int v4, v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->dotRadus:F

    sub-float v5, v1, v5

    float-to-int v5, v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->dotRadus:F

    add-float/2addr v6, v0

    float-to-int v6, v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->dotRadus:F

    add-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->invalidate(IIII)V

    .line 104
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->dotRadus:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->dotRadus:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->dotRadus:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->dotRadus:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->invalidate(IIII)V

    .line 107
    const/4 v4, 0x1

    return v4
.end method

.method public setColor([F)V
    .locals 4
    .param p1, "hsvo"    # [F

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mHSVO:[F

    array-length v2, v2

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->mDotY:F

    .line 159
    .local v0, "oy":F
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->updatePaint()V

    .line 160
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->setupButton()V

    .line 161
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorValueView;->invalidate()V

    .line 163
    return-void
.end method
