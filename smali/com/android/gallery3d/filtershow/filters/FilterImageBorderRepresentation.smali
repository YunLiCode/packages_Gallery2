.class public Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterImageBorderRepresentation.java"


# instance fields
.field private mDrawableResource:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const-string v0, "ImageBorder"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 23
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    .line 27
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    .line 28
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->setPriority(I)V

    .line 30
    const v0, 0x7f0b015a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->setTextId(I)V

    .line 31
    const v0, 0x7f0a0054

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->setEditorId(I)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->setShowEditingControls(Z)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->setShowParameterValue(Z)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->setShowUtilityPanel(Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public allowsMultipleInstances()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    .line 44
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->setName(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->getDrawableResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->setDrawableResource(I)V

    .line 46
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 63
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    .line 64
    .local v0, "border":Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    if-ne v2, v3, :cond_0

    .line 65
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDrawableResource()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f0b0189

    return v0
.end method

.method public setDrawableResource(I)V
    .locals 0
    .param p1, "drawableResource"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->mDrawableResource:I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterBorder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 2
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 50
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 51
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;

    .line 52
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->setName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->getDrawableResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;->setDrawableResource(I)V

    .line 55
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterImageBorderRepresentation;
    :cond_0
    return-void
.end method
