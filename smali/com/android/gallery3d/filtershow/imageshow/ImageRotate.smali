.class public Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;
.source "ImageRotate.java"


# static fields
.field private static final gPaint:Landroid/graphics/Paint;


# instance fields
.field private mAngle:F

.field private mBaseAngle:F

.field private mEditorRotate:Lcom/android/gallery3d/filtershow/editors/EditorRotate;

.field private final mSnapToNinety:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;)V

    .line 30
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mBaseAngle:F

    .line 31
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mSnapToNinety:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mBaseAngle:F

    .line 31
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mSnapToNinety:Z

    .line 39
    return-void
.end method

.method private computeValue()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->getCurrentTouchAngle()F

    move-result v0

    .line 54
    .local v0, "angle":F
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mBaseAngle:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x43b40000

    rem-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 55
    return-void
.end method


# virtual methods
.method protected drawShape(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v2, 0xff

    .line 92
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 94
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->drawTransformedCropped(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 95
    return-void
.end method

.method public getLocalValue()I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->getLocalRotation()F

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->snappedAngle(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->constrainedRotation(F)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0186

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rotate()V
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    const/high16 v1, 0x42b40000

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 59
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->snappedAngle(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 60
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    const/high16 v1, 0x43b40000

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    .line 61
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->setLocalRotation(F)V

    .line 62
    return-void
.end method

.method protected setActionDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionDown(FF)V

    .line 67
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->getLocalRotation()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mBaseAngle:F

    .line 68
    return-void
.end method

.method protected setActionMove(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionMove(FF)V

    .line 73
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->computeValue()V

    .line 74
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    const/high16 v1, 0x43b40000

    rem-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->setLocalRotation(F)V

    .line 75
    return-void
.end method

.method protected setActionUp()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageGeometry;->setActionUp()V

    .line 81
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mAngle:F

    const/high16 v1, 0x43b40000

    rem-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->snappedAngle(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->setLocalRotation(F)V

    .line 83
    return-void
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/EditorRotate;)V
    .locals 0
    .param p1, "editorRotate"    # Lcom/android/gallery3d/filtershow/editors/EditorRotate;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageRotate;->mEditorRotate:Lcom/android/gallery3d/filtershow/editors/EditorRotate;

    .line 99
    return-void
.end method
