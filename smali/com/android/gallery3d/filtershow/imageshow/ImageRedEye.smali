.class public Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;
.super Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;
.source "ImageRedEye.java"


# instance fields
.field private mCurrentRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    .line 37
    return-void
.end method


# virtual methods
.method protected drawPoint(Lcom/android/gallery3d/filtershow/filters/FilterPoint;Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 16
    .param p1, "point"    # Lcom/android/gallery3d/filtershow/filters/FilterPoint;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "originalToScreen"    # Landroid/graphics/Matrix;
    .param p4, "originalRotateToScreen"    # Landroid/graphics/Matrix;
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 111
    move-object/from16 v8, p1

    check-cast v8, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;

    .line 112
    .local v8, "candidate":Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;
    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/filters/RedEyeCandidate;->getRect()Landroid/graphics/RectF;

    move-result-object v15

    .line 113
    .local v15, "rect":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 114
    .local v10, "drawRect":Landroid/graphics/RectF;
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v15}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 115
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    .line 116
    .local v14, "fullRect":Landroid/graphics/RectF;
    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 117
    const v2, -0xffff01

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 119
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v6, v14, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    iget v3, v14, Landroid/graphics/RectF;->left:F

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, v14, Landroid/graphics/RectF;->right:F

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object/from16 v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 123
    const v2, -0xff0100

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v11

    .line 125
    .local v11, "dw":F
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v9

    .line 126
    .local v9, "dh":F
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/high16 v3, 0x40000000

    div-float v3, v11, v3

    sub-float v12, v2, v3

    .line 127
    .local v12, "dx":F
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x40000000

    div-float v3, v9, v3

    sub-float v13, v2, v3

    .line 128
    .local v13, "dy":F
    add-float v2, v12, v11

    add-float v3, v13, v9

    invoke-virtual {v10, v12, v13, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 129
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 130
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v6, v10, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    iget v3, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object/from16 v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mTouchPadding:F

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, -0x10000

    .line 96
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 98
    .local v1, "paint":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    const/high16 v2, 0x40000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 104
    .local v0, "drawRect":Landroid/graphics/RectF;
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 106
    .end local v0    # "drawRect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-le v7, v9, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v9

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->didFinishScalingOperation()Z

    move-result v7

    if-nez v7, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 59
    .local v0, "ex":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 62
    .local v1, "ey":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    .line 63
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    .line 64
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    sget v8, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mTouchPadding:F

    sub-float v8, v0, v8

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 65
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    sget v8, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mTouchPadding:F

    sub-float v8, v1, v8

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 68
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    sget v8, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mTouchPadding:F

    add-float/2addr v8, v0

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 69
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    sget v8, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mTouchPadding:F

    add-float/2addr v8, v1

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 71
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v9, :cond_5

    .line 72
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    if-eqz v7, :cond_4

    .line 74
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v3

    .line 75
    .local v3, "originalNoRotateToScreen":Landroid/graphics/Matrix;
    invoke-virtual {p0, v9}, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v4

    .line 76
    .local v4, "originalToScreen":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 77
    .local v2, "invert":Landroid/graphics/Matrix;
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 78
    new-instance v5, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {v5, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 79
    .local v5, "r":Landroid/graphics/RectF;
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 80
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 81
    .local v6, "r2":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 82
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 83
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 84
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->mRedEyeRep:Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    invoke-virtual {v7, v5, v6}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->addRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 85
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 87
    .end local v2    # "invert":Landroid/graphics/Matrix;
    .end local v3    # "originalNoRotateToScreen":Landroid/graphics/Matrix;
    .end local v4    # "originalToScreen":Landroid/graphics/Matrix;
    .end local v5    # "r":Landroid/graphics/RectF;
    .end local v6    # "r2":Landroid/graphics/RectF;
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->mCurrentRect:Landroid/graphics/RectF;

    .line 89
    :cond_5
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->mEditorRedEye:Lcom/android/gallery3d/filtershow/editors/EditorRedEye;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/editors/EditorRedEye;->commitLocalRepresentation()V

    .line 90
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->invalidate()V

    goto/16 :goto_0
.end method

.method public resetParameter()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->resetParameter()V

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRedEye;->invalidate()V

    .line 43
    return-void
.end method
