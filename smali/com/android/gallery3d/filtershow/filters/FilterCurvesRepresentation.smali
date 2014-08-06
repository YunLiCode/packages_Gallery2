.class public Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterCurvesRepresentation.java"


# instance fields
.field private mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    const-string v0, "Curves"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/ui/Spline;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    .line 18
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCurves;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 19
    const v0, 0x7f0b0180

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->setTextId(I)V

    .line 20
    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->setButtonId(I)V

    .line 21
    const v0, 0x7f02008a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->setOverlayId(I)V

    .line 22
    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->setEditorId(I)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->setShowEditingControls(Z)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->setShowParameterValue(Z)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->setShowUtilityPanel(Z)V

    .line 26
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->setSupportsPartialRendering(Z)V

    .line 27
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->reset()V

    .line 28
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;-><init>()V

    .line 33
    .local v0, "rep":Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 34
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;
    .locals 1
    .param p1, "splineIndex"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isNil()Z
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->getSpline(I)Lcom/android/gallery3d/filtershow/ui/Spline;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/ui/Spline;->isOriginal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 62
    :goto_1
    return v1

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    .line 66
    new-instance v1, Lcom/android/gallery3d/filtershow/ui/Spline;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/ui/Spline;-><init>()V

    .line 68
    .local v1, "spline":Lcom/android/gallery3d/filtershow/ui/Spline;
    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(FF)I

    .line 69
    invoke-virtual {v1, v3, v2}, Lcom/android/gallery3d/filtershow/ui/Spline;->addPoint(FF)I

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    new-instance v3, Lcom/android/gallery3d/filtershow/ui/Spline;

    invoke-direct {v3, v1}, Lcom/android/gallery3d/filtershow/ui/Spline;-><init>(Lcom/android/gallery3d/filtershow/ui/Spline;)V

    aput-object v3, v2, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public setSpline(ILcom/android/gallery3d/filtershow/ui/Spline;)V
    .locals 1
    .param p1, "splineIndex"    # I
    .param p2, "s"    # Lcom/android/gallery3d/filtershow/ui/Spline;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    aput-object p2, v0, p1

    .line 78
    return-void
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 7
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 39
    instance-of v4, p1, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    if-nez v4, :cond_0

    .line 40
    const-string v4, "FilterCurvesRepresentation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot use parameters from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 43
    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;

    .line 44
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;
    const/4 v4, 0x4

    new-array v3, v4, [Lcom/android/gallery3d/filtershow/ui/Spline;

    .line 45
    .local v3, "spline":[Lcom/android/gallery3d/filtershow/ui/Spline;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 46
    iget-object v4, v1, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    aget-object v2, v4, v0

    .line 47
    .local v2, "sp":Lcom/android/gallery3d/filtershow/ui/Spline;
    if-eqz v2, :cond_1

    .line 48
    new-instance v4, Lcom/android/gallery3d/filtershow/ui/Spline;

    invoke-direct {v4, v2}, Lcom/android/gallery3d/filtershow/ui/Spline;-><init>(Lcom/android/gallery3d/filtershow/ui/Spline;)V

    aput-object v4, v3, v0

    .line 45
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    :cond_1
    new-instance v4, Lcom/android/gallery3d/filtershow/ui/Spline;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/ui/Spline;-><init>()V

    aput-object v4, v3, v0

    goto :goto_2

    .line 53
    .end local v2    # "sp":Lcom/android/gallery3d/filtershow/ui/Spline;
    :cond_2
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCurvesRepresentation;->mSplines:[Lcom/android/gallery3d/filtershow/ui/Spline;

    goto :goto_0
.end method
