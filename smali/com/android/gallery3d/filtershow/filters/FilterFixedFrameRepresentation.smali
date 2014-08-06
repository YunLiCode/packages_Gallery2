.class public Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterFixedFrameRepresentation.java"


# instance fields
.field private frameColorize:I

.field private frameFlipping:I

.field private frameFormat:I

.field private frameOffset:I

.field private frameStrength:I

.field private frameTexture:I

.field private mParameterMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 31
    const v0, 0x7f0a01ed

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->mParameterMode:I

    .line 35
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 36
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setEditorId(I)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setPriority(I)V

    .line 39
    const v0, 0x7f0a01ee

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    .line 40
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFormat:I

    .line 41
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameOffset:I

    .line 42
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameStrength:I

    .line 43
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameColorize:I

    .line 44
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFlipping:I

    .line 45
    return-void
.end method


# virtual methods
.method public allowsMultipleInstances()Z
    .locals 1

    .prologue
    .line 96
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
    .line 49
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    .line 52
    .local v0, "rep":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setFrameTexture(I)V

    .line 53
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFormat:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setFrameFormat(I)V

    .line 54
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameOffset:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setFrameOffset(I)V

    .line 55
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameStrength:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setFrameStrength(I)V

    .line 56
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameColorize:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setFrameColorize(I)V

    .line 57
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFlipping:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->setFrameFlipping(I)V

    .line 59
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v0, 0x0

    .line 64
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 66
    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    .line 68
    .local v1, "rep":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    iget v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFormat:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFormat:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameOffset:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameOffset:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameStrength:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameStrength:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameColorize:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameColorize:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFlipping:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFlipping:I

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 77
    .end local v1    # "rep":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    :cond_0
    return v0
.end method

.method public getCurrentParameter()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->mParameterMode:I

    sparse-switch v0, :sswitch_data_0

    .line 183
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 171
    :sswitch_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    goto :goto_0

    .line 173
    :sswitch_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFormat:I

    goto :goto_0

    .line 175
    :sswitch_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameOffset:I

    goto :goto_0

    .line 177
    :sswitch_3
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameStrength:I

    goto :goto_0

    .line 179
    :sswitch_4
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameColorize:I

    goto :goto_0

    .line 181
    :sswitch_5
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFlipping:I

    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a01ed -> :sswitch_0
        0x7f0a01fe -> :sswitch_1
        0x7f0a01ff -> :sswitch_2
        0x7f0a0200 -> :sswitch_3
        0x7f0a0201 -> :sswitch_4
        0x7f0a0202 -> :sswitch_5
    .end sparse-switch
.end method

.method public getFrameTexture()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    return v0
.end method

.method public getMaximum()I
    .locals 3

    .prologue
    const/16 v1, 0xc8

    const/4 v0, 0x1

    .line 207
    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->mParameterMode:I

    sparse-switch v2, :sswitch_data_0

    .line 221
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    .line 209
    :sswitch_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 213
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 215
    goto :goto_0

    .line 219
    :sswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a01ed -> :sswitch_1
        0x7f0a01fe -> :sswitch_0
        0x7f0a01ff -> :sswitch_2
        0x7f0a0200 -> :sswitch_3
        0x7f0a0201 -> :sswitch_0
        0x7f0a0202 -> :sswitch_4
    .end sparse-switch
.end method

.method public getMinimum()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 225
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->mParameterMode:I

    packed-switch v1, :pswitch_data_0

    .line 237
    :goto_0
    :pswitch_0
    return v0

    .line 229
    :pswitch_1
    const/16 v0, -0xc8

    goto :goto_0

    .line 231
    :pswitch_2
    const/16 v0, -0x14

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01fe
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentParameter(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 187
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFormat:I

    goto :goto_0

    .line 192
    :pswitch_1
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameOffset:I

    goto :goto_0

    .line 195
    :pswitch_2
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameStrength:I

    goto :goto_0

    .line 198
    :pswitch_3
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameColorize:I

    goto :goto_0

    .line 201
    :pswitch_4
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFlipping:I

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01fe
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setFrameColorize(I)V
    .locals 0
    .param p1, "frameColorize"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameColorize:I

    .line 137
    return-void
.end method

.method public setFrameFlipping(I)V
    .locals 0
    .param p1, "frameFlip"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFlipping:I

    .line 145
    return-void
.end method

.method public setFrameFormat(I)V
    .locals 0
    .param p1, "frameFormat"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFormat:I

    .line 113
    return-void
.end method

.method public setFrameOffset(I)V
    .locals 0
    .param p1, "frameOffset"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameOffset:I

    .line 121
    return-void
.end method

.method public setFrameStrength(I)V
    .locals 0
    .param p1, "frameStrength"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameStrength:I

    .line 129
    return-void
.end method

.method public setFrameTexture(I)V
    .locals 0
    .param p1, "frameTexture"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    .line 105
    return-void
.end method

.method public setmParameterMode(I)V
    .locals 0
    .param p1, "mParameterMode"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->mParameterMode:I

    .line 153
    return-void
.end method

.method public showParameterValue()Z
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->mParameterMode:I

    const v1, 0x7f0a01ed

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 2
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 82
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    .line 85
    .local v0, "rep":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    iget v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameTexture:I

    .line 86
    iget v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFormat:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFormat:I

    .line 87
    iget v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameOffset:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameOffset:I

    .line 88
    iget v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameStrength:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameStrength:I

    .line 89
    iget v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameColorize:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameColorize:I

    .line 90
    iget v1, v0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFlipping:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->frameFlipping:I

    .line 92
    .end local v0    # "rep":Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;
    :cond_0
    return-void
.end method
