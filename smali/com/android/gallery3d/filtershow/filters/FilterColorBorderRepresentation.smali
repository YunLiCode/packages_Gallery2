.class public Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterColorBorderRepresentation.java"


# instance fields
.field private mBorderRadius:I

.field private mBorderSize:I

.field private mColor:I


# virtual methods
.method public allowsMultipleInstances()Z
    .locals 1

    .prologue
    .line 82
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
    .line 47
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    .line 48
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->setName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->setColor(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getBorderSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->setBorderSize(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getBorderRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->setBorderRadius(I)V

    .line 52
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    .line 72
    .local v0, "border":Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mColor:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mColor:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mBorderSize:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mBorderSize:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mBorderRadius:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mBorderRadius:I

    if-ne v2, v3, :cond_0

    .line 75
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBorderRadius()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mBorderRadius:I

    return v0
.end method

.method public getBorderSize()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mBorderSize:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mColor:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f0b015a

    return v0
.end method

.method public setBorderRadius(I)V
    .locals 0
    .param p1, "borderRadius"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mBorderRadius:I

    .line 112
    return-void
.end method

.method public setBorderSize(I)V
    .locals 0
    .param p1, "borderSize"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mBorderSize:I

    .line 104
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->mColor:I

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterBorder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getName()Ljava/lang/String;

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
    .line 56
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;

    .line 58
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->setName(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->setColor(I)V

    .line 60
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getBorderSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->setBorderSize(I)V

    .line 61
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->getBorderRadius()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;->setBorderRadius(I)V

    .line 63
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterColorBorderRepresentation;
    :cond_0
    return-void
.end method
