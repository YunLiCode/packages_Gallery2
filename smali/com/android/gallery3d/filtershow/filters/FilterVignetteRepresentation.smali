.class public Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
.source "FilterVignetteRepresentation.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/imageshow/Oval;


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mRadiusX:F

.field private mRadiusY:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const v5, 0x7f0a0055

    const/16 v4, 0x64

    const/16 v3, -0x64

    const/high16 v2, 0x7fc00000

    .line 31
    const-string v0, "Vignette"

    const/16 v1, 0x32

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;-><init>(Ljava/lang/String;III)V

    .line 25
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    .line 27
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setShowParameterValue(Z)V

    .line 33
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setPriority(I)V

    .line 34
    const v0, 0x7f0b0181

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setTextId(I)V

    .line 35
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setButtonId(I)V

    .line 36
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setEditorId(I)V

    .line 37
    const-string v0, "Vignette"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setName(Ljava/lang/String;)V

    .line 38
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVignette;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 40
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setMinimum(I)V

    .line 41
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setMaximum(I)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->setDefaultValue(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    .line 58
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    .line 59
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    .line 61
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
    .line 23
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    return v0
.end method

.method public getRadiusX()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    return v0
.end method

.method public getRadiusY()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    return v0
.end method

.method public isCenterSet()Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    const/high16 v1, 0x7fc00000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCenter(FF)V
    .locals 0
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    .line 67
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    .line 68
    return-void
.end method

.method public setRadius(FF)V
    .locals 0
    .param p1, "radiusX"    # F
    .param p2, "radiusY"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    .line 83
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    .line 84
    return-void
.end method

.method public setRadiusX(F)V
    .locals 0
    .param p1, "radiusX"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    .line 89
    return-void
.end method

.method public setRadiusY(F)V
    .locals 0
    .param p1, "radiusY"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    .line 94
    return-void
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterX:F

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mCenterY:F

    move-object v0, p1

    .line 50
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mRadiusX:F

    .line 51
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;

    .end local p1    # "a":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iget v0, p1, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVignetteRepresentation;->mRadiusY:F

    .line 52
    return-void
.end method
