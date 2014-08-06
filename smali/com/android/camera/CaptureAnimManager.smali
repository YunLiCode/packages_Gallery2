.class public Lcom/android/camera/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# instance fields
.field private volatile mAnimOrientation:I

.field private mAnimStartTime:J

.field private mAnimType:I

.field private mBorder:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mHoldH:I

.field private mHoldW:I

.field private mHoldX:I

.field private mHoldY:I

.field private mMarginRight:I

.field private mMarginTop:I

.field private mOffset:I

.field private mResources:Landroid/content/res/Resources;

.field private mShadowSize:I

.field private mSize:I

.field private final mSlideInterpolator:Landroid/view/animation/Interpolator;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    new-instance v0, Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    const v1, 0x7f020025

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mBorder:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mResources:Landroid/content/res/Resources;

    .line 84
    return-void
.end method

.method public static getAnimationDuration()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x1004

    return v0
.end method

.method private static interpolate(FFF)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "end"    # F
    .param p2, "fraction"    # F

    .prologue
    .line 225
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private setAnimationGeometry(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mMarginRight:I

    .line 112
    iget-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mMarginTop:I

    .line 113
    iget-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mSize:I

    .line 114
    iget-object v0, p0, Lcom/android/camera/CaptureAnimManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mShadowSize:I

    .line 115
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mMarginRight:I

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mOffset:I

    .line 117
    iput p3, p0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    .line 118
    iput p4, p0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    .line 119
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mX:F

    .line 120
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mY:F

    .line 121
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mSize:I

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHoldW:I

    .line 122
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mSize:I

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHoldH:I

    .line 123
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 125
    :sswitch_0
    add-int v0, p1, p3

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mMarginRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHoldX:I

    .line 126
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mMarginTop:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHoldY:I

    goto :goto_0

    .line 129
    :sswitch_1
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mMarginTop:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHoldX:I

    .line 130
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mMarginRight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHoldY:I

    goto :goto_0

    .line 133
    :sswitch_2
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mMarginRight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHoldX:I

    .line 134
    add-int v0, p2, p4

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mMarginTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHoldY:I

    goto :goto_0

    .line 137
    :sswitch_3
    add-int v0, p1, p3

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mMarginTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHoldX:I

    .line 138
    add-int v0, p2, p4

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mMarginRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/CaptureAnimManager;->mSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mHoldY:I

    goto :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public animateFlash()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 100
    return-void
.end method

.method public animateFlashAndSlide()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 104
    return-void
.end method

.method public animateSlide()V
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    goto :goto_0
.end method

.method public drawAnimation(Lcom/android/gallery3d/glrenderer/GLCanvas;Lcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/glrenderer/RawTexture;IIII)Z
    .locals 27
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "preview"    # Lcom/android/camera/CameraScreenNail;
    .param p3, "review"    # Lcom/android/gallery3d/glrenderer/RawTexture;
    .param p4, "lx"    # I
    .param p5, "ly"    # I
    .param p6, "lw"    # I
    .param p7, "lh"    # I

    .prologue
    .line 146
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/CaptureAnimManager;->setAnimationGeometry(IIII)V

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    sub-long v22, v5, v7

    .line 149
    .local v22, "timeDiff":J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const-wide/16 v5, 0xe74

    cmp-long v5, v22, v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    .line 221
    :goto_0
    return v5

    .line 150
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    if-nez v5, :cond_1

    const-wide/16 v5, 0x1004

    cmp-long v5, v22, v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 153
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    move/from16 v17, v0

    .line 154
    .local v17, "animStep":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 155
    const-wide/16 v5, 0x190

    add-long v22, v22, v5

    .line 157
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mAnimType:I

    if-nez v5, :cond_4

    .line 158
    :cond_3
    const-wide/16 v5, 0x190

    cmp-long v5, v22, v5

    if-gez v5, :cond_6

    .line 159
    const/16 v17, 0x1

    .line 173
    :cond_4
    :goto_1
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_9

    .line 174
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v7, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v8, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/glrenderer/RawTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 175
    const-wide/16 v5, 0xc8

    cmp-long v5, v22, v5

    if-gez v5, :cond_5

    .line 176
    const v5, 0x3e99999a

    const v6, 0x3e99999a

    move-wide/from16 v0, v22

    long-to-float v7, v0

    mul-float/2addr v6, v7

    const/high16 v7, 0x43480000

    div-float/2addr v6, v7

    sub-float v19, v5, v6

    .line 177
    .local v19, "f":F
    const/high16 v5, 0x437f0000

    mul-float v5, v5, v19

    float-to-int v5, v5

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    .line 178
    .local v10, "color":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v9, v5

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v10}, Lcom/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 221
    .end local v10    # "color":I
    .end local v19    # "f":F
    :cond_5
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 160
    :cond_6
    const-wide/16 v5, 0x320

    cmp-long v5, v22, v5

    if-gez v5, :cond_7

    .line 161
    const/16 v17, 0x2

    .line 162
    const-wide/16 v5, 0x190

    sub-long v22, v22, v5

    goto :goto_1

    .line 163
    :cond_7
    const-wide/16 v5, 0xce4

    cmp-long v5, v22, v5

    if-gez v5, :cond_8

    .line 164
    const/16 v17, 0x3

    .line 165
    const-wide/16 v5, 0x320

    sub-long v22, v22, v5

    goto :goto_1

    .line 168
    :cond_8
    const/16 v17, 0x4

    .line 169
    const-wide/16 v5, 0xce4

    sub-long v22, v22, v5

    goto :goto_1

    .line 180
    :cond_9
    const/4 v5, 0x2

    move/from16 v0, v17

    if-ne v0, v5, :cond_a

    .line 181
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    move-wide/from16 v0, v22

    long-to-float v6, v0

    const/high16 v7, 0x43c80000

    div-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v20

    .line 182
    .local v20, "fraction":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    move/from16 v25, v0

    .line 183
    .local v25, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    move/from16 v26, v0

    .line 184
    .local v26, "y":F
    const/16 v24, 0x0

    .line 185
    .local v24, "w":F
    const/16 v21, 0x0

    .line 186
    .local v21, "h":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mHoldX:I

    int-to-float v6, v6

    move/from16 v0, v20

    invoke-static {v5, v6, v0}, Lcom/android/camera/CaptureAnimManager;->interpolate(FFF)F

    move-result v25

    .line 187
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mHoldY:I

    int-to-float v6, v6

    move/from16 v0, v20

    invoke-static {v5, v6, v0}, Lcom/android/camera/CaptureAnimManager;->interpolate(FFF)F

    move-result v26

    .line 188
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mHoldW:I

    int-to-float v6, v6

    move/from16 v0, v20

    invoke-static {v5, v6, v0}, Lcom/android/camera/CaptureAnimManager;->interpolate(FFF)F

    move-result v24

    .line 189
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mHoldH:I

    int-to-float v6, v6

    move/from16 v0, v20

    invoke-static {v5, v6, v0}, Lcom/android/camera/CaptureAnimManager;->interpolate(FFF)F

    move-result v21

    .line 190
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v13, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move/from16 v16, v0

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 191
    move/from16 v0, v25

    float-to-int v13, v0

    move/from16 v0, v26

    float-to-int v14, v0

    move/from16 v0, v24

    float-to-int v15, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v11, p3

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Lcom/android/gallery3d/glrenderer/RawTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto/16 :goto_2

    .line 192
    .end local v20    # "fraction":F
    .end local v21    # "h":F
    .end local v24    # "w":F
    .end local v25    # "x":F
    .end local v26    # "y":F
    :cond_a
    const/4 v5, 0x3

    move/from16 v0, v17

    if-ne v0, v5, :cond_b

    .line 193
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v13, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move/from16 v16, v0

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 194
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/CaptureAnimManager;->mHoldX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CaptureAnimManager;->mHoldY:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CaptureAnimManager;->mHoldW:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mHoldH:I

    move/from16 v16, v0

    move-object/from16 v11, p3

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Lcom/android/gallery3d/glrenderer/RawTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 195
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CaptureAnimManager;->mBorder:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mShadowSize:I

    sub-int v13, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mShadowSize:I

    sub-int v14, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldW:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mShadowSize:I

    mul-int/lit8 v6, v6, 0x2

    add-int v15, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mShadowSize:I

    mul-int/lit8 v6, v6, 0x2

    add-int v16, v5, v6

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto/16 :goto_2

    .line 197
    :cond_b
    const/4 v5, 0x4

    move/from16 v0, v17

    if-ne v0, v5, :cond_5

    .line 198
    move-wide/from16 v0, v22

    long-to-float v5, v0

    const/high16 v6, 0x44480000

    div-float v20, v5, v6

    .line 199
    .restart local v20    # "fraction":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldX:I

    int-to-float v0, v5

    move/from16 v25, v0

    .line 200
    .restart local v25    # "x":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldY:I

    int-to-float v0, v5

    move/from16 v26, v0

    .line 201
    .restart local v26    # "y":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mOffset:I

    int-to-float v5, v5

    mul-float v18, v5, v20

    .line 202
    .local v18, "d":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v5, :sswitch_data_0

    .line 216
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mX:F

    float-to-int v13, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mY:F

    float-to-int v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mDrawHeight:I

    move/from16 v16, v0

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Lcom/android/camera/CameraScreenNail;->directDraw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CaptureAnimManager;->mBorder:Lcom/android/gallery3d/glrenderer/NinePatchTexture;

    move/from16 v0, v25

    float-to-int v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mShadowSize:I

    sub-int v13, v5, v6

    move/from16 v0, v26

    float-to-int v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mShadowSize:I

    sub-int v14, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldW:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mShadowSize:I

    mul-int/lit8 v6, v6, 0x2

    add-int v15, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CaptureAnimManager;->mShadowSize:I

    mul-int/lit8 v6, v6, 0x2

    add-int v16, v5, v6

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Lcom/android/gallery3d/glrenderer/NinePatchTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 219
    move/from16 v0, v25

    float-to-int v13, v0

    move/from16 v0, v26

    float-to-int v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CaptureAnimManager;->mHoldW:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CaptureAnimManager;->mHoldH:I

    move/from16 v16, v0

    move-object/from16 v11, p3

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v16}, Lcom/android/gallery3d/glrenderer/RawTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto/16 :goto_2

    .line 204
    :sswitch_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldX:I

    int-to-float v5, v5

    add-float v25, v5, v18

    .line 205
    goto :goto_3

    .line 207
    :sswitch_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldX:I

    int-to-float v5, v5

    sub-float v25, v5, v18

    .line 208
    goto :goto_3

    .line 210
    :sswitch_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldY:I

    int-to-float v5, v5

    sub-float v26, v5, v18

    .line 211
    goto :goto_3

    .line 213
    :sswitch_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CaptureAnimManager;->mHoldY:I

    int-to-float v5, v5

    add-float v26, v5, v18

    goto/16 :goto_3

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "displayRotation"    # I

    .prologue
    .line 87
    rsub-int v0, p1, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimOrientation:I

    .line 88
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/CaptureAnimManager;->mAnimStartTime:J

    .line 108
    return-void
.end method
