.class public Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;
.super Landroid/view/View;
.source "ColorOpacityView.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;


# instance fields
.field private mBarPaint1:Landroid/graphics/Paint;

.field private mBgcolor:I

.field private mBorder:F

.field private mCheckPaint:Landroid/graphics/Paint;

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

.field private mDotRadius:F

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
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v11, 0x10

    const/high16 v9, 0x41a00000

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBgcolor:I

    .line 53
    const/4 v8, 0x4

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    .line 55
    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iput v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    .line 56
    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iput v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    .line 182
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mColorListeners:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 63
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    iget v4, v5, Landroid/util/DisplayMetrics;->density:F

    .line 64
    .local v4, "mDpToPix":F
    mul-float v8, v9, v4

    iput v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    .line 65
    mul-float v8, v9, v4

    iput v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    .line 66
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBarPaint1:Landroid/graphics/Paint;

    .line 68
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090061

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090062

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mSliderColor:I

    .line 74
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBarPaint1:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mLinePaint1:Landroid/graphics/Paint;

    .line 77
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mLinePaint1:Landroid/graphics/Paint;

    const v9, -0x777778

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mLinePaint2:Landroid/graphics/Paint;

    .line 79
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mLinePaint2:Landroid/graphics/Paint;

    iget v9, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mSliderColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mLinePaint2:Landroid/graphics/Paint;

    const/high16 v9, 0x40800000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    const/16 v8, 0x100

    new-array v2, v8, [I

    .line 83
    .local v2, "colors":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_1

    .line 84
    div-int/lit16 v7, v3, 0x80

    .line 85
    .local v7, "y":I
    div-int/lit8 v8, v3, 0x8

    rem-int/lit8 v6, v8, 0x2

    .line 86
    .local v6, "x":I
    if-ne v6, v7, :cond_0

    const v8, -0x555556

    :goto_1
    aput v8, v2, v3

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const v8, -0xbbbbbc

    goto :goto_1

    .line 88
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v11, v11, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 90
    .local v1, "bs":Landroid/graphics/BitmapShader;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mCheckPaint:Landroid/graphics/Paint;

    .line 91
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mCheckPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 92
    return-void
.end method

.method private setupButton()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x0

    .line 128
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    aget v1, v1, v8

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    const/high16 v5, 0x40000000

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    mul-float v7, v1, v2

    .line 129
    .local v7, "pos":F
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    add-float/2addr v1, v7

    iput v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    .line 131
    new-array v4, v9, [I

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mSliderColor:I

    aput v1, v4, v6

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mSliderColor:I

    aput v2, v4, v1

    const/4 v1, 0x2

    const/high16 v2, 0x66000000

    aput v2, v4, v1

    aput v6, v4, v8

    .line 133
    .local v4, "colors3":[I
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    new-array v5, v9, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 135
    .local v0, "g":Landroid/graphics/RadialGradient;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 136
    return-void

    .line 133
    :array_0
    .array-data 4
        0x0
        0x3e99999a
        0x3e9eb852
        0x3f800000
    .end array-data
.end method

.method private updatePaint()V
    .locals 8

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 150
    .local v6, "color2":I
    const v1, 0xffffff

    and-int v5, v6, v1

    .line 152
    .local v5, "color1":I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 154
    .local v0, "sg":Landroid/graphics/Shader;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBarPaint1:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 156
    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public notifyColorListeners([F)V
    .locals 3
    .param p1, "hsvo"    # [F

    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mColorListeners:Ljava/util/ArrayList;

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

    .line 186
    .local v1, "l":Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;
    invoke-interface {v1, p1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;->setColor([F)V

    goto :goto_0

    .line 188
    .end local v1    # "l":Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBgcolor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 162
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mHeight:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mCheckPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 163
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mHeight:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBarPaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 164
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mLinePaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 165
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mLinePaint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 166
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    const/high16 v1, 0x7fc00000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 167
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
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
    .line 140
    int-to-float v0, p1

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    .line 141
    int-to-float v0, p2

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mHeight:F

    .line 142
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mHeight:F

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    .line 143
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->updatePaint()V

    .line 144
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->setupButton()V

    .line 145
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    .line 101
    .local v0, "ox":F
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    .line 103
    .local v1, "oy":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 104
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 106
    .local v3, "y":F
    iput v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    .line 108
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 109
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    iput v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    .line 112
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 113
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    .line 115
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mWidth:F

    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mBorder:F

    const/high16 v9, 0x40000000

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 116
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->notifyColorListeners([F)V

    .line 117
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->setupButton()V

    .line 118
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    sub-float v4, v0, v4

    float-to-int v4, v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    sub-float v5, v1, v5

    float-to-int v5, v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    add-float/2addr v6, v0

    float-to-int v6, v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    add-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->invalidate(IIII)V

    .line 120
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotX:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotRadius:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->invalidate(IIII)V

    .line 124
    const/4 v4, 0x1

    return v4
.end method

.method public setColor([F)V
    .locals 4
    .param p1, "hsv"    # [F

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mHSVO:[F

    array-length v2, v2

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->mDotY:F

    .line 177
    .local v0, "oy":F
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->updatePaint()V

    .line 178
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->setupButton()V

    .line 179
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->invalidate()V

    .line 180
    return-void
.end method
