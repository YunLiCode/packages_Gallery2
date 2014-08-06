.class public Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterVintageRepresentation.java"


# instance fields
.field private mBrightness:I

.field private mCenterSize:I

.field private mMaximum:I

.field private mMinimum:I

.field private mParameterMode:I

.field private mSaturation:I

.field private mStyle:I

.field private mStyleStrength:I

.field private mTexture:I

.field private mTextureStrength:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x3c

    const/4 v1, 0x0

    .line 40
    const-string v0, "Vintage"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 27
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mMinimum:I

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mMaximum:I

    .line 29
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyle:I

    .line 30
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTexture:I

    .line 31
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mBrightness:I

    .line 32
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mSaturation:I

    .line 33
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTextureStrength:I

    .line 34
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mCenterSize:I

    .line 35
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyleStrength:I

    .line 37
    const v0, 0x7f0a022d

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mParameterMode:I

    .line 41
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setStyle(I)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setTexture(I)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setBrightness(I)V

    .line 45
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setSaturation(I)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setTextureStrength(I)V

    .line 47
    const/16 v0, 0x4b

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setCenterSize(I)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setStyleStrength(I)V

    .line 49
    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setTextId(I)V

    .line 50
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setButtonId(I)V

    .line 51
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setEditorId(I)V

    .line 52
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setPriority(I)V

    .line 53
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
    .line 63
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    .line 65
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setMinimum(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setMaximum(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setStyle(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getTexture()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setTexture(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setBrightness(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getSaturation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setSaturation(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getTextureStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setTextureStrength(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getCenterSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setCenterSize(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getStyleStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setStyleStrength(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setParameterMode(I)V

    .line 75
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 101
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    .line 103
    .local v0, "vintage":Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mMinimum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mMinimum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mMaximum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mMaximum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyle:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyle:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTexture:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTexture:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mBrightness:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mBrightness:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mSaturation:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mSaturation:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTextureStrength:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTextureStrength:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mCenterSize:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mCenterSize:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyleStrength:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyleStrength:I

    if-ne v2, v3, :cond_0

    .line 112
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mBrightness:I

    return v0
.end method

.method public getCenterSize()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mCenterSize:I

    return v0
.end method

.method public getCurrentParameter()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 240
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 226
    :pswitch_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyle:I

    goto :goto_0

    .line 228
    :pswitch_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTexture:I

    goto :goto_0

    .line 230
    :pswitch_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mBrightness:I

    goto :goto_0

    .line 232
    :pswitch_3
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mSaturation:I

    goto :goto_0

    .line 234
    :pswitch_4
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTextureStrength:I

    goto :goto_0

    .line 236
    :pswitch_5
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mCenterSize:I

    goto :goto_0

    .line 238
    :pswitch_6
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyleStrength:I

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x7f0a022d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getMaximum()I
    .locals 2

    .prologue
    const/16 v0, 0x64

    .line 195
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mParameterMode:I

    packed-switch v1, :pswitch_data_0

    .line 207
    :goto_0
    :pswitch_0
    return v0

    .line 197
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 199
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a022d
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMinimum()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 175
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mParameterMode:I

    packed-switch v1, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    return v0

    .line 184
    :pswitch_1
    const/16 v0, -0x64

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x7f0a022d
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getParameterMode()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mParameterMode:I

    return v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mSaturation:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyle:I

    return v0
.end method

.method public getStyleStrength()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyleStrength:I

    return v0
.end method

.method public getTexture()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTexture:I

    return v0
.end method

.method public getTextureStrength()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTextureStrength:I

    return v0
.end method

.method public setBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mBrightness:I

    .line 140
    return-void
.end method

.method public setCenterSize(I)V
    .locals 0
    .param p1, "centerSize"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mCenterSize:I

    .line 164
    return-void
.end method

.method public setCurrentParameter(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 244
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyle:I

    goto :goto_0

    .line 249
    :pswitch_1
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTexture:I

    goto :goto_0

    .line 252
    :pswitch_2
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mBrightness:I

    goto :goto_0

    .line 255
    :pswitch_3
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mSaturation:I

    goto :goto_0

    .line 258
    :pswitch_4
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTextureStrength:I

    goto :goto_0

    .line 261
    :pswitch_5
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mCenterSize:I

    goto :goto_0

    .line 264
    :pswitch_6
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyleStrength:I

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a022d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setMaximum(I)V
    .locals 0
    .param p1, "maximum"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mMaximum:I

    .line 213
    return-void
.end method

.method public setMinimum(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mMinimum:I

    .line 192
    return-void
.end method

.method public setParameterMode(I)V
    .locals 0
    .param p1, "parameterMode"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mParameterMode:I

    .line 221
    return-void
.end method

.method public setSaturation(I)V
    .locals 0
    .param p1, "saturation"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mSaturation:I

    .line 148
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyle:I

    .line 124
    return-void
.end method

.method public setStyleStrength(I)V
    .locals 0
    .param p1, "styleStrength"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyleStrength:I

    .line 172
    return-void
.end method

.method public setTexture(I)V
    .locals 0
    .param p1, "texture"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTexture:I

    .line 132
    return-void
.end method

.method public setTextureStrength(I)V
    .locals 0
    .param p1, "textureStrength"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTextureStrength:I

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTexture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mSaturation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mTextureStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mCenterSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->mStyleStrength:I

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
    .line 79
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    .line 82
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setMinimum(I)V

    .line 83
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setMaximum(I)V

    .line 84
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setStyle(I)V

    .line 85
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getTexture()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setTexture(I)V

    .line 86
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getBrightness()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setBrightness(I)V

    .line 87
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getSaturation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setSaturation(I)V

    .line 88
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getTextureStrength()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setTextureStrength(I)V

    .line 89
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getCenterSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setCenterSize(I)V

    .line 90
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getStyleStrength()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setStyleStrength(I)V

    .line 91
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->setParameterMode(I)V

    .line 93
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;
    :cond_0
    return-void
.end method
