.class public Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
.source "FilterTinyPlanetRepresentation.java"


# instance fields
.field private mAngle:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 27
    const-string v0, "TinyPlanet"

    const/4 v1, 0x0

    const/16 v2, 0x32

    const/16 v3, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;-><init>(Ljava/lang/String;III)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    .line 28
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setShowParameterValue(Z)V

    .line 29
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTinyPlanet;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 30
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setPriority(I)V

    .line 31
    const v0, 0x7f0b0175

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setTextId(I)V

    .line 32
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setButtonId(I)V

    .line 33
    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setEditorId(I)V

    .line 34
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setMinimum(I)V

    .line 35
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
    .line 39
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    .line 41
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setZoom(I)V

    .line 43
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
    .line 22
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    return v0
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->getValue()I

    move-result v0

    return v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    .line 56
    return-void
.end method

.method public setZoom(I)V
    .locals 0
    .param p1, "zoom"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setValue(I)V

    .line 68
    return-void
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 2
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 48
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;

    .line 49
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 50
    iget v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->mAngle:F

    .line 51
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->getZoom()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTinyPlanetRepresentation;->setZoom(I)V

    .line 52
    return-void
.end method
