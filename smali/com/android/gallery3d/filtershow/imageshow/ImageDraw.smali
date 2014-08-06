.class public Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImageDraw.java"


# instance fields
.field private mCurrentColor:I

.field private mCurrentSize:F

.field private mEditorDraw:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

.field private mFRep:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

.field mRotateToScreen:Landroid/graphics/Matrix;

.field mTmpPoint:[F

.field mToOrig:Landroid/graphics/Matrix;

.field private mType:B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 19
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mCurrentColor:I

    .line 21
    const/high16 v0, 0x42200000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mCurrentSize:F

    .line 22
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mType:B

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    .line 136
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mRotateToScreen:Landroid/graphics/Matrix;

    .line 34
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->resetParameter()V

    .line 35
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalDisabled(Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mCurrentColor:I

    .line 21
    const/high16 v0, 0x42200000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mCurrentSize:F

    .line 22
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mType:B

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    .line 136
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mRotateToScreen:Landroid/graphics/Matrix;

    .line 28
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->resetParameter()V

    .line 29
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->setOriginalDisabled(Z)V

    .line 30
    return-void
.end method

.method private calcScreenMapping()V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mRotateToScreen:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 141
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mCurrentSize:F

    float-to-int v0, v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->calcScreenMapping()V

    .line 148
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v11, :cond_1

    .line 87
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 88
    .local v11, "ret":Z
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mFRep:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->getCurrentDrawing()Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mFRep:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->clearCurrentSection()V

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mEditorDraw:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->commitLocalRepresentation()V

    .line 133
    .end local v11    # "ret":Z
    :cond_0
    :goto_0
    return v11

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mFRep:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->getCurrentDrawing()Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;

    move-result-object v0

    if-nez v0, :cond_2

    .line 96
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;

    .line 102
    .local v6, "filter":Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 103
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->calcScreenMapping()V

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v12

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v11

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mFRep:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    iget-byte v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mType:B

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mCurrentColor:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mCurrentSize:F

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v4, v4, v12

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v5, v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->startNewSection(BIFFF)V

    .line 110
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 113
    .local v8, "historySize":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 114
    .local v10, "pointerCount":I
    const/4 v7, 0x0

    .local v7, "h":I
    :goto_1
    if-ge v7, v8, :cond_4

    .line 115
    const/4 v9, 0x0

    .line 117
    .local v9, "p":I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1, v9, v7}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v1

    aput v1, v0, v12

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1, v9, v7}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v1

    aput v1, v0, v11

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mFRep:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v1, v1, v12

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v2, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->addPoint(FF)V

    .line 114
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 125
    .end local v7    # "h":I
    .end local v8    # "historySize":I
    .end local v9    # "p":I
    .end local v10    # "pointerCount":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v11, :cond_5

    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v12

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v11

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mFRep:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v1, v1, v12

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mTmpPoint:[F

    aget v2, v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->endSection(FF)V

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mEditorDraw:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/EditorDraw;->commitLocalRepresentation()V

    .line 132
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->invalidate()V

    goto/16 :goto_0
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mFRep:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mFRep:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;->clear()V

    .line 55
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mCurrentColor:I

    .line 59
    return-void
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/EditorDraw;)V
    .locals 0
    .param p1, "editorDraw"    # Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mEditorDraw:Lcom/android/gallery3d/filtershow/editors/EditorDraw;

    .line 40
    return-void
.end method

.method public setFilterDrawRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;)V
    .locals 0
    .param p1, "fr"    # Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mFRep:Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation;

    .line 43
    return-void
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 62
    int-to-float v0, p1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mCurrentSize:F

    .line 63
    return-void
.end method

.method public setStyle(B)V
    .locals 1
    .param p1, "style"    # B

    .prologue
    .line 66
    rem-int/lit8 v0, p1, 0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->mType:B

    .line 67
    return-void
.end method

.method public updateImage()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    .line 80
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageDraw;->invalidate()V

    .line 81
    return-void
.end method
