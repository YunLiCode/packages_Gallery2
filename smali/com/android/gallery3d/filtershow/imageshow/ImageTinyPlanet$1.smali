.class Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;
.super Ljava/lang/Object;
.source "ImageTinyPlanet.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScale:F

.field final synthetic this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->mScale:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    # getter for: Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->access$000(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->getValue()I

    move-result v0

    .line 65
    .local v0, "value":I
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->mScale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->mScale:F

    .line 66
    iget v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->mScale:F

    float-to-int v0, v1

    .line 67
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    # getter for: Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->access$000(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->getMaximum()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    # getter for: Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->access$000(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->getMinimum()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    # getter for: Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->access$000(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setValue(I)V

    .line 70
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->invalidate()V

    .line 71
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    # getter for: Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mEditorTinyPlanet:Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->access$100(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;->commitLocalRepresentation()V

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    # getter for: Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mEditorTinyPlanet:Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->access$100(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/EditorTinyPlanet;->updateUI()V

    .line 73
    const/4 v1, 0x1

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x1

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    iput-boolean v1, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mInScale:Z

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    # getter for: Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mTinyPlanetRep:Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->access$000(Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;)Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->getValue()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->mScale:F

    .line 59
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet$1;->this$0:Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/gallery3d/filtershow/imageshow/ImageTinyPlanet;->mInScale:Z

    .line 53
    return-void
.end method
