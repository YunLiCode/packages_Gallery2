.class public Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.source "ImageCrop.java"


# static fields
.field private static final gPaint:Landroid/graphics/Paint;

.field private static mAspectTextSize:I

.field private static mMinSideSize:I

.field private static mTouchTolerance:I


# instance fields
.field private final cropIndicator:Landroid/graphics/drawable/Drawable;

.field private final indicatorSize:I

.field private mAspect:Ljava/lang/String;

.field private mAspectHeight:F

.field private mAspectWidth:F

.field private final mBorderColor:I

.field private mBounded:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

.field private mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

.field private mDoingCropIntentAction:Z

.field private mEditorCrop:Lcom/android/gallery3d/filtershow/editors/EditorCrop;

.field private mFirstDraw:Z

.field private mFixAspectRatio:Z

.field private mFixedAspect:Z

.field private mLastRot:F

.field private mOffset:[F

.field private movingEdges:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x64

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mMinSideSize:I

    .line 59
    const/16 v0, 0x2d

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 84
    const/16 v0, 0x18

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000

    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 62
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 63
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 64
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 68
    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBounded:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    .line 72
    const/16 v1, 0x80

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    .line 75
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mOffset:[F

    .line 78
    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    .line 79
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mDoingCropIntentAction:Z

    .line 83
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 86
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixedAspect:Z

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    .line 104
    const v1, 0x7f0e00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    .line 105
    return-void

    .line 75
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000

    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 62
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 63
    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 64
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 68
    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBounded:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    .line 72
    const/16 v1, 0x80

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    .line 75
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mOffset:[F

    .line 78
    iput-object v5, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    .line 79
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mDoingCropIntentAction:Z

    .line 83
    const-string v1, ""

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 86
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixedAspect:Z

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    .line 111
    const v1, 0x7f0e00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    .line 112
    return-void

    .line 75
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private cropSetup()V
    .locals 12

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 489
    .local v0, "crop":Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundDisplayedMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 490
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 491
    iget-boolean v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v8, :cond_0

    .line 492
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    iget v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    invoke-static {v0, v8, v9}, Lcom/android/gallery3d/filtershow/crop/CropMath;->fixAspectRatio(Landroid/graphics/RectF;FF)V

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v1, v8

    .line 495
    .local v1, "dCentX":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v2, v8

    .line 497
    .local v2, "dCentY":F
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getBoundedCrop(Landroid/graphics/RectF;)Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    move-result-object v6

    .line 498
    .local v6, "r":Lcom/android/gallery3d/filtershow/crop/BoundedRect;
    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    .line 499
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 500
    sget v8, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mMinSideSize:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v3, v8

    .line 501
    .local v3, "h":F
    const/high16 v7, 0x3f800000

    .line 502
    .local v7, "wScale":F
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    iget v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    div-float v4, v8, v9

    .line 503
    .local v4, "hScale":F
    const/high16 v8, 0x3f800000

    cmpg-float v8, v4, v8

    if-gez v8, :cond_1

    .line 504
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    iget v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    div-float v7, v8, v9

    .line 505
    const/high16 v4, 0x3f800000

    .line 507
    :cond_1
    mul-float v8, v3, v7

    sub-float v8, v1, v8

    mul-float v9, v3, v4

    sub-float v9, v2, v9

    mul-float v10, v3, v7

    add-float/2addr v10, v1

    mul-float v11, v3, v4

    add-float/2addr v11, v2

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 509
    iget-boolean v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v8, :cond_2

    .line 510
    iget v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    iget v9, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    invoke-static {v0, v8, v9}, Lcom/android/gallery3d/filtershow/crop/CropMath;->fixAspectRatio(Landroid/graphics/RectF;FF)V

    .line 512
    :cond_2
    invoke-virtual {v6, v0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->setInner(Landroid/graphics/RectF;)V

    .line 513
    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    .line 514
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 515
    sub-float v8, v1, v3

    sub-float v9, v2, v3

    add-float v10, v1, v3

    add-float v11, v2, v3

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 516
    invoke-virtual {v6, v0}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->setInner(Landroid/graphics/RectF;)V

    .line 517
    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v0

    .line 518
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)Z

    .line 521
    .end local v3    # "h":F
    .end local v4    # "hScale":F
    .end local v7    # "wScale":F
    :cond_3
    return-void
.end method

.method private detectMovingEdges(FF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/16 v8, 0x10

    .line 289
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundDisplayedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 290
    .local v3, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalCropBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 291
    .local v1, "cropped":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 292
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getBoundedCrop(Landroid/graphics/RectF;)Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBounded:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    .line 293
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 295
    iget v6, v1, Landroid/graphics/RectF;->left:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 296
    .local v2, "left":F
    iget v6, v1, Landroid/graphics/RectF;->right:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 297
    .local v4, "right":F
    iget v6, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 298
    .local v5, "top":F
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 301
    .local v0, "bottom":F
    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    add-float/2addr v6, p2

    iget v7, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    sub-float v6, p2, v6

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    cmpg-float v6, v2, v4

    if-gez v6, :cond_4

    .line 303
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 311
    :cond_0
    :goto_0
    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_5

    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    add-float/2addr v6, p1

    iget v7, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    sub-float v6, p1, v6

    iget v7, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    cmpg-float v6, v5, v0

    if-gez v6, :cond_5

    .line 313
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 319
    :cond_1
    :goto_1
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-nez v6, :cond_2

    .line 320
    iput v8, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 322
    :cond_2
    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-eq v6, v8, :cond_3

    .line 323
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    invoke-direct {p0, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixEdgeToCorner(I)I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 326
    return-void

    .line 305
    :cond_4
    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_0

    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    add-float/2addr v6, p2

    iget v7, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    sub-float v6, p2, v6

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 307
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    goto :goto_0

    .line 315
    :cond_5
    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_1

    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    add-float/2addr v6, p1

    iget v7, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    sget v6, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v6, v6

    sub-float v6, p1, v6

    iget v7, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 317
    iget v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    goto :goto_1
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "indicator"    # Landroid/graphics/drawable/Drawable;
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 451
    float-to-int v2, p3

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 452
    .local v0, "left":I
    float-to-int v2, p4

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 453
    .local v1, "top":I
    iget v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->indicatorSize:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 454
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    return-void
.end method

.method private drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 553
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x40400000

    div-float v10, v0, v2

    .line 554
    .local v10, "stepX":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v2, 0x40400000

    div-float v11, v0, v2

    .line 555
    .local v11, "stepY":F
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, v10

    .line 556
    .local v1, "x":F
    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v12, v0, v11

    .line 557
    .local v12, "y":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_0

    .line 558
    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move v3, v1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 559
    add-float/2addr v1, v10

    .line 557
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 561
    :cond_0
    const/4 v9, 0x0

    .local v9, "j":I
    move v4, v12

    .end local v12    # "y":F
    .local v4, "y":F
    :goto_1
    const/4 v0, 0x2

    if-ge v9, v0, :cond_1

    .line 562
    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    move-object v2, p1

    move v6, v4

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 563
    add-float/2addr v4, v11

    .line 561
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 565
    :cond_1
    return-void
.end method

.method private fixEdgeToCorner(I)I
    .locals 1
    .param p1, "moving_edges"    # I

    .prologue
    .line 329
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 330
    or-int/lit8 p1, p1, 0x2

    .line 332
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 333
    or-int/lit8 p1, p1, 0x1

    .line 335
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 336
    or-int/lit8 p1, p1, 0x8

    .line 338
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 339
    or-int/lit8 p1, p1, 0x4

    .line 341
    :cond_3
    return p1
.end method

.method private fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;
    .locals 6
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "moving_corner"    # I
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "newCrop":Landroid/graphics/RectF;
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    .line 348
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 360
    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    const/16 v1, 0x9

    if-ne p2, v1, :cond_2

    .line 351
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    goto :goto_0

    .line 353
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 354
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    goto :goto_0

    .line 356
    :cond_3
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 357
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "newCrop":Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v0    # "newCrop":Landroid/graphics/RectF;
    goto :goto_0
.end method

.method private getBoundedCrop(Landroid/graphics/RectF;)Lcom/android/gallery3d/filtershow/crop/BoundedRect;
    .locals 8
    .param p1, "crop"    # Landroid/graphics/RectF;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 276
    .local v2, "photo":Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getPhotoBoundDisplayedMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 277
    .local v1, "mp":Landroid/graphics/Matrix;
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v4

    .line 278
    .local v4, "photoCorners":[F
    const/4 v6, 0x2

    new-array v3, v6, [F

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    aput v7, v3, v6

    .line 281
    .local v3, "photoCenter":[F
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 282
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 283
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 284
    .local v5, "scaledPhoto":Landroid/graphics/RectF;
    invoke-static {v4, v3, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUnrotated([F[FLandroid/graphics/RectF;)F

    move-result v0

    .line 285
    .local v0, "angle":F
    new-instance v6, Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    invoke-direct {v6, v0, v5, p1}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-object v6
.end method

.method private getCropBoundDisplayedMatrix()Landroid/graphics/Matrix;
    .locals 8

    .prologue
    .line 211
    const/4 v2, 0x2

    new-array v5, v2, [F

    .line 212
    .local v5, "displayCenter":[F
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 213
    .local v1, "scaledCrop":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 214
    .local v0, "scaledPhoto":Landroid/graphics/RectF;
    invoke-virtual {p0, v0, v1, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getTransformState(Landroid/graphics/RectF;Landroid/graphics/RectF;[F)F

    move-result v7

    .line 215
    .local v7, "scale":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildWanderingCropMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v6

    .line 217
    .local v6, "m1":Landroid/graphics/Matrix;
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 218
    return-object v6
.end method

.method private getPhotoBoundDisplayedMatrix()Landroid/graphics/Matrix;
    .locals 8

    .prologue
    .line 200
    const/4 v2, 0x2

    new-array v5, v2, [F

    .line 201
    .local v5, "displayCenter":[F
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 202
    .local v1, "scaledCrop":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 203
    .local v0, "scaledPhoto":Landroid/graphics/RectF;
    invoke-virtual {p0, v0, v1, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getTransformState(Landroid/graphics/RectF;Landroid/graphics/RectF;[F)F

    move-result v7

    .line 204
    .local v7, "scale":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalFlip()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildCenteredPhotoMatrix(Landroid/graphics/RectF;Landroid/graphics/RectF;FFLcom/android/gallery3d/filtershow/imageshow/GeometryMetadata$FLIP;[F)Landroid/graphics/Matrix;

    move-result-object v6

    .line 206
    .local v6, "m":Landroid/graphics/Matrix;
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 207
    return-object v6
.end method

.method private static getUnrotated([F[FLandroid/graphics/RectF;)F
    .locals 11
    .param p0, "rotatedRect"    # [F
    .param p1, "center"    # [F
    .param p2, "unrotated"    # Landroid/graphics/RectF;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 226
    aget v5, p0, v10

    const/4 v6, 0x3

    aget v6, p0, v6

    sub-float v2, v5, v6

    .line 227
    .local v2, "dy":F
    aget v5, p0, v9

    const/4 v6, 0x2

    aget v6, p0, v6

    sub-float v1, v5, v6

    .line 228
    .local v1, "dx":F
    div-float v5, v2, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide v7, 0x4066800000000000L

    mul-double/2addr v5, v7

    const-wide v7, 0x400921fb54442d18L

    div-double/2addr v5, v7

    double-to-float v0, v5

    .line 229
    .local v0, "angle":F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 230
    .local v3, "m":Landroid/graphics/Matrix;
    neg-float v5, v0

    aget v6, p1, v9

    aget v7, p1, v10

    invoke-virtual {v3, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 231
    array-length v5, p0

    new-array v4, v5, [F

    .line 232
    .local v4, "unrotatedRect":[F
    invoke-virtual {v3, v4, p0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 233
    invoke-static {v4}, Lcom/android/gallery3d/filtershow/crop/CropMath;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 234
    return v0
.end method

.method private moveEdges(FF)V
    .locals 22
    .param p1, "dX"    # F
    .param p2, "dY"    # F

    .prologue
    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBounded:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v4

    .line 366
    .local v4, "crop":Landroid/graphics/RectF;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundDisplayedMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    .line 368
    .local v10, "mc":Landroid/graphics/Matrix;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v14

    .line 369
    .local v14, "photo":Landroid/graphics/RectF;
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getPhotoBoundDisplayedMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    .line 370
    .local v12, "mp":Landroid/graphics/Matrix;
    invoke-static {v14}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v16

    .line 371
    .local v16, "photoCorners":[F
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v15, v0, [F

    const/16 v19, 0x0

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v20

    aput v20, v15, v19

    const/16 v19, 0x1

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v20

    aput v20, v15, v19

    .line 374
    .local v15, "photoCenter":[F
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 375
    invoke-virtual {v12, v15}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 377
    sget v19, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mMinSideSize:I

    move/from16 v0, v19

    int-to-float v11, v0

    .line 379
    .local v11, "minWidthHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBounded:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    move-object/from16 v19, v0

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->moveInner(FF)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBounded:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v17

    .line 382
    .local v17, "r":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)Z

    .line 448
    .end local v17    # "r":Landroid/graphics/RectF;
    :goto_0
    return-void

    .line 385
    :cond_0
    const/4 v6, 0x0

    .line 386
    .local v6, "dx":F
    const/4 v7, 0x0

    .line 388
    .local v7, "dy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_1

    .line 389
    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    add-float v19, v19, p1

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    sub-float v20, v20, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    sub-float v6, v19, v20

    .line 391
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_2

    .line 392
    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    add-float v19, v19, p2

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    sub-float v20, v20, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    sub-float v7, v19, v20

    .line 394
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_3

    .line 395
    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    add-float v19, v19, p1

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    add-float v20, v20, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    sub-float v6, v19, v20

    .line 398
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_4

    .line 399
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    add-float v19, v19, p2

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    add-float v20, v20, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    sub-float v7, v19, v20

    .line 403
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 404
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v8, v0, [F

    const/16 v19, 0x0

    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    aput v20, v8, v19

    const/16 v19, 0x1

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    aput v20, v8, v19

    .line 407
    .local v8, "l1":[F
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v9, v0, [F

    const/16 v19, 0x0

    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    aput v20, v9, v19

    const/16 v19, 0x1

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    aput v20, v9, v19

    .line 410
    .local v9, "l2":[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 411
    :cond_5
    const/16 v19, 0x1

    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    aput v20, v8, v19

    .line 412
    const/16 v19, 0x1

    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    aput v20, v9, v19

    .line 414
    :cond_6
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v2, v0, [F

    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, v8, v20

    const/16 v21, 0x0

    aget v21, v9, v21

    sub-float v20, v20, v21

    aput v20, v2, v19

    const/16 v19, 0x1

    const/16 v20, 0x1

    aget v20, v8, v20

    const/16 v21, 0x1

    aget v21, v9, v21

    sub-float v20, v20, v21

    aput v20, v2, v19

    .line 417
    .local v2, "b":[F
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v5, v0, [F

    const/16 v19, 0x0

    aput v6, v5, v19

    const/16 v19, 0x1

    aput v7, v5, v19

    .line 420
    .local v5, "disp":[F
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->normalize([F)[F

    move-result-object v3

    .line 421
    .local v3, "bUnit":[F
    invoke-static {v5, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->scalarProjection([F[F)F

    move-result v18

    .line 422
    .local v18, "sp":F
    const/16 v19, 0x0

    aget v19, v3, v19

    mul-float v6, v18, v19

    .line 423
    const/16 v19, 0x1

    aget v19, v3, v19

    mul-float v7, v18, v19

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v6, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->fixedCornerResize(Landroid/graphics/RectF;IFF)Landroid/graphics/RectF;

    move-result-object v13

    .line 426
    .local v13, "newCrop":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBounded:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->fixedAspectResizeInner(Landroid/graphics/RectF;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBounded:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v13

    .line 428
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)Z

    goto/16 :goto_0

    .line 431
    .end local v2    # "b":[F
    .end local v3    # "bUnit":[F
    .end local v5    # "disp":[F
    .end local v8    # "l1":[F
    .end local v9    # "l2":[F
    .end local v13    # "newCrop":Landroid/graphics/RectF;
    .end local v18    # "sp":F
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_8

    .line 432
    iget v0, v4, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    add-float v19, v19, v6

    move/from16 v0, v19

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 434
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_9

    .line 435
    iget v0, v4, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    add-float v19, v19, v7

    move/from16 v0, v19

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 437
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_a

    .line 438
    iget v0, v4, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    add-float v19, v19, v6

    move/from16 v0, v19

    iput v0, v4, Landroid/graphics/RectF;->right:F

    .line 440
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_b

    .line 441
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    add-float v19, v19, v7

    move/from16 v0, v19

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    .line 445
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBounded:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->resizeInner(Landroid/graphics/RectF;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBounded:Lcom/android/gallery3d/filtershow/crop/BoundedRect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/filtershow/crop/BoundedRect;->getInner()Landroid/graphics/RectF;

    move-result-object v4

    .line 447
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setCropBounds(Landroid/graphics/RectF;)Z

    goto/16 :goto_0
.end method

.method public static setAspectTextSize(I)V
    .locals 0
    .param p0, "textSize"    # I

    .prologue
    .line 91
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    .line 92
    return-void
.end method

.method public static setMinCropSize(I)V
    .locals 0
    .param p0, "minHeightWidth"    # I

    .prologue
    .line 139
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mMinSideSize:I

    .line 140
    return-void
.end method

.method public static setTouchTolerance(I)V
    .locals 0
    .param p0, "tolerance"    # I

    .prologue
    .line 132
    sput p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 133
    return-void
.end method

.method private swapAspect()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mDoingCropIntentAction:Z

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 124
    .local v0, "temp":F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 125
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    goto :goto_0
.end method


# virtual methods
.method public apply(FF)V
    .locals 2
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 152
    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 153
    iput p2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 154
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 156
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 157
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->saveAndSetPreset()V

    .line 158
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 159
    return-void
.end method

.method public applyClear()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 178
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 179
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 180
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 182
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 183
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->saveAndSetPreset()V

    .line 184
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 185
    return-void
.end method

.method public applyOriginal()V
    .locals 5

    .prologue
    .line 162
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 164
    .local v1, "photobounds":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 165
    .local v3, "w":F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 166
    .local v0, "h":F
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 167
    .local v2, "scale":F
    div-float v4, v3, v2

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectWidth:F

    .line 168
    div-float v4, v0, v2

    iput v4, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectHeight:F

    .line 169
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalStraighten()F

    move-result v4

    invoke-static {v1, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getUntranslatedStraightenCropBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 171
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 172
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->saveAndSetPreset()V

    .line 173
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 174
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getAspectX()I

    move-result v0

    .line 190
    .local v0, "x":I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getAspectY()I

    move-result v1

    .line 191
    .local v1, "y":I
    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mDoingCropIntentAction:Z

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 192
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 197
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyClear()V

    goto :goto_0
.end method

.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 569
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 570
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v8, 0xff

    const/16 v34, 0xff

    move/from16 v0, v34

    invoke-virtual {v3, v4, v5, v8, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 572
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    if-eqz v3, :cond_0

    .line 573
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 574
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 577
    :cond_0
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mOffset:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawTransformed(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;[F)Landroid/graphics/RectF;

    move-result-object v13

    .line 578
    .local v13, "crop":Landroid/graphics/RectF;
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mBorderColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 579
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 580
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 582
    const/16 v18, 0x1

    .line 584
    .local v18, "doThirds":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v3, :cond_2

    .line 585
    const/16 v25, 0x0

    .line 586
    .local v25, "spotlightX":F
    const/16 v26, 0x0

    .line 587
    .local v26, "spotlightY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    if-eqz v3, :cond_1

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getSpotlightX()F

    move-result v25

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getSpotlightY()F

    move-result v26

    .line 591
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mDoingCropIntentAction:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    cmpl-float v3, v25, v3

    if-lez v3, :cond_c

    const/4 v3, 0x0

    cmpl-float v3, v26, v3

    if-lez v3, :cond_c

    .line 592
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v27, v3, v25

    .line 593
    .local v27, "sx":F
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v28, v3, v26

    .line 594
    .local v28, "sy":F
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    .line 595
    .local v14, "cx":F
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    .line 596
    .local v15, "cy":F
    new-instance v22, Landroid/graphics/RectF;

    const/high16 v3, 0x40000000

    div-float v3, v27, v3

    sub-float v3, v14, v3

    const/high16 v4, 0x40000000

    div-float v4, v28, v4

    sub-float v4, v15, v4

    const/high16 v5, 0x40000000

    div-float v5, v27, v5

    add-float/2addr v5, v14

    const/high16 v8, 0x40000000

    div-float v8, v28, v8

    add-float/2addr v8, v15

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 597
    .local v22, "r1":Landroid/graphics/RectF;
    move/from16 v29, v27

    .line 598
    .local v29, "temp":F
    move/from16 v27, v28

    .line 599
    move/from16 v28, v29

    .line 600
    new-instance v23, Landroid/graphics/RectF;

    const/high16 v3, 0x40000000

    div-float v3, v27, v3

    sub-float v3, v14, v3

    const/high16 v4, 0x40000000

    div-float v4, v28, v4

    sub-float v4, v15, v4

    const/high16 v5, 0x40000000

    div-float v5, v27, v5

    add-float/2addr v5, v14

    const/high16 v8, 0x40000000

    div-float v8, v28, v8

    add-float/2addr v8, v15

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 601
    .local v23, "r2":Landroid/graphics/RectF;
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 602
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 603
    const/16 v18, 0x0

    .line 638
    .end local v14    # "cx":F
    .end local v15    # "cy":F
    .end local v22    # "r1":Landroid/graphics/RectF;
    .end local v23    # "r2":Landroid/graphics/RectF;
    .end local v25    # "spotlightX":F
    .end local v26    # "spotlightY":F
    .end local v27    # "sx":F
    .end local v28    # "sy":F
    .end local v29    # "temp":F
    :cond_2
    :goto_0
    if-eqz v18, :cond_3

    .line 639
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 643
    :cond_3
    move-object/from16 v24, v13

    .line 644
    .local v24, "scaledCrop":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-nez v3, :cond_f

    const/16 v20, 0x1

    .line 645
    .local v20, "notMoving":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFixAspectRatio:Z

    if-eqz v3, :cond_10

    .line 646
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    if-eqz v20, :cond_5

    .line 647
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 649
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_6

    if-eqz v20, :cond_7

    .line 650
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 652
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_8

    if-eqz v20, :cond_9

    .line 653
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 655
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    const/16 v4, 0xc

    if-eq v3, v4, :cond_a

    if-eqz v20, :cond_b

    .line 656
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 672
    :cond_b
    :goto_2
    return-void

    .line 605
    .end local v20    # "notMoving":Z
    .end local v24    # "scaledCrop":Landroid/graphics/RectF;
    .restart local v25    # "spotlightX":F
    .restart local v26    # "spotlightY":F
    :cond_c
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v32

    .line 606
    .local v32, "w":F
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v19

    .line 607
    .local v19, "h":F
    mul-float v3, v32, v32

    mul-float v4, v19, v19

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    move/from16 v17, v0

    .line 609
    .local v17, "diag":F
    const/high16 v16, 0x41a00000

    .line 610
    .local v16, "dash_len":F
    div-float v3, v17, v16

    float-to-int v0, v3

    move/from16 v21, v0

    .line 611
    .local v21, "num_intervals":I
    const/4 v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v30, v0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/RectF;->left:F

    aput v4, v30, v3

    const/4 v3, 0x1

    iget v4, v13, Landroid/graphics/RectF;->top:F

    aput v4, v30, v3

    .line 614
    .local v30, "tl":[F
    const/4 v3, 0x0

    aget v3, v30, v3

    const/high16 v4, 0x40000000

    div-float v4, v32, v4

    add-float v10, v3, v4

    .line 615
    .local v10, "centX":F
    const/4 v3, 0x1

    aget v3, v30, v3

    const/high16 v4, 0x40000000

    div-float v4, v19, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40a00000

    add-float v11, v3, v4

    .line 616
    .local v11, "centY":F
    const/4 v3, 0x2

    new-array v9, v3, [F

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/RectF;->right:F

    aput v4, v9, v3

    const/4 v3, 0x1

    iget v4, v13, Landroid/graphics/RectF;->bottom:F

    aput v4, v9, v3

    .line 619
    .local v9, "br":[F
    move-object/from16 v0, v30

    invoke-static {v0, v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->getUnitVectorFromPoints([F[F)[F

    move-result-object v31

    .line 621
    .local v31, "vec":[F
    move-object/from16 v12, v30

    .line 622
    .local v12, "counter":[F
    const/16 v33, 0x0

    .local v33, "x":I
    :goto_3
    move/from16 v0, v33

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    .line 623
    const/4 v3, 0x0

    aget v3, v12, v3

    const/4 v4, 0x0

    aget v4, v31, v4

    mul-float v4, v4, v16

    add-float v6, v3, v4

    .line 624
    .local v6, "tempX":F
    const/4 v3, 0x1

    aget v3, v12, v3

    const/4 v4, 0x1

    aget v4, v31, v4

    mul-float v4, v4, v16

    add-float v7, v3, v4

    .line 625
    .local v7, "tempY":F
    rem-int/lit8 v3, v33, 0x2

    if-nez v3, :cond_d

    div-int/lit8 v3, v21, 0x2

    sub-int v3, v33, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_d

    .line 626
    const/4 v3, 0x0

    aget v4, v12, v3

    const/4 v3, 0x1

    aget v5, v12, v3

    sget-object v8, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 628
    :cond_d
    const/4 v3, 0x0

    aput v6, v12, v3

    .line 629
    const/4 v3, 0x1

    aput v7, v12, v3

    .line 622
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .line 632
    .end local v6    # "tempX":F
    .end local v7    # "tempY":F
    :cond_e
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 633
    sget-object v3, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspectTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    sget-object v4, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->gPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 644
    .end local v9    # "br":[F
    .end local v10    # "centX":F
    .end local v11    # "centY":F
    .end local v12    # "counter":[F
    .end local v16    # "dash_len":F
    .end local v17    # "diag":F
    .end local v19    # "h":F
    .end local v21    # "num_intervals":I
    .end local v25    # "spotlightX":F
    .end local v26    # "spotlightY":F
    .end local v30    # "tl":[F
    .end local v31    # "vec":[F
    .end local v32    # "w":F
    .end local v33    # "x":I
    .restart local v24    # "scaledCrop":Landroid/graphics/RectF;
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 659
    .restart local v20    # "notMoving":Z
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_11

    if-eqz v20, :cond_12

    .line 660
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 662
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_13

    if-eqz v20, :cond_14

    .line 663
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 665
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_15

    if-eqz v20, :cond_16

    .line 666
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 668
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_17

    if-eqz v20, :cond_b

    .line 669
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    goto/16 :goto_2
.end method

.method protected gainedVisibility()V
    .locals 3

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v0

    .line 535
    .local v0, "rot":F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    sub-float v1, v0, v1

    const/high16 v2, 0x42b40000

    div-float/2addr v1, v2

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->swapAspect()V

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 539
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mFirstDraw:Z

    .line 540
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0185

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imageLoaded()V
    .locals 0

    .prologue
    .line 525
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->imageLoaded()V

    .line 526
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->syncLocalToMasterGeometry()V

    .line 527
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->clear()V

    .line 528
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 529
    return-void
.end method

.method protected lostVisibility()V
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalRotation()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mLastRot:F

    .line 550
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setActionUp()V

    .line 483
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->cropSetup()V

    .line 484
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 485
    return-void
.end method

.method public resetParameter()V
    .locals 0

    .prologue
    .line 544
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->resetParameter()V

    .line 545
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 459
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 460
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mOffset:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mOffset:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    add-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->detectMovingEdges(FF)V

    .line 462
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 473
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    if-eqz v0, :cond_0

    .line 474
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->mCurrentY:F

    sub-float v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->moveEdges(FF)V

    .line 476
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 478
    return-void
.end method

.method protected setActionUp()V
    .locals 1

    .prologue
    .line 466
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->movingEdges:I

    .line 468
    return-void
.end method

.method public setAspectButton(I)V
    .locals 8
    .param p1, "itemId"    # I

    .prologue
    const/high16 v7, 0x40e00000

    const/high16 v6, 0x40a00000

    const/high16 v5, 0x40800000

    const/high16 v4, 0x40400000

    const/high16 v3, 0x3f800000

    .line 675
    packed-switch p1, :pswitch_data_0

    .line 719
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 720
    return-void

    .line 677
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v1

    const v2, 0x7f0b016b

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {p0, v3, v3}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 679
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    .end local v0    # "t":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v1

    const v2, 0x7f0b016c

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 684
    .restart local v0    # "t":Ljava/lang/String;
    invoke-virtual {p0, v5, v4}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 685
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 689
    .end local v0    # "t":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v1

    const v2, 0x7f0b016d

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    .restart local v0    # "t":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 691
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 695
    .end local v0    # "t":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v1

    const v2, 0x7f0b016f

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    .restart local v0    # "t":Ljava/lang/String;
    invoke-virtual {p0, v6, v7}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 697
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    .end local v0    # "t":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v1

    const v2, 0x7f0b0170

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    .restart local v0    # "t":Ljava/lang/String;
    invoke-virtual {p0, v7, v6}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->apply(FF)V

    .line 703
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 707
    .end local v0    # "t":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v1

    const v2, 0x7f0b0172

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    .restart local v0    # "t":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyClear()V

    .line 709
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto :goto_0

    .line 713
    .end local v0    # "t":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getActivity()Lcom/android/gallery3d/filtershow/FilterShowActivity;

    move-result-object v1

    const v2, 0x7f0b0173

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    .restart local v0    # "t":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->applyOriginal()V

    .line 715
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setAspectString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x7f0a01c8
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setAspectString(Ljava/lang/String;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mAspect:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setCropActionFlag(Z)V
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mDoingCropIntentAction:Z

    .line 148
    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)Z
    .locals 13
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 242
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 243
    .local v0, "cbounds":Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getCropBoundDisplayedMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 244
    .local v1, "mc":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 245
    .local v2, "mcInv":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 246
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 248
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 249
    .local v5, "newWidth":F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 250
    .local v4, "newHeight":F
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getTransformState(Landroid/graphics/RectF;Landroid/graphics/RectF;[F)F

    move-result v9

    .line 251
    .local v9, "scale":F
    sget v10, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mMinSideSize:I

    int-to-float v10, v10

    div-float v3, v10, v9

    .line 252
    .local v3, "minWidthHeight":F
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getLocalPhotoBounds()Landroid/graphics/RectF;

    move-result-object v8

    .line 255
    .local v8, "pbounds":Landroid/graphics/RectF;
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpg-float v10, v10, v3

    if-ltz v10, :cond_0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_1

    .line 256
    :cond_0
    const/4 v10, 0x0

    .line 271
    :goto_0
    return v10

    .line 260
    :cond_1
    cmpg-float v10, v5, v3

    if-ltz v10, :cond_2

    cmpg-float v10, v4, v3

    if-gez v10, :cond_3

    .line 261
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    sub-float v6, v10, v11

    .line 265
    .local v6, "newX":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    sub-float v7, v10, v11

    .line 266
    .local v7, "newY":F
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mOffset:[F

    const/4 v11, 0x0

    aput v6, v10, v11

    .line 267
    iget-object v10, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mOffset:[F

    const/4 v11, 0x1

    aput v7, v10, v11

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->setLocalCropBounds(Landroid/graphics/RectF;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->invalidate()V

    .line 271
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/EditorCrop;)V
    .locals 0
    .param p1, "editorCrop"    # Lcom/android/gallery3d/filtershow/editors/EditorCrop;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mEditorCrop:Lcom/android/gallery3d/filtershow/editors/EditorCrop;

    .line 734
    return-void
.end method

.method public setExtras(Lcom/android/gallery3d/filtershow/crop/CropExtras;)V
    .locals 0
    .param p1, "e"    # Lcom/android/gallery3d/filtershow/crop/CropExtras;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageCrop;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    .line 144
    return-void
.end method
