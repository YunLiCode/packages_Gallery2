.class public abstract Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source "ImagePoint.java"


# static fields
.field protected static mTouchPadding:F


# instance fields
.field protected mEditorRedEye:Lcom/android/gallery3d/filtershow/editors/EditorRedEye;

.field protected mRedEyeRep:Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/high16 v0, 0x42a00000

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->mTouchPadding:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract drawPoint(Lcom/android/gallery3d/filtershow/filters/FilterPoint;Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 70
    .local v5, "paint":Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    const/high16 v0, -0x10000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    const/high16 v0, 0x40000000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v3

    .line 75
    .local v3, "originalToScreen":Landroid/graphics/Matrix;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v4

    .line 77
    .local v4, "originalRotateToScreen":Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->mRedEyeRep:Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->mRedEyeRep:Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;->getCandidates()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterPoint;

    .local v1, "candidate":Lcom/android/gallery3d/filtershow/filters/FilterPoint;
    move-object v0, p0

    move-object v2, p1

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->drawPoint(Lcom/android/gallery3d/filtershow/filters/FilterPoint;Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 82
    .end local v1    # "candidate":Lcom/android/gallery3d/filtershow/filters/FilterPoint;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public resetParameter()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;

    .line 54
    .local v0, "filter":Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRedEye;->clear()V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->invalidate()V

    .line 58
    return-void
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/EditorRedEye;)V
    .locals 0
    .param p1, "editorRedEye"    # Lcom/android/gallery3d/filtershow/editors/EditorRedEye;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->mEditorRedEye:Lcom/android/gallery3d/filtershow/editors/EditorRedEye;

    .line 90
    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;)V
    .locals 0
    .param p1, "redEyeRep"    # Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->mRedEyeRep:Lcom/android/gallery3d/filtershow/filters/FilterRedEyeRepresentation;

    .line 94
    return-void
.end method

.method public updateImage()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->updateImage()V

    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImagePoint;->invalidate()V

    .line 64
    return-void
.end method
