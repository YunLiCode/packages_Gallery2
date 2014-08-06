.class public Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;
.super Ljava/lang/Object;
.source "EclipseControl.java"


# static fields
.field private static MIN_TOUCH_DIST:I


# instance fields
.field private handlex:[F

.field private handley:[F

.field private mCenterDotSize:I

.field private mCenterX:F

.field private mCenterY:F

.field private mDownCenterX:F

.field private mDownCenterY:F

.field private mDownRadiusX:F

.field private mDownRadiusY:F

.field private mDownX:F

.field private mDownY:F

.field private mRadiusX:F

.field private mRadiusY:F

.field private mScrToImg:Landroid/graphics/Matrix;

.field private mShowReshapeHandles:Z

.field private mSliderColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x50

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->MIN_TOUCH_DIST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x9

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/high16 v0, 0x7fc00000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterX:F

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterY:F

    .line 33
    const/high16 v0, 0x43480000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mRadiusX:F

    .line 34
    const/high16 v0, 0x43960000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mRadiusY:F

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handlex:[F

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handley:[F

    .line 40
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterDotSize:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mShowReshapeHandles:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mSliderColor:I

    .line 62
    return-void
.end method


# virtual methods
.method public actionDown(FFLcom/android/gallery3d/filtershow/imageshow/Oval;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "oval"    # Lcom/android/gallery3d/filtershow/imageshow/Oval;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    const/4 v1, 0x2

    new-array v0, v1, [F

    aput p1, v0, v2

    aput p2, v0, v3

    .line 106
    .local v0, "point":[F
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mScrToImg:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 107
    aget v1, v0, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownX:F

    .line 108
    aget v1, v0, v3

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownY:F

    .line 109
    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getCenterX()F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownCenterX:F

    .line 110
    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getCenterY()F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownCenterY:F

    .line 111
    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getRadiusX()F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownRadiusX:F

    .line 112
    invoke-interface {p3}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getRadiusY()F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownRadiusY:F

    .line 113
    return-void
.end method

.method public actionMove(IFFLcom/android/gallery3d/filtershow/imageshow/Oval;)V
    .locals 24
    .param p1, "handle"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "oval"    # Lcom/android/gallery3d/filtershow/imageshow/Oval;

    .prologue
    .line 116
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v12, v0, [F

    const/16 v21, 0x0

    aput p2, v12, v21

    const/16 v21, 0x1

    aput p3, v12, v21

    .line 118
    .local v12, "point":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mScrToImg:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 119
    const/16 v21, 0x0

    aget p2, v12, v21

    .line 120
    const/16 v21, 0x1

    aget p3, v12, v21

    .line 123
    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v12, v21

    .line 124
    const/16 v21, 0x1

    const/high16 v22, 0x3f800000

    aput v22, v12, v21

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mScrToImg:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 126
    const/16 v21, 0x0

    aget v21, v12, v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_0

    const/16 v20, 0x1

    .line 128
    .local v20, "swapxy":Z
    :goto_0
    const/16 v18, 0x1

    .line 129
    .local v18, "sign":I
    packed-switch p1, :pswitch_data_0

    .line 177
    :goto_1
    return-void

    .line 126
    .end local v18    # "sign":I
    .end local v20    # "swapxy":Z
    :cond_0
    const/16 v20, 0x0

    goto :goto_0

    .line 131
    .restart local v18    # "sign":I
    .restart local v20    # "swapxy":Z
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownCenterX:F

    move/from16 v22, v0

    sub-float v5, v21, v22

    .line 132
    .local v5, "ctrdx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownCenterY:F

    move/from16 v22, v0

    sub-float v6, v21, v22

    .line 133
    .local v6, "ctrdy":F
    sub-float v21, p2, v5

    sub-float v22, p3, v6

    move-object/from16 v0, p4

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->setCenter(FF)V

    goto :goto_1

    .line 137
    .end local v5    # "ctrdx":F
    .end local v6    # "ctrdy":F
    :pswitch_1
    const/16 v18, -0x1

    .line 139
    :pswitch_2
    if-eqz v20, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownRadiusY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownCenterY:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v14, v21, v22

    .line 141
    .local v14, "raddx":F
    invoke-interface/range {p4 .. p4}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getCenterY()F

    move-result v21

    sub-float v21, p2, v21

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v14

    add-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->setRadiusY(F)V

    goto :goto_1

    .line 143
    .end local v14    # "raddx":F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownRadiusY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownCenterY:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v15, v21, v22

    .line 144
    .local v15, "raddy":F
    invoke-interface/range {p4 .. p4}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getCenterY()F

    move-result v21

    sub-float v21, p3, v21

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v15

    add-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->setRadiusY(F)V

    goto/16 :goto_1

    .line 148
    .end local v15    # "raddy":F
    :pswitch_3
    const/16 v18, -0x1

    .line 150
    :pswitch_4
    if-eqz v20, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownRadiusX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownCenterX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v15, v21, v22

    .line 152
    .restart local v15    # "raddy":F
    invoke-interface/range {p4 .. p4}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getCenterX()F

    move-result v21

    sub-float v21, p3, v21

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v15

    add-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->setRadiusX(F)V

    goto/16 :goto_1

    .line 154
    .end local v15    # "raddy":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownRadiusX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownCenterX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v14, v21, v22

    .line 155
    .restart local v14    # "raddx":F
    invoke-interface/range {p4 .. p4}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getCenterX()F

    move-result v21

    sub-float v21, p2, v21

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v14

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->setRadiusX(F)V

    goto/16 :goto_1

    .line 162
    .end local v14    # "raddx":F
    :pswitch_5
    const-wide v21, 0x4046800000000000L

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v19, v0

    .line 163
    .local v19, "sin45":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownRadiusX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownRadiusY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    mul-float v8, v21, v19

    .line 164
    .local v8, "dr":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownCenterX:F

    move/from16 v22, v0

    sub-float v3, v21, v22

    .line 165
    .local v3, "ctr_dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mDownCenterY:F

    move/from16 v22, v0

    sub-float v4, v21, v22

    .line 166
    .local v4, "ctr_dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v21

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v22

    add-float v21, v21, v22

    sub-float v7, v21, v8

    .line 167
    .local v7, "downRad":F
    invoke-interface/range {p4 .. p4}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getRadiusX()F

    move-result v16

    .line 168
    .local v16, "rx":F
    invoke-interface/range {p4 .. p4}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getRadiusY()F

    move-result v17

    .line 169
    .local v17, "ry":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v21

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v22

    add-float v21, v21, v22

    mul-float v13, v21, v19

    .line 170
    .local v13, "r":F
    invoke-interface/range {p4 .. p4}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getCenterX()F

    move-result v21

    sub-float v9, p2, v21

    .line 171
    .local v9, "dx":F
    invoke-interface/range {p4 .. p4}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->getCenterY()F

    move-result v21

    sub-float v10, p3, v21

    .line 172
    .local v10, "dy":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v21

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v22

    add-float v21, v21, v22

    sub-float v21, v21, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 173
    .local v11, "nr":F
    mul-float v21, v16, v11

    div-float v21, v21, v13

    mul-float v22, v17, v11

    div-float v22, v22, v13

    move-object/from16 v0, p4

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/Oval;->setRadius(FF)V

    goto/16 :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 290
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterX:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterY:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mRadiusX:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mRadiusY:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->paintRadius(Landroid/graphics/Canvas;FFFF)V

    .line 291
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterX:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterY:F

    iget v4, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mRadiusX:F

    iget v5, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mRadiusY:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->fillHandles(Landroid/graphics/Canvas;FFFF)V

    .line 292
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterX:F

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterY:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->paintPoint(Landroid/graphics/Canvas;FF)V

    .line 293
    return-void
.end method

.method public fillHandles(Landroid/graphics/Canvas;FFFF)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "rx"    # F
    .param p5, "ry"    # F

    .prologue
    const/4 v7, 0x0

    .line 273
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handlex:[F

    aput p2, v6, v7

    .line 274
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handley:[F

    aput p3, v6, v7

    .line 275
    const/4 v3, 0x1

    .line 277
    .local v3, "k":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0x168

    if-ge v2, v6, :cond_0

    .line 278
    const-wide v6, 0x400921fb54442d18L

    int-to-double v8, v2

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L

    div-double v0, v6, v8

    .line 280
    .local v0, "angle":D
    float-to-double v6, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    add-float v4, p2, v6

    .line 281
    .local v4, "x":F
    float-to-double v6, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    add-float v5, p3, v6

    .line 282
    .local v5, "y":F
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handlex:[F

    aput v4, v6, v3

    .line 283
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handley:[F

    aput v5, v6, v3

    .line 285
    add-int/lit8 v3, v3, 0x1

    .line 277
    add-int/lit8 v2, v2, 0x2d

    goto :goto_0

    .line 287
    .end local v0    # "angle":D
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    return-void
.end method

.method public getCloseHandle(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 75
    const v5, 0x7f7fffff

    .line 76
    .local v5, "min":F
    const/4 v3, -0x1

    .line 77
    .local v3, "handle":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handlex:[F

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 78
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handlex:[F

    aget v6, v6, v4

    sub-float v1, v6, p1

    .line 79
    .local v1, "dx":F
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handley:[F

    aget v6, v6, v4

    sub-float v2, v6, p2

    .line 80
    .local v2, "dy":F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float v0, v6, v7

    .line 81
    .local v0, "dist":F
    cmpg-float v6, v0, v5

    if-gez v6, :cond_0

    .line 82
    move v5, v0

    .line 83
    move v3, v4

    .line 77
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "dist":F
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_1
    sget v6, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->MIN_TOUCH_DIST:I

    sget v7, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->MIN_TOUCH_DIST:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2

    .line 96
    .end local v3    # "handle":I
    :goto_1
    return v3

    .line 90
    .restart local v3    # "handle":I
    :cond_2
    const/4 v4, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handlex:[F

    array-length v6, v6

    if-ge v4, v6, :cond_3

    .line 91
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handlex:[F

    aget v6, v6, v4

    sub-float v1, v6, p1

    .line 92
    .restart local v1    # "dx":F
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->handley:[F

    aget v6, v6, v4

    sub-float v2, v6, p2

    .line 93
    .restart local v2    # "dy":F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 96
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public paintGrayPoint(Landroid/graphics/Canvas;FF)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x4

    .line 180
    const/high16 v1, 0x7fc00000

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 186
    .local v7, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    const v1, -0xffff01

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    new-array v4, v2, [I

    fill-array-data v4, :array_0

    .line 190
    .local v4, "colors3":[I
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterDotSize:I

    int-to-float v3, v1

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 192
    .local v0, "g":Landroid/graphics/RadialGradient;
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 193
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterDotSize:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, p3, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 188
    :array_0
    .array-data 4
        -0x777778
        -0x333334
        0x66000000
        0x0
    .end array-data

    .line 190
    :array_1
    .array-data 4
        0x0
        0x3e99999a
        0x3e9eb852
        0x3f800000
    .end array-data
.end method

.method public paintOvallines(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "cx"    # F
    .param p5, "cy"    # F
    .param p6, "rx"    # F
    .param p7, "ry"    # F

    .prologue
    .line 233
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 234
    const/high16 v13, 0x40800000

    .line 235
    .local v13, "da":F
    add-float v4, v13, v13

    .line 236
    .local v4, "arclen":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mShowReshapeHandles:Z

    if-eqz v1, :cond_0

    .line 237
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    const/16 v1, 0x169

    move/from16 v0, v16

    if-ge v0, v1, :cond_0

    .line 240
    const/high16 v1, 0x41200000

    add-float v14, p6, v1

    .line 241
    .local v14, "dx":F
    const/high16 v1, 0x41200000

    add-float v15, p7, v1

    .line 242
    .local v15, "dy":F
    sub-float v1, p4, v14

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 243
    sub-float v1, p5, v15

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 244
    add-float v1, p4, v14

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 245
    add-float v1, p5, v15

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 246
    move/from16 v0, v16

    int-to-float v1, v0

    sub-float v3, v1, v13

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 247
    const/high16 v1, 0x41200000

    sub-float v14, p6, v1

    .line 248
    const/high16 v1, 0x41200000

    sub-float v15, p7, v1

    .line 249
    sub-float v1, p4, v14

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 250
    sub-float v1, p5, v15

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 251
    add-float v1, p4, v14

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 252
    add-float v1, p5, v15

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 253
    move/from16 v0, v16

    int-to-float v1, v0

    sub-float v3, v1, v13

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 239
    add-int/lit8 v16, v16, 0x5a

    goto :goto_0

    .line 256
    .end local v14    # "dx":F
    .end local v15    # "dy":F
    .end local v16    # "i":I
    :cond_0
    const/high16 v1, 0x40000000

    mul-float/2addr v13, v1

    .line 257
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    const/16 v16, 0x2d

    .restart local v16    # "i":I
    :goto_1
    const/16 v1, 0x169

    move/from16 v0, v16

    if-ge v0, v1, :cond_1

    .line 260
    const-wide v1, 0x400921fb54442d18L

    move/from16 v0, v16

    int-to-double v5, v0

    mul-double/2addr v1, v5

    const-wide v5, 0x4066800000000000L

    div-double v11, v1, v5

    .line 261
    .local v11, "angle":D
    move/from16 v0, p6

    float-to-double v1, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    double-to-float v1, v1

    add-float v17, p4, v1

    .line 262
    .local v17, "x":F
    move/from16 v0, p7

    float-to-double v1, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    double-to-float v1, v1

    add-float v18, p5, v1

    .line 263
    .local v18, "y":F
    sub-float v6, v17, v13

    sub-float v7, v18, v13

    add-float v8, v17, v13

    add-float v9, v18, v13

    move-object/from16 v5, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 259
    add-int/lit8 v16, v16, 0x5a

    goto :goto_1

    .line 265
    .end local v11    # "angle":D
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_1
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    sub-float v1, p4, p6

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 267
    sub-float v1, p5, p7

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 268
    add-float v1, p4, p6

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 269
    add-float v1, p5, p7

    move-object/from16 v0, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 270
    return-void
.end method

.method public paintPoint(Landroid/graphics/Canvas;FF)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 197
    const/high16 v1, 0x7fc00000

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 203
    .local v7, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    const v1, -0xffff01

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    new-array v4, v5, [I

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mSliderColor:I

    aput v1, v4, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mSliderColor:I

    aput v2, v4, v1

    const/4 v1, 0x2

    const/high16 v2, 0x66000000

    aput v2, v4, v1

    const/4 v1, 0x3

    aput v3, v4, v1

    .line 207
    .local v4, "colors3":[I
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterDotSize:I

    int-to-float v3, v1

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 209
    .local v0, "g":Landroid/graphics/RadialGradient;
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 210
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterDotSize:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, p3, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 207
    nop

    :array_0
    .array-data 4
        0x0
        0x3e99999a
        0x3e9eb852
        0x3f800000
    .end array-data
.end method

.method paintRadius(Landroid/graphics/Canvas;FFFF)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "rx"    # F
    .param p5, "ry"    # F

    .prologue
    .line 214
    const/high16 v0, 0x7fc00000

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 217
    :cond_0
    const v8, -0xcc4a1b

    .line 218
    .local v8, "mSliderColor":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 219
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/RectF;

    sub-float v0, p2, p4

    sub-float v1, p3, p5

    add-float v4, p2, p4

    add-float v5, p3, p5

    invoke-direct {v2, v0, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 220
    .local v2, "rect":Landroid/graphics/RectF;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    const/high16 v0, 0x40c00000

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    const/high16 v0, -0x1000000

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 224
    invoke-virtual/range {v0 .. v7}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->paintOvallines(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    .line 226
    const/high16 v0, 0x40400000

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 228
    invoke-virtual/range {v0 .. v7}, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->paintOvallines(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    goto :goto_0
.end method

.method public setCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterX:F

    .line 71
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mCenterY:F

    .line 72
    return-void
.end method

.method public setRadius(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mRadiusX:F

    .line 66
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mRadiusY:F

    .line 67
    return-void
.end method

.method public setScrToImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "scrToImg"    # Landroid/graphics/Matrix;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mScrToImg:Landroid/graphics/Matrix;

    .line 101
    return-void
.end method

.method public setShowReshapeHandles(Z)V
    .locals 0
    .param p1, "showReshapeHandles"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/EclipseControl;->mShowReshapeHandles:Z

    .line 301
    return-void
.end method
