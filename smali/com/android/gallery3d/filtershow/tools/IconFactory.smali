.class public Lcom/android/gallery3d/filtershow/tools/IconFactory;
.super Ljava/lang/Object;
.source "IconFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIcon(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "sourceImage"    # Landroid/graphics/Bitmap;
    .param p1, "iconWidth"    # I
    .param p2, "iconHeight"    # I
    .param p3, "scale"    # Z

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Null argument to buildIcon"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 48
    .local v2, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 50
    .local v1, "sourceHeight":I
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 51
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bitmap with dimension 0 used as input"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, "icon":Landroid/graphics/Bitmap;
    invoke-static {v0, p0, p3}, Lcom/android/gallery3d/filtershow/tools/IconFactory;->drawIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 57
    return-object v0
.end method

.method public static drawIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 19
    .param p0, "dest"    # Landroid/graphics/Bitmap;
    .param p1, "sourceImage"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # Z

    .prologue
    .line 70
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 71
    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Null argument to buildIcon"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 74
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 75
    .local v14, "sourceWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 76
    .local v13, "sourceHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 77
    .local v8, "iconWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 79
    .local v7, "iconHeight":I
    if-eqz v14, :cond_2

    if-eqz v13, :cond_2

    if-eqz v8, :cond_2

    if-nez v7, :cond_3

    .line 80
    :cond_2
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Bitmap with dimension 0 used as input"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 83
    :cond_3
    new-instance v5, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    .local v5, "destRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v15, 0x0

    .line 87
    .local v15, "srcRect":Landroid/graphics/Rect;
    if-eqz p2, :cond_4

    .line 89
    new-instance v15, Landroid/graphics/Rect;

    .end local v15    # "srcRect":Landroid/graphics/Rect;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v15, v0, v1, v14, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    .restart local v15    # "srcRect":Landroid/graphics/Rect;
    :goto_0
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v15, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 107
    return-void

    .line 92
    :cond_4
    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v8

    move/from16 v18, v0

    div-float v16, v17, v18

    .line 93
    .local v16, "wScale":F
    int-to-float v0, v13

    move/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    div-float v6, v17, v18

    .line 94
    .local v6, "hScale":F
    move/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 96
    .local v12, "s":F
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v10, v17, v12

    .line 97
    .local v10, "iw":F
    int-to-float v0, v7

    move/from16 v17, v0

    mul-float v9, v17, v12

    .line 99
    .local v9, "ih":F
    int-to-float v0, v14

    move/from16 v17, v0

    sub-float v17, v17, v10

    const/high16 v18, 0x40000000

    div-float v3, v17, v18

    .line 100
    .local v3, "borderW":F
    int-to-float v0, v13

    move/from16 v17, v0

    sub-float v17, v17, v9

    const/high16 v18, 0x40000000

    div-float v2, v17, v18

    .line 101
    .local v2, "borderH":F
    new-instance v11, Landroid/graphics/RectF;

    add-float v17, v3, v10

    add-float v18, v2, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 102
    .local v11, "rec":Landroid/graphics/RectF;
    new-instance v15, Landroid/graphics/Rect;

    .end local v15    # "srcRect":Landroid/graphics/Rect;
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 103
    .restart local v15    # "srcRect":Landroid/graphics/Rect;
    invoke-virtual {v11, v15}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
