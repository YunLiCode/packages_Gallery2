.class public Lcom/android/dreams/phototable/PhotoTouchListener;
.super Ljava/lang/Object;
.source "PhotoTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mA:I

.field private mB:I

.field private final mBeta:F

.field private mDX:F

.field private mDY:F

.field private final mEnableFling:Z

.field private mInitialTargetA:F

.field private mInitialTargetX:F

.field private mInitialTargetY:F

.field private mInitialTouchA:F

.field private mInitialTouchTime:J

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLastEventTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private final mManualImageRotation:Z

.field private final mTable:Lcom/android/dreams/phototable/PhotoTable;

.field private final mTapTimeout:I

.field private final mTouchSlop:I

.field private pts:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dreams/phototable/PhotoTable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "table"    # Lcom/android/dreams/phototable/PhotoTable;

    .prologue
    const/4 v2, -0x1

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    .line 52
    iput v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    .line 53
    const/16 v2, 0xa

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    .line 56
    iput-object p2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    .line 57
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 58
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTouchSlop:I

    .line 59
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    iput v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTapTimeout:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x49742400

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mBeta:F

    .line 62
    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mEnableFling:Z

    .line 63
    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mManualImageRotation:Z

    .line 64
    return-void
.end method

.method private getAngle(Landroid/view/View;Landroid/view/MotionEvent;)F
    .locals 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "alpha":F
    iget v3, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 70
    .local v0, "a":I
    iget v3, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 71
    .local v2, "b":I
    if-ltz v0, :cond_0

    if-ltz v2, :cond_0

    .line 72
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    float-to-double v3, v3

    iget-object v5, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    mul-int/lit8 v6, v0, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    mul-int/lit8 v7, v2, 0x2

    aget v6, v6, v7

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L

    div-double/2addr v3, v5

    double-to-float v1, v3

    .line 76
    :cond_0
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 245
    return-void
.end method

.method private resetTouch(Landroid/view/View;)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/high16 v0, -0x40800000

    .line 80
    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    .line 81
    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchA:F

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetX:F

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetY:F

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetA:F

    .line 86
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/View;FF)V
    .locals 19
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dX"    # F
    .param p3, "dY"    # F

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mEnableFling:Z

    if-nez v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTouchListener;->log(Ljava/lang/String;)V

    .line 95
    const/high16 v2, 0x42700000

    div-float p2, p2, v2

    .line 96
    const/high16 v2, 0x42700000

    div-float p3, p3, v2

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    const/4 v3, 0x0

    aget v11, v2, v3

    .line 100
    .local v11, "x0":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    const/4 v3, 0x1

    aget v13, v2, v3

    .line 103
    .local v13, "y0":F
    move/from16 v0, p2

    float-to-double v2, v0

    move/from16 v0, p3

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v10, v2

    .line 105
    .local v10, "v":F
    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_0

    .line 110
    const-wide/high16 v2, 0x3ff0000000000000L

    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    neg-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mBeta:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v8, v2

    .line 112
    .local v8, "n":F
    const-wide/16 v2, 0x0

    float-to-double v4, v10

    const-wide/high16 v6, 0x3ff0000000000000L

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mBeta:F

    float-to-double v15, v15

    float-to-double v0, v8

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    sub-double/2addr v6, v15

    mul-double/2addr v4, v6

    const/high16 v6, 0x3f800000

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mBeta:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v9, v2

    .line 115
    .local v9, "s":F
    mul-float v2, v9, p2

    div-float/2addr v2, v10

    add-float v12, v11, v2

    .line 116
    .local v12, "x1":F
    mul-float v2, v9, p3

    div-float/2addr v2, v10

    add-float v14, v13, v2

    .line 118
    .local v14, "y1":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    sub-float v4, v12, v11

    sub-float v5, v14, v13

    const/high16 v3, 0x447a0000

    mul-float/2addr v3, v8

    const/high16 v6, 0x42700000

    div-float/2addr v3, v6

    float-to-int v6, v3

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/dreams/phototable/PhotoTable;->fling(Landroid/view/View;FFIZ)V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "target"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 126
    .local v5, "action":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ge v9, v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v18, v0

    mul-int/lit8 v19, v9, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    aput v20, v18, v19

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v18, v0

    mul-int/lit8 v19, v9, 0x2

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    aput v20, v18, v19

    .line 126
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 132
    packed-switch v5, :pswitch_data_0

    .line 238
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v18, 0x1

    return v18

    .line 134
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->moveToTopOfPile(Landroid/view/View;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchTime:J

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    .line 137
    invoke-direct/range {p0 .. p1}, Lcom/android/dreams/phototable/PhotoTouchListener;->resetTouch(Landroid/view/View;)V

    goto :goto_1

    .line 141
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    .line 143
    invoke-direct/range {p0 .. p2}, Lcom/android/dreams/phototable/PhotoTouchListener;->getAngle(Landroid/view/View;Landroid/view/MotionEvent;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchA:F

    goto :goto_1

    .line 148
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 149
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRotation()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetA:F

    .line 152
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 153
    const-string v18, "primary went up!"

    invoke-static/range {v18 .. v18}, Lcom/android/dreams/phototable/PhotoTouchListener;->log(Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    .line 155
    invoke-direct/range {p0 .. p1}, Lcom/android/dreams/phototable/PhotoTouchListener;->resetTouch(Landroid/view/View;)V

    .line 156
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    goto/16 :goto_1

    .line 161
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 163
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v18, v0

    mul-int/lit8 v19, v10, 0x2

    aget v14, v18, v19

    .line 164
    .local v14, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v18, v0

    mul-int/lit8 v19, v10, 0x2

    add-int/lit8 v19, v19, 0x1

    aget v16, v18, v19

    .line 165
    .local v16, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000

    cmpl-float v18, v18, v19

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000

    cmpl-float v18, v18, v19

    if-nez v18, :cond_4

    .line 166
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    .line 167
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    .line 184
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v18

    if-nez v18, :cond_1

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRotation()F

    move-result v11

    .line 186
    .local v11, "rotation":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mManualImageRotation:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 187
    invoke-direct/range {p0 .. p2}, Lcom/android/dreams/phototable/PhotoTouchListener;->getAngle(Landroid/view/View;Landroid/view/MotionEvent;)F

    move-result v4

    .line 188
    .local v4, "a":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetA:F

    move/from16 v18, v0

    add-float v18, v18, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchA:F

    move/from16 v19, v0

    sub-float v11, v18, v19

    .line 190
    .end local v4    # "a":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetX:F

    move/from16 v19, v0

    add-float v19, v19, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTargetY:F

    move/from16 v20, v0

    add-float v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/android/dreams/phototable/PhotoTable;->move(Landroid/view/View;FFF)V

    goto/16 :goto_1

    .line 169
    .end local v11    # "rotation":F
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastEventTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x447a0000

    div-float v8, v18, v19

    .line 170
    .local v8, "dt":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastTouchX:F

    move/from16 v18, v0

    sub-float v18, v14, v18

    div-float v12, v18, v8

    .line 171
    .local v12, "tmpDX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastTouchY:F

    move/from16 v18, v0

    sub-float v18, v16, v18

    div-float v13, v18, v8

    .line 172
    .local v13, "tmpDY":F
    const/16 v18, 0x0

    cmpl-float v18, v8, v18

    if-lez v18, :cond_6

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/high16 v19, 0x40a00000

    cmpl-float v18, v18, v19

    if-gtz v18, :cond_5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/high16 v19, 0x40a00000

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6

    .line 174
    :cond_5
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDX:F

    .line 175
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDY:F

    .line 177
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "move "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDX:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDY:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/dreams/phototable/PhotoTouchListener;->log(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastEventTime:J

    .line 180
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastTouchX:F

    .line 181
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mLastTouchY:F

    goto/16 :goto_2

    .line 200
    .end local v8    # "dt":F
    .end local v10    # "idx":I
    .end local v12    # "tmpDX":F
    .end local v13    # "tmpDY":F
    .end local v14    # "x":F
    .end local v16    # "y":F
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 202
    .restart local v10    # "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v18, v0

    mul-int/lit8 v19, v10, 0x2

    aget v15, v18, v19

    .line 203
    .local v15, "x0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->pts:[F

    move-object/from16 v18, v0

    mul-int/lit8 v19, v10, 0x2

    add-int/lit8 v19, v19, 0x1

    aget v17, v18, v19

    .line 204
    .local v17, "y0":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000

    cmpl-float v18, v18, v19

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000

    cmpl-float v18, v18, v19

    if-nez v18, :cond_7

    .line 205
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    .line 206
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    .line 208
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    move/from16 v18, v0

    sub-float v18, v15, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchY:F

    move/from16 v20, v0

    sub-float v20, v17, v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 210
    .local v6, "distance":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v6, v18

    if-gez v18, :cond_8

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/dreams/phototable/PhotoTable;->clearSelection()V

    .line 227
    :goto_3
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mA:I

    .line 228
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dreams/phototable/PhotoTouchListener;->mB:I

    goto/16 :goto_1

    .line 214
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchX:F

    move/from16 v18, v0

    sub-float v18, v15, v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_9

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/dreams/phototable/PhotoTable;->selectPrevious()V

    goto :goto_3

    .line 217
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/dreams/phototable/PhotoTable;->selectNext()V

    goto :goto_3

    .line 220
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mInitialTouchTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTapTimeout:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v6, v18

    if-gez v18, :cond_b

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->setSelection(Landroid/view/View;)V

    goto :goto_3

    .line 225
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dreams/phototable/PhotoTouchListener;->mDY:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dreams/phototable/PhotoTouchListener;->onFling(Landroid/view/View;FF)V

    goto/16 :goto_3

    .line 234
    .end local v6    # "distance":D
    .end local v10    # "idx":I
    .end local v15    # "x0":F
    .end local v17    # "y0":F
    :pswitch_6
    const-string v18, "action cancel!"

    invoke-static/range {v18 .. v18}, Lcom/android/dreams/phototable/PhotoTouchListener;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
