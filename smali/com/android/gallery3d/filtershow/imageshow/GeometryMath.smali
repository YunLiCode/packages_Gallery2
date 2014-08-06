.class public Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;
.super Ljava/lang/Object;
.source "GeometryMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "i"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 26
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static dotProduct([F[F)F
    .locals 3
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    aget v0, p0, v1

    aget v1, p1, v1

    mul-float/2addr v0, v1

    aget v1, p0, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static getUnitVectorFromPoints([F[F)[F
    .locals 7
    .param p0, "point1"    # [F
    .param p1, "point2"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    const/4 v2, 0x2

    new-array v1, v2, [F

    aget v2, p1, v5

    aget v3, p0, v5

    sub-float/2addr v2, v3

    aput v2, v1, v5

    aget v2, p1, v6

    aget v3, p0, v6

    sub-float/2addr v2, v3

    aput v2, v1, v6

    .line 105
    .local v1, "p":[F
    aget v2, v1, v5

    aget v3, v1, v5

    mul-float/2addr v2, v3

    aget v3, v1, v6

    aget v4, v1, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 106
    .local v0, "length":F
    aget v2, v1, v5

    div-float/2addr v2, v0

    aput v2, v1, v5

    .line 107
    aget v2, v1, v6

    div-float/2addr v2, v0

    aput v2, v1, v6

    .line 108
    return-object v1
.end method

.method public static lineIntersect([F[F)[F
    .locals 20
    .param p0, "line1"    # [F
    .param p1, "line2"    # [F

    .prologue
    .line 30
    const/16 v18, 0x0

    aget v1, p0, v18

    .line 31
    .local v1, "a0":F
    const/16 v18, 0x1

    aget v2, p0, v18

    .line 32
    .local v2, "a1":F
    const/16 v18, 0x2

    aget v3, p0, v18

    .line 33
    .local v3, "b0":F
    const/16 v18, 0x3

    aget v4, p0, v18

    .line 34
    .local v4, "b1":F
    const/16 v18, 0x0

    aget v5, p1, v18

    .line 35
    .local v5, "c0":F
    const/16 v18, 0x1

    aget v6, p1, v18

    .line 36
    .local v6, "c1":F
    const/16 v18, 0x2

    aget v7, p1, v18

    .line 37
    .local v7, "d0":F
    const/16 v18, 0x3

    aget v8, p1, v18

    .line 38
    .local v8, "d1":F
    sub-float v11, v1, v3

    .line 39
    .local v11, "t0":F
    sub-float v12, v2, v4

    .line 40
    .local v12, "t1":F
    sub-float v13, v3, v7

    .line 41
    .local v13, "t2":F
    sub-float v14, v8, v4

    .line 42
    .local v14, "t3":F
    sub-float v15, v5, v7

    .line 43
    .local v15, "t4":F
    sub-float v16, v6, v8

    .line 45
    .local v16, "t5":F
    mul-float v18, v12, v15

    mul-float v19, v11, v16

    sub-float v9, v18, v19

    .line 46
    .local v9, "denom":F
    const/16 v18, 0x0

    cmpl-float v18, v9, v18

    if-nez v18, :cond_0

    .line 47
    const/4 v10, 0x0

    .line 52
    :goto_0
    return-object v10

    .line 48
    :cond_0
    mul-float v18, v14, v15

    mul-float v19, v16, v13

    add-float v18, v18, v19

    div-float v17, v18, v9

    .line 49
    .local v17, "u":F
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [F

    const/16 v18, 0x0

    mul-float v19, v17, v11

    add-float v19, v19, v3

    aput v19, v10, v18

    const/16 v18, 0x1

    mul-float v19, v17, v12

    add-float v19, v19, v4

    aput v19, v10, v18

    .line 52
    .local v10, "intersect":[F
    goto :goto_0
.end method

.method public static normalize([F)[F
    .locals 7
    .param p0, "a"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    aget v2, p0, v5

    aget v3, p0, v5

    mul-float/2addr v2, v3

    aget v3, p0, v6

    aget v4, p0, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 82
    .local v1, "length":F
    const/4 v2, 0x2

    new-array v0, v2, [F

    aget v2, p0, v5

    div-float/2addr v2, v1

    aput v2, v0, v5

    aget v2, p0, v6

    div-float/2addr v2, v1

    aput v2, v0, v6

    .line 85
    .local v0, "b":[F
    return-object v0
.end method

.method public static roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "r"    # Landroid/graphics/RectF;

    .prologue
    .line 138
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 140
    .local v0, "q":Landroid/graphics/Rect;
    return-object v0
.end method

.method public static scalarProjection([F[F)F
    .locals 4
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    aget v1, p1, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, p1, v3

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 91
    .local v0, "length":F
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->dotProduct([F[F)F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static scale(FFFF)F
    .locals 2
    .param p0, "oldWidth"    # F
    .param p1, "oldHeight"    # F
    .param p2, "newWidth"    # F
    .param p3, "newHeight"    # F

    .prologue
    const/4 v1, 0x0

    .line 132
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    .line 133
    :cond_0
    const/high16 v0, 0x3f800000

    .line 134
    :goto_0
    return v0

    :cond_1
    div-float v0, p2, p0

    div-float v1, p3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public static scaleRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 5
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "scale"    # F

    .prologue
    .line 112
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p1

    iget v3, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, p1

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static shortestVectorFromPointToLine([F[F)[F
    .locals 12
    .param p0, "point"    # [F
    .param p1, "line"    # [F

    .prologue
    .line 56
    const/4 v9, 0x0

    aget v3, p1, v9

    .line 57
    .local v3, "x1":F
    const/4 v9, 0x2

    aget v4, p1, v9

    .line 58
    .local v4, "x2":F
    const/4 v9, 0x1

    aget v6, p1, v9

    .line 59
    .local v6, "y1":F
    const/4 v9, 0x3

    aget v7, p1, v9

    .line 60
    .local v7, "y2":F
    sub-float v5, v4, v3

    .line 61
    .local v5, "xdelt":F
    sub-float v8, v7, v6

    .line 62
    .local v8, "ydelt":F
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-nez v9, :cond_0

    .line 63
    const/4 v2, 0x0

    .line 72
    :goto_0
    return-object v2

    .line 64
    :cond_0
    const/4 v9, 0x0

    aget v9, p0, v9

    sub-float/2addr v9, v3

    mul-float/2addr v9, v5

    const/4 v10, 0x1

    aget v10, p0, v10

    sub-float/2addr v10, v6

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    mul-float v10, v5, v5

    mul-float v11, v8, v8

    add-float/2addr v10, v11

    div-float v1, v9, v10

    .line 66
    .local v1, "u":F
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    sub-float v10, v4, v3

    mul-float/2addr v10, v1

    add-float/2addr v10, v3

    aput v10, v0, v9

    const/4 v9, 0x1

    sub-float v10, v7, v6

    mul-float/2addr v10, v1

    add-float/2addr v10, v6

    aput v10, v0, v9

    .line 69
    .local v0, "ret":[F
    const/4 v9, 0x2

    new-array v2, v9, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v0, v10

    const/4 v11, 0x0

    aget v11, p0, v11

    sub-float/2addr v10, v11

    aput v10, v2, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v0, v10

    const/4 v11, 0x1

    aget v11, p0, v11

    sub-float/2addr v10, v11

    aput v10, v2, v9

    .line 72
    .local v2, "vec":[F
    goto :goto_0
.end method

.method public static vectorLength([F)F
    .locals 3
    .param p0, "a"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    aget v0, p0, v1

    aget v1, p0, v1

    mul-float/2addr v0, v1

    aget v1, p0, v2

    aget v2, p0, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
