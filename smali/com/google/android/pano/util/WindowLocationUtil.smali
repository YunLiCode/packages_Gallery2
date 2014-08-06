.class public Lcom/google/android/pano/util/WindowLocationUtil;
.super Ljava/lang/Object;
.source "WindowLocationUtil.java"


# static fields
.field private static final sTmpFloat4:[F

.field private static final sTmpFloat8:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageLocationsInWindow(Landroid/widget/ImageView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 12
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "clippedBounds"    # Landroid/graphics/RectF;
    .param p2, "unclippedBitmapRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 102
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 105
    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 106
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 107
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    aput v3, v2, v7

    .line 108
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    aput v3, v2, v8

    .line 109
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    aput v3, v2, v9

    .line 110
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    aput v3, v2, v10

    .line 111
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    aput v3, v2, v11

    .line 112
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    const/4 v3, 0x5

    iget v4, p2, Landroid/graphics/RectF;->top:F

    aput v4, v2, v3

    .line 113
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    const/4 v3, 0x6

    iget v4, p2, Landroid/graphics/RectF;->right:F

    aput v4, v2, v3

    .line 114
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    const/4 v3, 0x7

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    aput v4, v2, v3

    .line 115
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    invoke-static {p0, v2}, Lcom/google/android/pano/util/WindowLocationUtil;->getLocationsInWindow(Landroid/view/View;[F)V

    .line 116
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    aget v2, v2, v7

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 117
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    aget v2, v2, v8

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 118
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    aget v2, v2, v9

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 119
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    aget v2, v2, v10

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 120
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    aget v2, v2, v11

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 121
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 122
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    iput v2, p2, Landroid/graphics/RectF;->right:F

    .line 123
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat8:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    iput v2, p2, Landroid/graphics/RectF;->bottom:F

    .line 136
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    aput v3, v2, v7

    .line 126
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    aput v3, v2, v8

    .line 127
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    aput v3, v2, v9

    .line 128
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    aput v3, v2, v10

    .line 129
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    invoke-static {p0, v2}, Lcom/google/android/pano/util/WindowLocationUtil;->getLocationsInWindow(Landroid/view/View;[F)V

    .line 130
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    aget v2, v2, v7

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 131
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    aget v2, v2, v8

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 132
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    aget v2, v2, v9

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 133
    sget-object v2, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    aget v2, v2, v10

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 134
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public static getLocationsInWindow(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    sget-object v0, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v2

    .line 82
    sget-object v0, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v3

    .line 83
    sget-object v0, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v4

    .line 84
    sget-object v0, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aput v1, v0, v5

    .line 85
    sget-object v0, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    invoke-static {p0, v0}, Lcom/google/android/pano/util/WindowLocationUtil;->getLocationsInWindow(Landroid/view/View;[F)V

    .line 86
    sget-object v0, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    aget v0, v0, v2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 87
    sget-object v0, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    aget v0, v0, v3

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 88
    sget-object v0, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    aget v0, v0, v4

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 89
    sget-object v0, Lcom/google/android/pano/util/WindowLocationUtil;->sTmpFloat4:[F

    aget v0, v0, v5

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 90
    return-void
.end method

.method public static getLocationsInWindow(Landroid/view/View;[F)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "points"    # [F

    .prologue
    .line 28
    if-eqz p1, :cond_0

    array-length v6, p1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 29
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 31
    :cond_1
    array-length v3, p1

    .line 32
    .local v3, "length":I
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 33
    .local v4, "matrix":Landroid/graphics/Matrix;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_2

    .line 34
    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 37
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 38
    .local v0, "deltax":I
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 39
    .local v1, "deltay":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 40
    aget v6, p1, v2

    int-to-float v7, v0

    add-float/2addr v6, v7

    aput v6, p1, v2

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    aget v6, p1, v2

    int-to-float v7, v1

    add-float/2addr v6, v7

    aput v6, p1, v2

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 47
    .local v5, "viewParent":Landroid/view/ViewParent;
    :goto_1
    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_7

    move-object p0, v5

    .line 48
    check-cast p0, Landroid/view/View;

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    .line 52
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    .line 53
    aget v6, p1, v2

    int-to-float v7, v0

    sub-float/2addr v6, v7

    aput v6, p1, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    aget v6, p1, v2

    int-to-float v7, v1

    sub-float/2addr v6, v7

    aput v6, p1, v2

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 60
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_5

    .line 61
    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 64
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 66
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_6

    .line 67
    aget v6, p1, v2

    int-to-float v7, v0

    add-float/2addr v6, v7

    aput v6, p1, v2

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    aget v6, p1, v2

    int-to-float v7, v1

    add-float/2addr v6, v7

    aput v6, p1, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 73
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_1

    .line 75
    :cond_7
    return-void
.end method
