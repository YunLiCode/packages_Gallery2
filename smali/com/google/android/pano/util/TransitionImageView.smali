.class Lcom/google/android/pano/util/TransitionImageView;
.super Landroid/view/View;
.source "TransitionImageView.java"


# instance fields
.field private mAlphaDiff:F

.field private mBgAlphaDiff:I

.field private mBgBlueDiff:I

.field private mBgGreenDiff:I

.field private mBgHasDiff:Z

.field private mBgRedDiff:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mClipBottomDiff:F

.field private mClipLeftDiff:F

.field private mClipRect:Landroid/graphics/RectF;

.field private mClipRightDiff:F

.field private mClipTopDiff:F

.field private mColorMatrix:Landroid/graphics/ColorMatrix;

.field private mDst:Lcom/google/android/pano/util/TransitionImage;

.field private mProgress:F

.field private mSaturationDiff:F

.field private mScaleX:F

.field private mScaleXDiff:F

.field private mScaleY:F

.field private mScaleYDiff:F

.field private mSrc:Lcom/google/android/pano/util/TransitionImage;

.field private mSrcBgColor:I

.field private mSrcClipRect:Landroid/graphics/RectF;

.field private mSrcUnclipRect:Landroid/graphics/RectF;

.field private mTranslationXDiff:F

.field private mTranslationYDiff:F

.field private mUnclipBottomDiff:F

.field private mUnclipLeftDiff:F

.field private mUnclipRect:Landroid/graphics/Rect;

.field private mUnclipRightDiff:F

.field private mUnclipTopDiff:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/util/TransitionImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/pano/util/TransitionImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 78
    invoke-virtual {p0, v1}, Lcom/google/android/pano/util/TransitionImageView;->setPivotX(F)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/google/android/pano/util/TransitionImageView;->setPivotY(F)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/util/TransitionImageView;->setWillNotDraw(Z)V

    .line 81
    return-void
.end method

.method private calculateDiffs()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000

    .line 124
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v5}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    .line 125
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v5}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    .line 126
    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleXDiff:F

    .line 127
    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleYDiff:F

    .line 128
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v5}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mTranslationXDiff:F

    .line 129
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v5}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mTranslationYDiff:F

    .line 131
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 133
    .local v0, "dstClipRect":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getClippedRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 134
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v5}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 136
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    div-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 137
    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    div-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 138
    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    div-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 139
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    div-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 140
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipLeftDiff:F

    .line 141
    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRightDiff:F

    .line 142
    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipTopDiff:F

    .line 143
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipBottomDiff:F

    .line 145
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 147
    .local v2, "dstUnclipRect":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getUnclippedRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 148
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v5}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 150
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    div-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 151
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    div-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 152
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    div-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 153
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    div-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 154
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipLeftDiff:F

    .line 155
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRightDiff:F

    .line 156
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipTopDiff:F

    .line 157
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipBottomDiff:F

    .line 159
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getAlpha()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v5}, Lcom/google/android/pano/util/TransitionImage;->getAlpha()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mAlphaDiff:F

    .line 160
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getBackground()I

    move-result v1

    .line 161
    .local v1, "dstColor":I
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getBackground()I

    move-result v3

    .line 162
    .local v3, "srcColor":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgAlphaDiff:I

    .line 163
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgRedDiff:I

    .line 164
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgGreenDiff:I

    .line 165
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgBlueDiff:I

    .line 166
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getSaturation()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v5}, Lcom/google/android/pano/util/TransitionImage;->getSaturation()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mSaturationDiff:F

    .line 167
    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgAlphaDiff:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgRedDiff:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgGreenDiff:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgBlueDiff:I

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgHasDiff:Z

    .line 169
    return-void

    .line 167
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private initializeView()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000

    .line 94
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 95
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 99
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImage;->getAlpha()F

    move-result v2

    const/high16 v3, 0x437f0000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getSaturation()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImage;->getSaturation()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 108
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getBackground()I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    .line 111
    iget v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    if-eqz v1, :cond_2

    .line 112
    iget v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/util/TransitionImageView;->setBackgroundColor(I)V

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImage;->getClippedRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 116
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v3}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 119
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImage;->getUnclippedRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v3}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 121
    return-void
.end method


# virtual methods
.method public getDestTransition()Lcom/google/android/pano/util/TransitionImage;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    return-object v0
.end method

.method public getSourceTransition()Lcom/google/android/pano/util/TransitionImage;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 235
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDestTransition(Lcom/google/android/pano/util/TransitionImage;)V
    .locals 0
    .param p1, "dst"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    .line 90
    invoke-direct {p0}, Lcom/google/android/pano/util/TransitionImageView;->calculateDiffs()V

    .line 91
    return-void
.end method

.method public setProgress(F)V
    .locals 6
    .param p1, "progress"    # F

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000

    .line 180
    iput p1, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    .line 183
    iget v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleXDiff:F

    iget v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/google/android/pano/util/TransitionImageView;->setScaleX(F)V

    .line 184
    iget v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleYDiff:F

    iget v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/google/android/pano/util/TransitionImageView;->setScaleY(F)V

    .line 187
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v0}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mTranslationXDiff:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/pano/util/TransitionImageView;->setTranslationX(F)V

    .line 188
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v0}, Lcom/google/android/pano/util/TransitionImage;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mTranslationYDiff:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/pano/util/TransitionImageView;->setTranslationY(F)V

    .line 191
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipLeftDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 192
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipTopDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 193
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRightDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 194
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipBottomDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 195
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipLeftDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 199
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipTopDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 200
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRightDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 201
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipBottomDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 204
    iget v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mAlphaDiff:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getAlpha()F

    move-result v1

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mAlphaDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 207
    :cond_0
    iget v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mSaturationDiff:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getSaturation()F

    move-result v1

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSaturationDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 209
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 213
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgHasDiff:Z

    if-eqz v0, :cond_2

    .line 214
    iget v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgAlphaDiff:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgRedDiff:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgGreenDiff:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgBlueDiff:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/util/TransitionImageView;->setBackgroundColor(I)V

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->invalidate()V

    .line 222
    return-void
.end method

.method public setSourceTransition(Lcom/google/android/pano/util/TransitionImage;)V
    .locals 0
    .param p1, "src"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    .line 85
    invoke-direct {p0}, Lcom/google/android/pano/util/TransitionImageView;->initializeView()V

    .line 86
    return-void
.end method
