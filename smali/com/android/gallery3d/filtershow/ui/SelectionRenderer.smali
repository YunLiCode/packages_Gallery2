.class public Lcom/android/gallery3d/filtershow/ui/SelectionRenderer;
.super Ljava/lang/Object;
.source "SelectionRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawSelection(Landroid/graphics/Canvas;IIIIILandroid/graphics/Paint;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "stroke"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 26
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    add-int v0, p2, p5

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    int-to-float v1, p1

    sub-int v0, p4, p5

    int-to-float v2, v0

    int-to-float v3, p3

    int-to-float v4, p4

    move-object v0, p0

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 28
    int-to-float v1, p1

    int-to-float v2, p2

    add-int v0, p1, p5

    int-to-float v3, v0

    int-to-float v4, p4

    move-object v0, p0

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 29
    sub-int v0, p3, p5

    int-to-float v1, v0

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    move-object v0, p0

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 30
    return-void
.end method

.method public static drawSelection(Landroid/graphics/Canvas;IIIIILandroid/graphics/Paint;ILandroid/graphics/Paint;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "stroke"    # I
    .param p6, "selectPaint"    # Landroid/graphics/Paint;
    .param p7, "border"    # I
    .param p8, "borderPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 34
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    add-int v0, p2, p5

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 35
    int-to-float v1, p1

    sub-int v0, p4, p5

    int-to-float v2, v0

    int-to-float v3, p3

    int-to-float v4, p4

    move-object v0, p0

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 36
    int-to-float v1, p1

    int-to-float v2, p2

    add-int v0, p1, p5

    int-to-float v3, v0

    int-to-float v4, p4

    move-object v0, p0

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 37
    sub-int v0, p3, p5

    int-to-float v1, v0

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    move-object v0, p0

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 38
    add-int v0, p1, p5

    int-to-float v1, v0

    add-int v0, p2, p5

    int-to-float v2, v0

    sub-int v0, p3, p5

    int-to-float v3, v0

    add-int v0, p2, p5

    add-int/2addr v0, p7

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 40
    add-int v0, p1, p5

    int-to-float v1, v0

    sub-int v0, p4, p5

    sub-int/2addr v0, p7

    int-to-float v2, v0

    sub-int v0, p3, p5

    int-to-float v3, v0

    sub-int v0, p4, p5

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 42
    add-int v0, p1, p5

    int-to-float v1, v0

    add-int v0, p2, p5

    int-to-float v2, v0

    add-int v0, p1, p5

    add-int/2addr v0, p7

    int-to-float v3, v0

    sub-int v0, p4, p5

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 44
    sub-int v0, p3, p5

    sub-int/2addr v0, p7

    int-to-float v1, v0

    add-int v0, p2, p5

    int-to-float v2, v0

    sub-int v0, p3, p5

    int-to-float v3, v0

    sub-int v0, p4, p5

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 46
    return-void
.end method
