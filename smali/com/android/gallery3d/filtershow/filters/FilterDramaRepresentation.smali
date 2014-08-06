.class public Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterDramaRepresentation.java"


# instance fields
.field private mFilterStrength:I

.field private mMaximum:I

.field private mMinimum:I

.field private mParameterMode:I

.field private mSaturation:I

.field private mStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-string v0, "Drama"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 27
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mMinimum:I

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mMaximum:I

    .line 29
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mStyle:I

    .line 30
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mFilterStrength:I

    .line 31
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mSaturation:I

    .line 33
    const v0, 0x7f0a01da

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mParameterMode:I

    .line 37
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setStyle(I)V

    .line 39
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setFilterStrength(I)V

    .line 40
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setSaturation(I)V

    .line 41
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setTextId(I)V

    .line 42
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setButtonId(I)V

    .line 43
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setEditorId(I)V

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setPriority(I)V

    .line 45
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
    .line 54
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    .line 56
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setMinimum(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setMaximum(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setStyle(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getFilterStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setFilterStrength(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getSaturation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setSaturation(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setParameterMode(I)V

    .line 62
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    .line 86
    .local v0, "drama":Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mMinimum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mMinimum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mMaximum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mMaximum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mStyle:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mStyle:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mFilterStrength:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mFilterStrength:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mSaturation:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mSaturation:I

    if-ne v2, v3, :cond_0

    .line 91
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCurrentParameter()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 159
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 153
    :pswitch_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mStyle:I

    goto :goto_0

    .line 155
    :pswitch_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mFilterStrength:I

    goto :goto_0

    .line 157
    :pswitch_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mSaturation:I

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x7f0a01da
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFilterStrength()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mFilterStrength:I

    return v0
.end method

.method public getMaximum()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 134
    const/16 v0, 0x64

    :goto_0
    return v0

    .line 132
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x7f0a01da
        :pswitch_0
    .end packed-switch
.end method

.method public getMinimum()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mMinimum:I

    return v0
.end method

.method public getParameterMode()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mParameterMode:I

    return v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mSaturation:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mStyle:I

    return v0
.end method

.method public setCurrentParameter(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 163
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mStyle:I

    goto :goto_0

    .line 168
    :pswitch_1
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mFilterStrength:I

    goto :goto_0

    .line 171
    :pswitch_2
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mSaturation:I

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01da
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFilterStrength(I)V
    .locals 0
    .param p1, "filterStrength"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mFilterStrength:I

    .line 111
    return-void
.end method

.method public setMaximum(I)V
    .locals 0
    .param p1, "maximum"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mMaximum:I

    .line 140
    return-void
.end method

.method public setMinimum(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mMinimum:I

    .line 127
    return-void
.end method

.method public setParameterMode(I)V
    .locals 0
    .param p1, "parameterMode"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mParameterMode:I

    .line 148
    return-void
.end method

.method public setSaturation(I)V
    .locals 0
    .param p1, "saturation"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mSaturation:I

    .line 119
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mStyle:I

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mFilterStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->mSaturation:I

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
    .line 66
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    .line 69
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setMinimum(I)V

    .line 70
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setMaximum(I)V

    .line 71
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setStyle(I)V

    .line 72
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getFilterStrength()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setFilterStrength(I)V

    .line 73
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getSaturation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setSaturation(I)V

    .line 74
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->setParameterMode(I)V

    .line 76
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;
    :cond_0
    return-void
.end method
