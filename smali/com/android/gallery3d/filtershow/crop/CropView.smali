.class public Lcom/android/gallery3d/filtershow/crop/CropView;
.super Landroid/view/View;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/crop/CropView$Mode;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCropIndicator:Landroid/graphics/drawable/Drawable;

.field private mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

.field private mDashOffLength:F

.field private mDashOnLength:F

.field private mDirty:Z

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMatrixInverse:Landroid/graphics/Matrix;

.field private mDoSpot:Z

.field private mImageBounds:Landroid/graphics/RectF;

.field private final mIndicatorSize:I

.field private mMargin:I

.field private mMinSideSize:I

.field private mMovingBlock:Z

.field private mOverlayShadowColor:I

.field private mOverlayWPShadowColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevX:F

.field private mPrevY:F

.field private mRotation:I

.field private mScreenBounds:Landroid/graphics/RectF;

.field private mScreenCropBounds:Landroid/graphics/RectF;

.field private mScreenImageBounds:Landroid/graphics/RectF;

.field private mShadow:Landroid/graphics/drawable/NinePatchDrawable;

.field private mShadowBounds:Landroid/graphics/Rect;

.field private mShadowMargin:I

.field private mSpotX:F

.field private mSpotY:F

.field private mState:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

.field private mTouchTolerance:I

.field private mWPMarkerColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 43
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 44
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    .line 45
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 46
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPaint:Landroid/graphics/Paint;

    .line 52
    iput-object v4, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    .line 55
    iput v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mRotation:I

    .line 56
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mMovingBlock:Z

    .line 57
    iput-object v4, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 58
    iput-object v4, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 59
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDirty:Z

    .line 61
    iput v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPrevX:F

    .line 62
    iput v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPrevY:F

    .line 63
    iput v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mSpotX:F

    .line 64
    iput v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mSpotY:F

    .line 65
    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDoSpot:Z

    .line 67
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadowMargin:I

    .line 68
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mMargin:I

    .line 69
    const/high16 v1, -0x31000000

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mOverlayShadowColor:I

    .line 70
    const/high16 v1, 0x5f000000

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mOverlayWPShadowColor:I

    .line 71
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mWPMarkerColor:I

    .line 72
    const/16 v1, 0x5a

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mMinSideSize:I

    .line 73
    const/16 v1, 0x28

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mTouchTolerance:I

    .line 74
    const/high16 v1, 0x41a00000

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDashOnLength:F

    .line 75
    const/high16 v1, 0x41200000

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDashOffLength:F

    .line 81
    sget-object v1, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->NONE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mState:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, "rsc":Landroid/content/res/Resources;
    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    .line 87
    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropIndicator:Landroid/graphics/drawable/Drawable;

    .line 88
    const v1, 0x7f0e00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mIndicatorSize:I

    .line 89
    const v1, 0x7f0e005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadowMargin:I

    .line 90
    const v1, 0x7f0e005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mMargin:I

    .line 91
    const v1, 0x7f0e005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mMinSideSize:I

    .line 92
    const v1, 0x7f0e0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mTouchTolerance:I

    .line 93
    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mOverlayShadowColor:I

    .line 94
    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mOverlayWPShadowColor:I

    .line 95
    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mWPMarkerColor:I

    .line 96
    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDashOnLength:F

    .line 97
    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDashOffLength:F

    .line 98
    return-void
.end method

.method private bitCycleLeft(III)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "times"    # I
    .param p3, "d"    # I

    .prologue
    .line 247
    const/4 v5, 0x1

    shl-int/2addr v5, p3

    add-int/lit8 v2, v5, -0x1

    .line 248
    .local v2, "mask":I
    and-int v3, p1, v2

    .line 249
    .local v3, "mout":I
    rem-int/2addr p2, p3

    .line 250
    sub-int v5, p3, p2

    shr-int v0, v3, v5

    .line 251
    .local v0, "hi":I
    shl-int v5, v3, p2

    and-int v1, v5, v2

    .line 252
    .local v1, "low":I
    xor-int/lit8 v5, v2, -0x1

    and-int v4, p1, v5

    .line 253
    .local v4, "ret":I
    or-int/2addr v4, v1

    .line 254
    or-int/2addr v4, v0

    .line 255
    return v4
.end method

.method private clearDisplay()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 186
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 187
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/CropView;->invalidate()V

    .line 188
    return-void
.end method

.method private decode(IF)I
    .locals 3
    .param p1, "movingEdges"    # I
    .param p2, "rotation"    # F

    .prologue
    const/4 v2, 0x4

    .line 262
    invoke-static {p2}, Lcom/android/gallery3d/filtershow/crop/CropMath;->constrainedRotation(F)I

    move-result v0

    .line 263
    .local v0, "rot":I
    sparse-switch v0, :sswitch_data_0

    .line 271
    .end local p1    # "movingEdges":I
    :goto_0
    return p1

    .line 265
    .restart local p1    # "movingEdges":I
    :sswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/crop/CropView;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 267
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/crop/CropView;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 269
    :sswitch_2
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/crop/CropView;->bitCycleLeft(III)I

    move-result p1

    goto :goto_0

    .line 263
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    const-string v0, "CropView"

    const-string v1, "crop reset called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v0, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->NONE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mState:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    .line 179
    iput v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mRotation:I

    .line 180
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mMovingBlock:Z

    .line 181
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropView;->clearDisplay()V

    .line 182
    return-void
.end method


# virtual methods
.method public applyAspect(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 216
    cmpg-float v1, p1, v2

    if-lez v1, :cond_0

    cmpg-float v1, p2, v2

    if-gtz v1, :cond_1

    .line 217
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad arguments to applyAspect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mRotation:I

    if-gez v1, :cond_4

    iget v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mRotation:I

    neg-int v1, v1

    :goto_0
    rem-int/lit16 v1, v1, 0xb4

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2

    .line 221
    move v0, p1

    .line 222
    .local v0, "tmp":F
    move p1, p2

    .line 223
    move p2, v0

    .line 225
    .end local v0    # "tmp":F
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v1, p1, p2}, Lcom/android/gallery3d/filtershow/crop/CropObject;->setInnerAspectRatio(FF)Z

    move-result v1

    if-nez v1, :cond_3

    .line 226
    const-string v1, "CropView"

    const-string v2, "failed to set aspect ratio"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/CropView;->invalidate()V

    .line 229
    return-void

    .line 220
    :cond_4
    iget v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mRotation:I

    goto :goto_0
.end method

.method protected configChanged()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDirty:Z

    .line 192
    return-void
.end method

.method public getCrop()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 4
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "newCropBounds"    # Landroid/graphics/RectF;
    .param p3, "newPhotoBounds"    # Landroid/graphics/RectF;
    .param p4, "rotation"    # I

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    .line 102
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 104
    .local v1, "crop":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 105
    .local v0, "containing":Landroid/graphics/RectF;
    if-ne v1, p2, :cond_0

    if-ne v0, p3, :cond_0

    iget v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mRotation:I

    if-eq v2, p4, :cond_1

    .line 107
    :cond_0
    iput p4, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mRotation:I

    .line 108
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v2, p2, p3}, Lcom/android/gallery3d/filtershow/crop/CropObject;->resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 109
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropView;->clearDisplay()V

    .line 116
    .end local v0    # "containing":Landroid/graphics/RectF;
    .end local v1    # "crop":Landroid/graphics/RectF;
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    iput p4, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mRotation:I

    .line 113
    new-instance v2, Lcom/android/gallery3d/filtershow/crop/CropObject;

    const/4 v3, 0x0

    invoke-direct {v2, p3, p2, v3}, Lcom/android/gallery3d/filtershow/crop/CropObject;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    .line 114
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropView;->clearDisplay()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDirty:Z

    if-eqz v0, :cond_2

    .line 281
    iput-boolean v8, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDirty:Z

    .line 282
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropView;->clearDisplay()V

    .line 285
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    .line 286
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mMargin:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 291
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    if-nez v0, :cond_3

    .line 292
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropView;->reset()V

    .line 293
    new-instance v0, Lcom/android/gallery3d/filtershow/crop/CropObject;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v8}, Lcom/android/gallery3d/filtershow/crop/CropObject;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    if-nez v0, :cond_7

    .line 298
    :cond_4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mRotation:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/crop/CropDrawingUtils;->setImageToScreenMatrix(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 302
    const-string v0, "CropView"

    const-string v1, "failed to get screen matrix"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 306
    :cond_5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 308
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 309
    const-string v0, "CropView"

    const-string v1, "could not invert display matrix"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iput-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    goto/16 :goto_0

    .line 314
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mMinSideSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/CropObject;->setMinInnerSideSize(F)V

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mTouchTolerance:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/CropObject;->setTouchTolerance(F)V

    .line 318
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadowMargin:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    float-to-int v12, v0

    .line 323
    .local v12, "margin":I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 324
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v12

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v12

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v12

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v12

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mShadow:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 331
    .end local v12    # "margin":I
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/CropObject;->getInnerBounds(Landroid/graphics/RectF;)V

    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 339
    .local v5, "p":Landroid/graphics/Paint;
    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mOverlayShadowColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 341
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenImageBounds:Landroid/graphics/RectF;

    invoke-static {p1, v5, v0, v1}, Lcom/android/gallery3d/filtershow/crop/CropDrawingUtils;->drawShadows(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/crop/CropDrawingUtils;->drawCropRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 345
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDoSpot:Z

    if-nez v0, :cond_9

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/crop/CropDrawingUtils;->drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 358
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropIndicator:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mIndicatorSize:I

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropObject;->isFixedAspect()Z

    move-result v10

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropObject;->getSelectState()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mRotation:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/crop/CropView;->decode(IF)I

    move-result v11

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/gallery3d/filtershow/crop/CropDrawingUtils;->drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;ZI)V

    goto/16 :goto_0

    .line 348
    :cond_9
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 349
    .local v4, "wpPaint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mWPMarkerColor:I

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    const/high16 v0, 0x40400000

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 351
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 352
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDashOnLength:F

    aput v2, v1, v8

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDashOnLength:F

    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDashOffLength:F

    add-float/2addr v3, v6

    aput v3, v1, v2

    invoke-direct {v0, v1, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 354
    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mOverlayWPShadowColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mScreenCropBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mSpotX:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mSpotY:F

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/crop/CropDrawingUtils;->drawWallpaperSelectionFrame(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 129
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 130
    .local v4, "y":F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    if-nez v5, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v8

    .line 133
    :cond_1
    const/4 v5, 0x2

    new-array v2, v5, [F

    aput v3, v2, v7

    aput v4, v2, v8

    .line 136
    .local v2, "touchPoint":[F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 137
    aget v3, v2, v7

    .line 138
    aget v4, v2, v8

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 171
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/CropView;->invalidate()V

    goto :goto_0

    .line 141
    :pswitch_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mState:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    sget-object v6, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->NONE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    if-ne v5, v6, :cond_2

    .line 142
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v5, v3, v4}, Lcom/android/gallery3d/filtershow/crop/CropObject;->selectEdge(FF)Z

    move-result v5

    if-nez v5, :cond_3

    .line 143
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/crop/CropObject;->selectEdge(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mMovingBlock:Z

    .line 145
    :cond_3
    iput v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPrevX:F

    .line 146
    iput v4, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPrevY:F

    .line 147
    sget-object v5, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->MOVE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mState:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    goto :goto_1

    .line 151
    :pswitch_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mState:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    sget-object v6, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->MOVE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    if-ne v5, v6, :cond_2

    .line 152
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v5, v7}, Lcom/android/gallery3d/filtershow/crop/CropObject;->selectEdge(I)Z

    .line 153
    iput-boolean v7, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mMovingBlock:Z

    .line 154
    iput v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPrevX:F

    .line 155
    iput v4, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPrevY:F

    .line 156
    sget-object v5, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->NONE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mState:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    goto :goto_1

    .line 160
    :pswitch_2
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mState:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    sget-object v6, Lcom/android/gallery3d/filtershow/crop/CropView$Mode;->MOVE:Lcom/android/gallery3d/filtershow/crop/CropView$Mode;

    if-ne v5, v6, :cond_2

    .line 161
    iget v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPrevX:F

    sub-float v0, v3, v5

    .line 162
    .local v0, "dx":F
    iget v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPrevY:F

    sub-float v1, v4, v5

    .line 163
    .local v1, "dy":F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mCropObj:Lcom/android/gallery3d/filtershow/crop/CropObject;

    invoke-virtual {v5, v0, v1}, Lcom/android/gallery3d/filtershow/crop/CropObject;->moveCurrentSelection(FF)Z

    .line 164
    iput v3, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPrevX:F

    .line 165
    iput v4, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mPrevY:F

    goto :goto_1

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setWallpaperSpotlight(FF)V
    .locals 2
    .param p1, "spotlightX"    # F
    .param p2, "spotlightY"    # F

    .prologue
    const/4 v1, 0x0

    .line 232
    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mSpotX:F

    .line 233
    iput p2, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mSpotY:F

    .line 234
    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mSpotX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mSpotY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropView;->mDoSpot:Z

    .line 237
    :cond_0
    return-void
.end method
