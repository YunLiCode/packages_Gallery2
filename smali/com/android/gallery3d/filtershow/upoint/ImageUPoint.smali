.class public Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImageUPoint.java"


# static fields
.field private static MIN_TOUCH_DIST:I


# instance fields
.field private mActiveHandle:I

.field private mEditorUPoint:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

.field private mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

.field mPointsX:[F

.field mPointsY:[F

.field mToScr:Landroid/graphics/Matrix;

.field private mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x50

    sput v0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->MIN_TOUCH_DIST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x10

    .line 42
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mActiveHandle:I

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mToScr:Landroid/graphics/Matrix;

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsX:[F

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsY:[F

    .line 43
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setShowReshapeHandles(Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x10

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mActiveHandle:I

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mToScr:Landroid/graphics/Matrix;

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsX:[F

    .line 39
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsY:[F

    .line 49
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setShowReshapeHandles(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public computCenterLocations()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 176
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getXPos()[I

    move-result-object v4

    .line 177
    .local v4, "x":[I
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getYPos()[I

    move-result-object v5

    .line 178
    .local v5, "y":[I
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getSelectedPoint()I

    move-result v3

    .line 179
    .local v3, "selected":I
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getMask()[Z

    move-result-object v2

    .line 180
    .local v2, "m":[Z
    const/4 v6, 0x2

    new-array v0, v6, [F

    .line 181
    .local v0, "c":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_2

    .line 182
    if-eq v3, v1, :cond_0

    aget-boolean v6, v2, v1

    if-nez v6, :cond_1

    .line 183
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsX:[F

    const/high16 v7, -0x40800000

    aput v7, v6, v1

    .line 181
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_1
    aget v6, v4, v1

    int-to-float v6, v6

    aput v6, v0, v8

    .line 187
    aget v6, v5, v1

    int-to-float v6, v6

    aput v6, v0, v9

    .line 188
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 190
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsX:[F

    aget v7, v0, v8

    aput v7, v6, v1

    .line 191
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsY:[F

    aget v7, v0, v9

    aput v7, v6, v1

    goto :goto_1

    .line 193
    :cond_2
    return-void
.end method

.method public drawOtherPoints(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->computCenterLocations()V

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsX:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsX:[F

    aget v1, v1, v0

    const/high16 v2, -0x40800000

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsX:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsY:[F

    aget v3, v3, v0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->paintGrayPoint(Landroid/graphics/Canvas;FF)V

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->setRepresentation(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->draw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->drawOtherPoints(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, -0x1

    const/4 v8, 0x1

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 57
    .local v2, "mask":I
    if-eqz v2, :cond_0

    if-ne v2, v8, :cond_1

    .line 58
    :cond_0
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    if-nez v2, :cond_2

    move v7, v8

    :goto_0
    invoke-virtual {v9, v7}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->setInking(Z)V

    .line 61
    :cond_1
    iget v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mActiveHandle:I

    if-ne v7, v13, :cond_9

    .line 62
    if-eqz v2, :cond_3

    .line 63
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 133
    :goto_1
    return v8

    .line 58
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ne v7, v8, :cond_8

    .line 66
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->getCloseHandle(FF)I

    move-result v7

    iput v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mActiveHandle:I

    .line 67
    iget v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mActiveHandle:I

    if-ne v7, v13, :cond_8

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 69
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 70
    .local v6, "y":F
    const v3, 0x7f7fffff

    .line 71
    .local v3, "min_d":F
    const/4 v4, -0x1

    .line 72
    .local v4, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsX:[F

    array-length v7, v7

    if-ge v1, v7, :cond_6

    .line 73
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsX:[F

    aget v7, v7, v1

    const/high16 v9, -0x40800000

    cmpl-float v7, v7, v9

    if-nez v7, :cond_5

    .line 72
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    :cond_5
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsX:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    float-to-double v9, v7

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mPointsY:[F

    aget v7, v7, v1

    sub-float v7, v6, v7

    float-to-double v11, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    .line 77
    .local v0, "d":F
    cmpl-float v7, v3, v0

    if-lez v7, :cond_4

    .line 78
    move v3, v0

    .line 79
    move v4, v1

    goto :goto_3

    .line 82
    .end local v0    # "d":F
    :cond_6
    sget v7, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->MIN_TOUCH_DIST:I

    int-to-float v7, v7

    cmpl-float v7, v3, v7

    if-lez v7, :cond_7

    .line 83
    const/4 v4, -0x1

    .line 86
    :cond_7
    if-eq v4, v13, :cond_8

    .line 87
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v7, v4}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->setSelectedPoint(I)V

    .line 88
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->setInking(Z)V

    .line 89
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->resetImageCaches(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    .line 90
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEditorUPoint:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v7, v9}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->updateSeekBar(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    .line 91
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEditorUPoint:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->commitLocalRepresentation()V

    .line 92
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->invalidate()V

    .line 96
    .end local v1    # "i":I
    .end local v3    # "min_d":F
    .end local v4    # "pos":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_8
    iget v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mActiveHandle:I

    if-ne v7, v13, :cond_a

    .line 97
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 100
    :cond_9
    packed-switch v2, :pswitch_data_0

    .line 114
    :cond_a
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 115
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 117
    .restart local v6    # "y":F
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setScrToImageMatrix(Landroid/graphics/Matrix;)V

    .line 119
    packed-switch v2, :pswitch_data_1

    .line 131
    :goto_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->invalidate()V

    .line 132
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEditorUPoint:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;->commitLocalRepresentation()V

    goto/16 :goto_1

    .line 103
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_0
    iput v13, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mActiveHandle:I

    goto :goto_4

    .line 107
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ne v7, v8, :cond_a

    .line 108
    const-string v7, "ImageUPoint"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_DOWN odd "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mActiveHandle:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " touches=1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 121
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :pswitch_2
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v7, v5, v6, v9}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->actionDown(FFLcom/android/gallery3d/filtershow/imageshow/Oval;)V

    goto :goto_5

    .line 126
    :pswitch_3
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    iget v9, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mActiveHandle:I

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v7, v9, v5, v6, v10}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->actionMove(IFFLcom/android/gallery3d/filtershow/imageshow/Oval;)V

    .line 127
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {p0, v7}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->setRepresentation(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V

    goto :goto_5

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 119
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;)V
    .locals 0
    .param p1, "editorUPoint"    # Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEditorUPoint:Lcom/android/gallery3d/filtershow/upoint/EditorUPoint;

    .line 197
    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;)V
    .locals 12
    .param p1, "pointRep"    # Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .prologue
    const v11, 0x3f4ccccd

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 137
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .line 138
    invoke-virtual {p0, v9}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v5

    .line 140
    .local v5, "toImg":Landroid/graphics/Matrix;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 142
    const/4 v6, 0x2

    new-array v0, v6, [F

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getCenterX()F

    move-result v6

    aput v6, v0, v9

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getCenterY()F

    move-result v6

    aput v6, v0, v10

    .line 144
    .local v0, "c":[F
    aget v6, v0, v9

    const/high16 v7, -0x40800000

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 145
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v1, v6

    .line 146
    .local v1, "cx":F
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .line 147
    .local v2, "cy":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const v7, 0x3ecccccd

    mul-float v3, v6, v7

    .line 148
    .local v3, "rx":F
    move v4, v3

    .line 149
    .local v4, "ry":F
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v6, v1, v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->setCenter(FF)V

    .line 150
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v6, v3, v4}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->setRadius(FF)V

    .line 151
    aput v1, v0, v9

    .line 152
    aput v2, v0, v10

    .line 153
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 154
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->getWidth()I

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    aget v7, v0, v9

    aget v8, v0, v10

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setCenter(FF)V

    .line 156
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    aget v7, v0, v9

    mul-float/2addr v7, v11

    aget v8, v0, v10

    mul-float/2addr v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setRadius(FF)V

    .line 164
    .end local v1    # "cx":F
    .end local v2    # "cy":F
    .end local v3    # "rx":F
    .end local v4    # "ry":F
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mToScr:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 160
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    aget v7, v0, v9

    aget v8, v0, v10

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setCenter(FF)V

    .line 161
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mEllipse:Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mToScr:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getRadiusX()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mToScr:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/upoint/ImageUPoint;->mUPointRep:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getRadiusY()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->setRadius(FF)V

    goto :goto_0
.end method
