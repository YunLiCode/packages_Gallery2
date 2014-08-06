.class public Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;
.super Landroid/view/View;
.source "ColorRectView.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;


# instance fields
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

.field private mColors:[I

.field private mCtrX:F

.field private mCtrY:F

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotRadus:F

.field private mDotX:F

.field private mDotY:F

.field private mDpToPix:F

.field private mHSVO:[F

.field private mHeight:I

.field private mRadius:F

.field private mSliderColor:I

.field private mWheelPaint1:Landroid/graphics/Paint;

.field private mWheelPaint2:Landroid/graphics/Paint;

.field private mWheelPaint3:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, 0x42c80000

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/high16 v1, 0x42a00000

    iput v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mRadius:F

    .line 40
    iput v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mCtrY:F

    .line 44
    iput v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mCtrX:F

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBgcolor:I

    .line 49
    const/high16 v1, 0x7fc00000

    iput v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotX:F

    .line 51
    const v1, -0xcc4a1b

    iput v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mSliderColor:I

    .line 52
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    .line 53
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mColors:[I

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mColorListeners:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 71
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDpToPix:F

    .line 72
    const/high16 v1, 0x41a00000

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDpToPix:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    .line 73
    const/high16 v1, 0x41200000

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDpToPix:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    .line 75
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint1:Landroid/graphics/Paint;

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint2:Landroid/graphics/Paint;

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint3:Landroid/graphics/Paint;

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mSliderColor:I

    .line 83
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint1:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint3:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data
.end method

.method private setUpColorPanel()V
    .locals 26

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    const/4 v3, 0x2

    aget v25, v2, v3

    .line 132
    .local v25, "val":F
    const/high16 v2, -0x1000000

    const v3, 0x10101

    const/high16 v4, 0x437f0000

    mul-float v4, v4, v25

    float-to-int v4, v4

    mul-int/2addr v3, v4

    or-int v24, v2, v3

    .line 133
    .local v24, "v":I
    const/4 v2, 0x2

    new-array v12, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v12, v2

    const/4 v2, 0x1

    aput v24, v12, v2

    .line 135
    .local v12, "colors":[I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 137
    .local v18, "colors2":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mColors:[I

    array-length v2, v2

    new-array v6, v2, [I

    .line 138
    .local v6, "wheelColor":[I
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v21, v0

    .line 139
    .local v21, "hsv":[F
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    array-length v2, v6

    move/from16 v0, v22

    if-ge v0, v2, :cond_0

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mColors:[I

    aget v2, v2, v22

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 141
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v21, v2

    .line 142
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v6, v22

    .line 139
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->updateDot()V

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->updateDotPaint()V

    .line 146
    new-instance v23, Landroid/graphics/SweepGradient;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mCtrX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mCtrY:F

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v6, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 147
    .local v23, "sg":Landroid/graphics/SweepGradient;
    new-instance v1, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 150
    .local v1, "lg":Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint1:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 151
    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float v11, v2, v3

    const/4 v13, 0x0

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 153
    .local v7, "rg":Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 154
    new-instance v13, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float v17, v2, v3

    const/16 v19, 0x0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 156
    .local v13, "rg2":Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint3:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 157
    return-void

    .line 135
    nop

    :array_0
    .array-data 4
        0x0
        -0x1000000
    .end array-data
.end method

.method private updateDot()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000

    .line 181
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v0, v4

    .line 182
    .local v0, "hue":D
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v2, v4

    .line 184
    .local v2, "sat":D
    iget v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    float-to-double v4, v4

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    mul-float/2addr v7, v10

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x401921fb54442d18L

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotX:F

    .line 185
    const-wide/high16 v4, 0x3ff0000000000000L

    sub-double/2addr v4, v2

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    mul-float/2addr v7, v10

    sub-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotY:F

    .line 187
    return-void
.end method

.method private updateDotPaint()V
    .locals 7

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 190
    new-array v4, v5, [I

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mSliderColor:I

    aput v1, v4, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mSliderColor:I

    aput v2, v4, v1

    const/4 v1, 0x2

    const/high16 v2, 0x66000000

    aput v2, v4, v1

    const/4 v1, 0x3

    aput v3, v4, v1

    .line 192
    .local v4, "colors3":[I
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotX:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotY:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 194
    .local v0, "g":Landroid/graphics/RadialGradient;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 196
    return-void

    .line 192
    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a
        0x3e9eb852
        0x3f800000
    .end array-data
.end method


# virtual methods
.method public addColorListener(Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mColorListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public notifyColorListeners([F)V
    .locals 3
    .param p1, "hsv"    # [F

    .prologue
    .line 213
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mColorListeners:Ljava/util/ArrayList;

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

    .line 214
    .local v1, "l":Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;
    invoke-interface {v1, p1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;->setColor([F)V

    goto :goto_0

    .line 216
    .end local v1    # "l":Lcom/android/gallery3d/filtershow/colorpicker/ColorListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBgcolor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 163
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 164
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 165
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 166
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 167
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 169
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 170
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint3:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 171
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWheelPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 173
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotX:F

    const/high16 v2, 0x7fc00000

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 175
    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotX:F

    iget v2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotY:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v2, 0x40000000

    .line 122
    iput p1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWidth:I

    .line 123
    iput p2, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHeight:I

    .line 124
    int-to-float v0, p2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mCtrY:F

    .line 125
    int-to-float v0, p1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mCtrX:F

    .line 126
    iget v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mCtrY:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mCtrX:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mRadius:F

    .line 127
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->setUpColorPanel()V

    .line 128
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x43b40000

    const/high16 v11, 0x40000000

    const/high16 v10, 0x3f800000

    .line 95
    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotX:F

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotX:F

    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotY:F

    iget v9, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->invalidate(IIII)V

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 98
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 100
    .local v4, "y":F
    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 101
    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 102
    iput v3, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotX:F

    .line 103
    iput v4, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotY:F

    .line 104
    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotY:F

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    mul-float/2addr v7, v11

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    sub-float v2, v10, v5

    .line 105
    .local v2, "sat":F
    cmpl-float v5, v2, v10

    if-lez v5, :cond_0

    .line 106
    const/high16 v2, 0x3f800000

    .line 109
    :cond_0
    const-wide v5, 0x401921fb54442d18L

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotX:F

    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mBorder:F

    mul-float/2addr v8, v11

    sub-float/2addr v7, v8

    float-to-double v7, v7

    div-double v0, v5, v7

    .line 110
    .local v0, "hue":D
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v7, v7

    add-float/2addr v7, v12

    rem-float/2addr v7, v12

    aput v7, v5, v6

    .line 111
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    aput v2, v5, v13

    .line 112
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->notifyColorListeners([F)V

    .line 113
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->updateDotPaint()V

    .line 114
    iget v5, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotX:F

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotY:F

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotX:F

    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotY:F

    iget v9, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mDotRadus:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->invalidate(IIII)V

    .line 117
    return v13
.end method

.method public setColor([F)V
    .locals 3
    .param p1, "hsvo"    # [F

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->mHSVO:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->setUpColorPanel()V

    .line 203
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->invalidate()V

    .line 205
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->updateDot()V

    .line 206
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/colorpicker/ColorRectView;->updateDotPaint()V

    .line 208
    return-void
.end method
