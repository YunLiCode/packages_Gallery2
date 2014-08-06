.class public Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.source "ImageStraighten.java"


# static fields
.field private static final gPaint:Landroid/graphics/Paint;


# instance fields
.field private mAngle:F

.field private mBaseAngle:F

.field private mEditorStraighten:Lcom/android/gallery3d/filtershow/editors/EditorStraighten;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 31
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    .line 32
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    .line 32
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 43
    return-void
.end method

.method private computeValue()V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getCurrentTouchAngle()F

    move-result v0

    .line 71
    .local v0, "angle":F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x43b40000

    rem-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 72
    const/high16 v1, -0x3dcc0000

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 73
    const/high16 v1, 0x42340000

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    .line 74
    return-void
.end method

.method private setCropToStraighten()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 105
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    .line 106
    .local v19, "o":[F
    sget-object v4, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;[F)Landroid/graphics/RectF;

    move-result-object v15

    .line 109
    .local v15, "bounds":Landroid/graphics/RectF;
    sget-object v4, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-virtual {v4, v6, v7, v9, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 110
    sget-object v4, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40400000

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    sget-object v4, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getLocalDisplayBounds()Landroid/graphics/RectF;

    move-result-object v16

    .line 114
    .local v16, "display":Landroid/graphics/RectF;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v12

    .line 115
    .local v12, "dWidth":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 117
    .local v8, "dHeight":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mMode:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    sget-object v6, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;->MOVE:Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry$MODES;

    if-ne v4, v6, :cond_1

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 121
    const/16 v18, 0x10

    .line 122
    .local v18, "n":I
    move/from16 v0, v18

    int-to-float v4, v0

    div-float v20, v12, v4

    .line 123
    .local v20, "step":F
    const/4 v5, 0x0

    .line 124
    .local v5, "p":F
    const/16 v17, 0x1

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 125
    move/from16 v0, v17

    int-to-float v4, v0

    mul-float v5, v4, v20

    .line 126
    sget-object v4, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    const/16 v6, 0x3c

    const/16 v7, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-virtual {v4, v6, v7, v9, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 127
    const/4 v6, 0x0

    sget-object v9, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v5

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    const/4 v10, 0x0

    sget-object v14, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v5

    move v13, v5

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    .end local v5    # "p":F
    .end local v17    # "i":I
    .end local v18    # "n":I
    .end local v20    # "step":F
    :cond_1
    return-void

    .line 105
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected gainedVisibility()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setCropToStraighten()V

    .line 84
    return-void
.end method

.method protected getLocalValue()I
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getLocalStraighten()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0184

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected lostVisibility()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->saveAndSetPreset()V

    .line 79
    return-void
.end method

.method public onNewValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 94
    int-to-float v0, p1

    const/high16 v1, -0x3dcc0000

    const/high16 v2, 0x42340000

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->clamp(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setLocalStraighten(F)V

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->invalidate()V

    .line 96
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->getLocalStraighten()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mBaseAngle:F

    .line 54
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->computeValue()V

    .line 65
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mAngle:F

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setLocalStraighten(F)V

    .line 66
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setCropToStraighten()V

    .line 67
    return-void
.end method

.method protected setActionUp()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 89
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->setCropToStraighten()V

    .line 90
    return-void
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/EditorStraighten;)V
    .locals 0
    .param p1, "editorStraighten"    # Lcom/android/gallery3d/filtershow/editors/EditorStraighten;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageStraighten;->mEditorStraighten:Lcom/android/gallery3d/filtershow/editors/EditorStraighten;

    .line 136
    return-void
.end method
