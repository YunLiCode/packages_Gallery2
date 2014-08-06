.class public Lcom/android/gallery3d/filtershow/ui/ImageCurves;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImageCurves.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;
    }
.end annotation


# instance fields
.field blueHistogram:[I

.field gHistoPath:Landroid/graphics/Path;

.field gPaint:Landroid/graphics/Paint;

.field gPathSpline:Landroid/graphics/Path;

.field greenHistogram:[I

.field private mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

.field private mCurrentCurveIndex:I

.field private mCurrentPick:I

.field private mDidAddPoint:Z

.field private mDidDelete:Z

.field mDoingTouchMove:Z

.field private mEditorCurves:Lcom/android/gallery3d/filtershow/editors/EditorCurves;

.field private mFilterCurvesRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

.field mIdStrLut:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field redHistogram:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPathSpline:Landroid/graphics/Path;

    .line 56
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    .line 57
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    .line 59
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentPick:I

    .line 61
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 62
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->redHistogram:[I

    .line 63
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->greenHistogram:[I

    .line 64
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->blueHistogram:[I

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    .line 67
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    .line 73
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->setLayerType(ILandroid/graphics/Paint;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPathSpline:Landroid/graphics/Path;

    .line 56
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    .line 57
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    .line 59
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentPick:I

    .line 61
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 62
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->redHistogram:[I

    .line 63
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->greenHistogram:[I

    .line 64
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->blueHistogram:[I

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    .line 67
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    .line 79
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->setLayerType(ILandroid/graphics/Paint;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/ui/ImageCurves;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->showPopupMenu(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getFilterName()Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getFilter(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "histogram"    # [I
    .param p3, "color"    # I
    .param p4, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 376
    const/4 v10, 0x0

    .line 377
    .local v10, "max":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_1

    .line 378
    aget v19, p2, v7

    move/from16 v0, v19

    if-le v0, v10, :cond_0

    .line 379
    aget v10, p2, v7

    .line 377
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v19

    invoke-static {}, Lcom/android/gallery3d/filtershow/ui/Spline;->curveHandleSize()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v15, v0

    .line 383
    .local v15, "w":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/ui/Spline;->curveHandleSize()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    sub-float v6, v19, v20

    .line 384
    .local v6, "h":F
    invoke-static {}, Lcom/android/gallery3d/filtershow/ui/Spline;->curveHandleSize()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v4, v19, v20

    .line 385
    .local v4, "dx":F
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v17, v15, v19

    .line 386
    .local v17, "wl":F
    const v19, 0x3e99999a

    mul-float v19, v19, v6

    int-to-float v0, v10

    move/from16 v20, v0

    div-float v16, v19, v20

    .line 387
    .local v16, "wh":F
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 388
    .local v11, "paint":Landroid/graphics/Paint;
    const/16 v19, 0x64

    const/16 v20, 0xff

    const/16 v21, 0xff

    const/16 v22, 0xff

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 389
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 391
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 392
    .local v12, "paint2":Landroid/graphics/Paint;
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    const/high16 v19, 0x40c00000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 394
    new-instance v19, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 397
    const/4 v5, 0x0

    .line 398
    .local v5, "firstPointEncountered":Z
    const/4 v13, 0x0

    .line 399
    .local v13, "prev":F
    const/4 v9, 0x0

    .line 400
    .local v9, "last":F
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_4

    .line 401
    int-to-float v0, v7

    move/from16 v19, v0

    mul-float v19, v19, v17

    add-float v18, v19, v4

    .line 402
    .local v18, "x":F
    aget v19, p2, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v8, v19, v16

    .line 403
    .local v8, "l":F
    const/16 v19, 0x0

    cmpl-float v19, v8, v19

    if-eqz v19, :cond_3

    .line 404
    add-float v19, v8, v13

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    sub-float v14, v6, v19

    .line 405
    .local v14, "v":F
    if-nez v5, :cond_2

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 407
    const/4 v5, 0x1

    .line 409
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 410
    move v13, v8

    .line 411
    move/from16 v9, v18

    .line 400
    .end local v14    # "v":F
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 414
    .end local v8    # "l":F
    .end local v18    # "x":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->close()V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 418
    const/high16 v19, 0x40000000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 419
    sget-object v19, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 420
    const/16 v19, 0xff

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    const/16 v22, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gHistoPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 422
    return-void
.end method

.method private getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const-string v0, "Curves"

    return-object v0
.end method

.method private getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mFilterCurvesRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v0

    return-object v0
.end method

.method private pickControlPoint(FF)I
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v10, 0x0

    .line 229
    const/4 v5, 0x0

    .line 230
    .local v5, "pick":I
    iget v9, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, v9}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v8

    .line 231
    .local v8, "spline":Lcom/android/gallery3d/filtershow/ui/Spline;
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v6, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    .line 232
    .local v6, "px":F
    invoke-virtual {v8, v10}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v7, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    .line 233
    .local v7, "py":F
    sub-float v9, v6, p1

    sub-float v10, v6, p1

    mul-float/2addr v9, v10

    sub-float v10, v7, p2

    sub-float v11, v7, p2

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 234
    .local v2, "delta":D
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/ui/Spline;->getNbPoints()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 235
    invoke-virtual {v8, v4}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v6, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->x:F

    .line 236
    invoke-virtual {v8, v4}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v9

    iget v7, v9, Lcom/android/gallery3d/filtershow/ui/ControlPoint;->y:F

    .line 237
    sub-float v9, v6, p1

    sub-float v10, v6, p1

    mul-float/2addr v9, v10

    sub-float v10, v7, p2

    sub-float v11, v7, p2

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 239
    .local v0, "currentDelta":D
    cmpg-double v9, v0, v2

    if-gez v9, :cond_0

    .line 240
    move-wide v2, v0

    .line 241
    move v5, v4

    .line 234
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "currentDelta":D
    :cond_1
    iget-boolean v9, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v2

    const-wide/high16 v11, 0x4059000000000000L

    cmpl-double v9, v9, v11

    if-lez v9, :cond_2

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/ui/Spline;->getNbPoints()I

    move-result v9

    const/16 v10, 0xa

    if-ge v9, v10, :cond_2

    .line 247
    const/4 v5, -0x1

    .line 250
    .end local v5    # "pick":I
    :cond_2
    return v5
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    .line 94
    const v2, 0x7f0a00f4

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    .local v0, "button":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    .line 101
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    const v3, 0x7f0a01d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b018d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    const v3, 0x7f0a01d3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b018e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    const v3, 0x7f0a01d4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b018f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mIdStrLut:Ljava/util/HashMap;

    const v3, 0x7f0a01d5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0190

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_1
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 111
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f120009

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    new-instance v2, Lcom/android/gallery3d/filtershow/ui/ImageCurves$1;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves$1;-><init>(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 120
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/editors/Editor;->hackFixStrings(Landroid/view/Menu;)V

    .line 121
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected enableComparison()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 183
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 184
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mFilterCurvesRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 191
    new-instance v1, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;-><init>(Lcom/android/gallery3d/filtershow/ui/ImageCurves;)V

    new-array v2, v9, [Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/ui/ImageCurves$ComputeHistogramTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-ne v1, v9, :cond_4

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->redHistogram:[I

    const/high16 v2, -0x10000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 202
    :cond_4
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 203
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->greenHistogram:[I

    const v2, -0xff0100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 205
    :cond_6
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 206
    :cond_7
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->blueHistogram:[I

    const v2, -0xffff01

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->drawHistogram(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    .line 209
    :cond_8
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-nez v1, :cond_a

    .line 210
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v8, v1, :cond_a

    .line 211
    invoke-direct {p0, v8}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v0

    .line 212
    .local v0, "spline":Lcom/android/gallery3d/filtershow/ui/Spline;
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    if-eq v8, v1, :cond_9

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v1

    if-nez v1, :cond_9

    .line 215
    invoke-static {v8}, Lcom/android/gallery3d/filtershow/ui/Spline;->colorForCurve(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v4

    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/ui/Spline;->draw(Landroid/graphics/Canvas;IIIZZ)V

    .line 210
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 221
    .end local v0    # "spline":Lcom/android/gallery3d/filtershow/ui/Spline;
    .end local v8    # "i":I
    :cond_a
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/ui/Spline;->colorForCurve(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v5

    iget-boolean v7, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    move-object v2, p1

    move v6, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/gallery3d/filtershow/ui/Spline;->draw(Landroid/graphics/Canvas;IIIZZ)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->drawToast(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x40000000

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 259
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eq v5, v8, :cond_1

    .line 330
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    .line 263
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->didFinishScalingOperation()Z

    move-result v5

    if-nez v5, :cond_0

    .line 267
    invoke-static {}, Lcom/android/gallery3d/filtershow/ui/Spline;->curveHandleSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v0, v5

    .line 268
    .local v0, "margin":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 269
    .local v2, "posX":F
    cmpg-float v5, v2, v0

    if-gez v5, :cond_2

    .line 270
    move v2, v0

    .line 272
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 273
    .local v3, "posY":F
    cmpg-float v5, v3, v0

    if-gez v5, :cond_3

    .line 274
    move v3, v0

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_4

    .line 277
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v2, v5, v0

    .line 279
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    .line 280
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v3, v5, v0

    .line 282
    :cond_5
    sub-float v5, v2, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v10, v0

    sub-float/2addr v6, v7

    div-float v2, v5, v6

    .line 283
    sub-float v5, v3, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v10, v0

    sub-float/2addr v6, v7

    div-float v3, v5, v6

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 286
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 287
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentPick:I

    .line 288
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->updateCachedImage()V

    .line 289
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 290
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    if-eqz v5, :cond_6

    .line 291
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    .line 293
    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    .end local v0    # "margin":F
    .end local v2    # "posX":F
    .end local v3    # "posY":F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 297
    .restart local v0    # "margin":F
    .restart local v2    # "posX":F
    .restart local v3    # "posY":F
    :cond_7
    :try_start_2
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z

    if-nez v5, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->curves()Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v11, :cond_0

    .line 306
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDoingTouchMove:Z

    .line 307
    iget v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    invoke-direct {p0, v5}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v4

    .line 308
    .local v4, "spline":Lcom/android/gallery3d/filtershow/ui/Spline;
    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentPick:I

    .line 309
    .local v1, "pick":I
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    if-nez v5, :cond_8

    .line 310
    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->pickControlPoint(FF)I

    move-result v1

    .line 311
    if-ne v1, v9, :cond_a

    .line 312
    new-instance v5, Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    invoke-direct {v5, v2, v3}, Lcom/android/gallery3d/filtershow/ui/ControlPoint;-><init>(FF)V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    .line 313
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(Lcom/android/gallery3d/filtershow/ui/ControlPoint;)I

    move-result v1

    .line 314
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidAddPoint:Z

    .line 318
    :goto_1
    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentPick:I

    .line 321
    :cond_8
    invoke-virtual {v4, v2, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->isPointContained(FI)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 322
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/Spline;->movePoint(IFF)V

    .line 327
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->updateCachedImage()V

    .line 328
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->invalidate()V

    goto/16 :goto_0

    .line 316
    :cond_a
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->getPoint(I)Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentControlPoint:Lcom/android/gallery3d/filtershow/ui/ControlPoint;

    goto :goto_1

    .line 323
    :cond_b
    if-eq v1, v9, :cond_9

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/ui/Spline;->getNbPoints()I

    move-result v5

    if-le v5, v11, :cond_9

    .line 324
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->deletePoint(I)V

    .line 325
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mDidDelete:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "accessoryViewList"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0a00f4

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 128
    .local v1, "view":Landroid/widget/Button;
    const v2, 0x7f0b018d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    new-instance v2, Lcom/android/gallery3d/filtershow/ui/ImageCurves$2;

    invoke-direct {v2, p0, p1}, Lcom/android/gallery3d/filtershow/ui/ImageCurves$2;-><init>(Lcom/android/gallery3d/filtershow/ui/ImageCurves;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public resetCurve()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mFilterCurvesRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mFilterCurvesRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->reset()V

    .line 177
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->updateCachedImage()V

    .line 179
    :cond_0
    return-void
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->resetParameter()V

    .line 169
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetCurve()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mLastPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 171
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->invalidate()V

    .line 172
    return-void
.end method

.method public setChannel(I)V
    .locals 1
    .param p1, "itemId"    # I

    .prologue
    .line 425
    packed-switch p1, :pswitch_data_0

    .line 443
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mEditorCurves:Lcom/android/gallery3d/filtershow/editors/EditorCurves;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/EditorCurves;->commitLocalRepresentation()V

    .line 444
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->invalidate()V

    .line 445
    return-void

    .line 427
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 431
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 435
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 439
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mCurrentCurveIndex:I

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x7f0a01d2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/EditorCurves;)V
    .locals 0
    .param p1, "editorCurves"    # Lcom/android/gallery3d/filtershow/editors/EditorCurves;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mEditorCurves:Lcom/android/gallery3d/filtershow/editors/EditorCurves;

    .line 449
    return-void
.end method

.method public setFilterDrawRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;)V
    .locals 0
    .param p1, "drawRep"    # Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mFilterCurvesRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    .line 453
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized updateCachedImage()V
    .locals 1

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mEditorCurves:Lcom/android/gallery3d/filtershow/editors/EditorCurves;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->mEditorCurves:Lcom/android/gallery3d/filtershow/editors/EditorCurves;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/EditorCurves;->commitLocalRepresentation()V

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/ImageCurves;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_1
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
