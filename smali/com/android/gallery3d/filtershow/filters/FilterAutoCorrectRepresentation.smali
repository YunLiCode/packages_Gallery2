.class public Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterAutoCorrectRepresentation.java"


# instance fields
.field private mFixExposure:I

.field private mFixTuneColor:I

.field private mMaximum:I

.field private mMinimum:I

.field private mParameterMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 33
    const-string v0, "AutoCorrect"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mMinimum:I

    .line 26
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mMaximum:I

    .line 27
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixExposure:I

    .line 28
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixTuneColor:I

    .line 30
    const v0, 0x7f0a01b6

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mParameterMode:I

    .line 34
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setFixExposure(I)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setFixTuneColor(I)V

    .line 37
    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setTextId(I)V

    .line 38
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setButtonId(I)V

    .line 39
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setEditorId(I)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setShowEditingControls(Z)V

    .line 41
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
    .line 49
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    .line 51
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setMinimum(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setMaximum(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getFixExposure()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setFixExposure(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getFixTuneColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setFixTuneColor(I)V

    .line 55
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    .line 77
    .local v0, "autoCorrect":Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mMinimum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mMinimum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mMaximum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mMaximum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixExposure:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixExposure:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixTuneColor:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixTuneColor:I

    if-ne v2, v3, :cond_0

    .line 81
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCurrentParameter()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 130
    :pswitch_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixExposure:I

    goto :goto_0

    .line 132
    :pswitch_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixTuneColor:I

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01b6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFixExposure()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixExposure:I

    return v0
.end method

.method public getFixTuneColor()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixTuneColor:I

    return v0
.end method

.method public getMaximum()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mMaximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mMinimum:I

    return v0
.end method

.method public setCurrentParameter(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 138
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixExposure:I

    goto :goto_0

    .line 143
    :pswitch_1
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixTuneColor:I

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x7f0a01b6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFixExposure(I)V
    .locals 0
    .param p1, "fixExposure"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixExposure:I

    .line 93
    return-void
.end method

.method public setFixTuneColor(I)V
    .locals 0
    .param p1, "fixTuneColor"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixTuneColor:I

    .line 101
    return-void
.end method

.method public setMaximum(I)V
    .locals 0
    .param p1, "maximum"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mMaximum:I

    .line 117
    return-void
.end method

.method public setMinimum(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mMinimum:I

    .line 109
    return-void
.end method

.method public setParameterMode(I)V
    .locals 0
    .param p1, "parameterMode"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mParameterMode:I

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixExposure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->mFixTuneColor:I

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
    .line 59
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 60
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    .line 62
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setMinimum(I)V

    .line 63
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setMaximum(I)V

    .line 64
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getFixExposure()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setFixExposure(I)V

    .line 65
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getFixTuneColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->setFixTuneColor(I)V

    .line 67
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;
    :cond_0
    return-void
.end method
