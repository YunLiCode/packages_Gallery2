.class Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$SimpleDraw;
.super Ljava/lang/Object;
.source "ImageFilterDraw.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$DrawStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleDraw"
.end annotation


# instance fields
.field mType:B

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$SimpleDraw;->this$0:Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public paint(Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3
    .param p1, "sd"    # Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "toScrMatrix"    # Landroid/graphics/Matrix;
    .param p4, "quality"    # I

    .prologue
    .line 102
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 110
    .local v1, "paint":Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mRadius:F

    invoke-virtual {p3, v2}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 116
    .local v0, "mCacheTransPath":Landroid/graphics/Path;
    iget-object v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterDrawRepresentation$StrokeData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 118
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setType(B)V
    .locals 0
    .param p1, "type"    # B

    .prologue
    .line 96
    iput-byte p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDraw$SimpleDraw;->mType:B

    .line 97
    return-void
.end method
