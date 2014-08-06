.class public Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterDetailsRepresentation.java"


# instance fields
.field private mMaximum:I

.field private mMinimum:I

.field private mParameterMode:I

.field private mSharpening:I

.field private mStructure:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-string v0, "Details"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 27
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mMinimum:I

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mMaximum:I

    .line 29
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mSharpening:I

    .line 30
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mStructure:I

    .line 32
    const v0, 0x7f0a01d7

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mParameterMode:I

    .line 36
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 37
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setSharpening(I)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setStructure(I)V

    .line 39
    const v0, 0x7f02008b

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setOverlayId(I)V

    .line 40
    const v0, 0x7f0b0177

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setTextId(I)V

    .line 41
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setButtonId(I)V

    .line 42
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setEditorId(I)V

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
    .line 51
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    .line 53
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setMinimum(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setMaximum(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getSharpening()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setSharpening(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getStructure()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setStructure(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setParameterMode(I)V

    .line 58
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
    .line 24
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 79
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    .line 81
    .local v0, "details":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mMinimum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mMinimum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mMaximum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mMaximum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mSharpening:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mSharpening:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mStructure:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mStructure:I

    if-ne v2, v3, :cond_0

    .line 85
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCurrentParameter()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 138
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 134
    :pswitch_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mSharpening:I

    goto :goto_0

    .line 136
    :pswitch_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mStructure:I

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01d7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMaximum()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mMaximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mMinimum:I

    return v0
.end method

.method public getParameterMode()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mParameterMode:I

    return v0
.end method

.method public getSharpening()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mSharpening:I

    return v0
.end method

.method public getStructure()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mStructure:I

    return v0
.end method

.method public setCurrentParameter(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 142
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mSharpening:I

    goto :goto_0

    .line 147
    :pswitch_1
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mStructure:I

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x7f0a01d7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMaximum(I)V
    .locals 0
    .param p1, "maximum"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mMaximum:I

    .line 121
    return-void
.end method

.method public setMinimum(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mMinimum:I

    .line 113
    return-void
.end method

.method public setParameterMode(I)V
    .locals 0
    .param p1, "parameterMode"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mParameterMode:I

    .line 129
    return-void
.end method

.method public setSharpening(I)V
    .locals 0
    .param p1, "sharpening"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mSharpening:I

    .line 97
    return-void
.end method

.method public setStructure(I)V
    .locals 0
    .param p1, "structure"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mStructure:I

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mSharpening:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->mStructure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 2
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 62
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 63
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    .line 65
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setMinimum(I)V

    .line 66
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setMaximum(I)V

    .line 67
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getSharpening()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setSharpening(I)V

    .line 68
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getStructure()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setStructure(I)V

    .line 69
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->setParameterMode(I)V

    .line 71
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;
    :cond_0
    return-void
.end method
