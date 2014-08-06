.class public Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImageShowCenterFocus.java"


# static fields
.field private static MIN_TOUCH_DIST:I


# instance fields
.field private mCenter:[F

.field private mCenterDotSize:I

.field private mCenterFocusRep:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

.field private mEditorCenterFocus:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

.field private mHotSpotHit:Z

.field private mSliderColor:I

.field mToScr:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x50

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->MIN_TOUCH_DIST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 42
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterDotSize:I

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mToScr:Landroid/graphics/Matrix;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mHotSpotHit:Z

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mSliderColor:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterDotSize:I

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mToScr:Landroid/graphics/Matrix;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mHotSpotHit:Z

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mSliderColor:I

    .line 56
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenter:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenter:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->paintPoint(Landroid/graphics/Canvas;FF)V

    .line 147
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 62
    .local v1, "mask":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 63
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 65
    .local v5, "y":F
    packed-switch v1, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->invalidate()V

    .line 94
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mEditorCenterFocus:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;->commitLocalRepresentation()V

    .line 95
    return v10

    .line 67
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mHotSpotHit:Z

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 69
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenter:[F

    aget v6, v6, v7

    sub-float v6, v4, v6

    float-to-double v6, v6

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenter:[F

    aget v8, v8, v10

    sub-float v8, v5, v8

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 71
    .local v0, "d":F
    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->MIN_TOUCH_DIST:I

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_0

    .line 72
    iput-boolean v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mHotSpotHit:Z

    goto :goto_0

    .line 79
    .end local v0    # "d":F
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mHotSpotHit:Z

    if-eqz v6, :cond_0

    .line 80
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v3

    .line 81
    .local v3, "toImg":Landroid/graphics/Matrix;
    const/4 v6, 0x2

    new-array v2, v6, [F

    aput v4, v2, v7

    aput v5, v2, v10

    .line 83
    .local v2, "point":[F
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 84
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterFocusRep:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    aget v7, v2, v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setXCenter(F)V

    .line 85
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterFocusRep:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    aget v7, v2, v10

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setYCenter(F)V

    .line 86
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenter:[F

    .line 87
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 88
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mToScr:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenter:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public paintPoint(Landroid/graphics/Canvas;FF)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 126
    const/high16 v1, 0x7fc00000

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 132
    .local v7, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    const v1, -0xffff01

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    new-array v4, v5, [I

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mSliderColor:I

    aput v1, v4, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mSliderColor:I

    aput v2, v4, v1

    const/4 v1, 0x2

    const/high16 v2, 0x66000000

    aput v2, v4, v1

    const/4 v1, 0x3

    aput v3, v4, v1

    .line 136
    .local v4, "colors3":[I
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterDotSize:I

    int-to-float v3, v1

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 138
    .local v0, "g":Landroid/graphics/RadialGradient;
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 139
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterDotSize:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, p3, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 136
    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a
        0x3e9eb852
        0x3f800000
    .end array-data
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;)V
    .locals 0
    .param p1, "editorCenterFocus"    # Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mEditorCenterFocus:Lcom/android/gallery3d/filtershow/editors/EditorCenterFocus;

    .line 123
    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;)V
    .locals 5
    .param p1, "centerFocusRep"    # Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterFocusRep:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v1

    .line 102
    .local v1, "toImg":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 104
    const/4 v2, 0x2

    new-array v0, v2, [F

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterFocusRep:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getXCenter()F

    move-result v2

    aput v2, v0, v3

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterFocusRep:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getYCenter()F

    move-result v2

    aput v2, v0, v4

    .line 106
    .local v0, "c":[F
    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v0, v3

    .line 108
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v0, v4

    .line 110
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterFocusRep:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    aget v3, v0, v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setXCenter(F)V

    .line 111
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterFocusRep:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    aget v3, v0, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setYCenter(F)V

    .line 112
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenter:[F

    .line 113
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mToScr:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenter:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 119
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 116
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterFocusRep:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    aget v3, v0, v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setXCenter(F)V

    .line 117
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShowCenterFocus;->mCenterFocusRep:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    aget v3, v0, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setYCenter(F)V

    goto :goto_0
.end method
