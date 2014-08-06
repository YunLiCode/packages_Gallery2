.class public Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterTuneImageRepresentation.java"


# instance fields
.field private mAmbiance:I

.field private mBrightness:I

.field private mContrast:I

.field private mMaximum:I

.field private mMinimum:I

.field private mParameterMode:I

.field private mSaturation:I

.field private mWhiteBalance:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v0, "TuneImage"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 27
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mMinimum:I

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mMaximum:I

    .line 29
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mBrightness:I

    .line 30
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mAmbiance:I

    .line 31
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mContrast:I

    .line 32
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mSaturation:I

    .line 33
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mWhiteBalance:I

    .line 35
    const v0, 0x7f0a0224

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mParameterMode:I

    .line 39
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setBrightness(I)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setAmbiance(I)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setContrast(I)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setSaturation(I)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setWhiteBalance(I)V

    .line 45
    const v0, 0x7f0b00af

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setTextId(I)V

    .line 46
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setButtonId(I)V

    .line 47
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setEditorId(I)V

    .line 48
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
    .line 57
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    .line 59
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setMinimum(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setMaximum(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setBrightness(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getAmbiance()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setAmbiance(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getContrast()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setContrast(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getSaturation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setSaturation(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getWhiteBalance()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setWhiteBalance(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setParameterMode(I)V

    .line 67
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 91
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    .line 93
    .local v0, "tuneimage":Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mMinimum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mMinimum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mMaximum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mMaximum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mBrightness:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mBrightness:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mAmbiance:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mAmbiance:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mContrast:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mContrast:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mSaturation:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mSaturation:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mWhiteBalance:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mWhiteBalance:I

    if-ne v2, v3, :cond_0

    .line 100
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAmbiance()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mAmbiance:I

    return v0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mBrightness:I

    return v0
.end method

.method public getContrast()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mContrast:I

    return v0
.end method

.method public getCurrentParameter()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 183
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 173
    :pswitch_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mBrightness:I

    goto :goto_0

    .line 175
    :pswitch_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mAmbiance:I

    goto :goto_0

    .line 177
    :pswitch_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mContrast:I

    goto :goto_0

    .line 179
    :pswitch_3
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mSaturation:I

    goto :goto_0

    .line 181
    :pswitch_4
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mWhiteBalance:I

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x7f0a0224
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMaximum()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mMaximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mMinimum:I

    return v0
.end method

.method public getParameterMode()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mParameterMode:I

    return v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mSaturation:I

    return v0
.end method

.method public getWhiteBalance()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mWhiteBalance:I

    return v0
.end method

.method public setAmbiance(I)V
    .locals 0
    .param p1, "ambiance"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mAmbiance:I

    .line 120
    return-void
.end method

.method public setBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mBrightness:I

    .line 112
    return-void
.end method

.method public setContrast(I)V
    .locals 0
    .param p1, "contrast"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mContrast:I

    .line 128
    return-void
.end method

.method public setCurrentParameter(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 187
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mBrightness:I

    goto :goto_0

    .line 192
    :pswitch_1
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mAmbiance:I

    goto :goto_0

    .line 195
    :pswitch_2
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mContrast:I

    goto :goto_0

    .line 198
    :pswitch_3
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mSaturation:I

    goto :goto_0

    .line 201
    :pswitch_4
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mWhiteBalance:I

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0224
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setMaximum(I)V
    .locals 0
    .param p1, "maximum"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mMaximum:I

    .line 160
    return-void
.end method

.method public setMinimum(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mMinimum:I

    .line 152
    return-void
.end method

.method public setParameterMode(I)V
    .locals 0
    .param p1, "parameterMode"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mParameterMode:I

    .line 168
    return-void
.end method

.method public setSaturation(I)V
    .locals 0
    .param p1, "saturation"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mSaturation:I

    .line 136
    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 0
    .param p1, "whiteBalance"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mWhiteBalance:I

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mAmbiance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mContrast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mSaturation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->mWhiteBalance:I

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
    .line 71
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 72
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    .line 74
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setMinimum(I)V

    .line 75
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setMaximum(I)V

    .line 76
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getBrightness()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setBrightness(I)V

    .line 77
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getAmbiance()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setAmbiance(I)V

    .line 78
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getContrast()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setContrast(I)V

    .line 79
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getSaturation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setSaturation(I)V

    .line 80
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getWhiteBalance()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setWhiteBalance(I)V

    .line 81
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->setParameterMode(I)V

    .line 83
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;
    :cond_0
    return-void
.end method
