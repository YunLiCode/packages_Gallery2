.class public Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterTiltAndShiftRepresentation.java"


# instance fields
.field private mBlurStrength:I

.field private mBrightness:I

.field private mContrast:I

.field private mMaximum:I

.field private mMinimum:I

.field private mParameterMode:I

.field private mRotationAngle:I

.field private mSaturation:I

.field private mStyle:I

.field private mTransition:I

.field private mXCenter:F

.field private mXRadius:I

.field private mYCenter:F

.field private mYRadius:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0xa

    const/16 v2, 0x32

    const/4 v1, 0x0

    .line 44
    const-string v0, "TiltAndShift"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 25
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMinimum:I

    .line 26
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMaximum:I

    .line 27
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mStyle:I

    .line 29
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mTransition:I

    .line 30
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBlurStrength:I

    .line 31
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBrightness:I

    .line 32
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mSaturation:I

    .line 33
    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mContrast:I

    .line 35
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXRadius:I

    .line 36
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mYRadius:I

    .line 37
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mRotationAngle:I

    .line 38
    const/high16 v0, 0x7fc00000

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXCenter:F

    .line 41
    const v0, 0x7f0a021b

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mParameterMode:I

    .line 45
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTiltAndShift;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setStyle(I)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setTransition(I)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setBlurStrength(I)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setBrightness(I)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setSaturation(I)V

    .line 51
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setContrast(I)V

    .line 52
    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setTextId(I)V

    .line 53
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setButtonId(I)V

    .line 54
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setEditorId(I)V

    .line 55
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
    .line 67
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    .line 68
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setMinimum(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setMaximum(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setStyle(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getTransition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setTransition(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getBlurStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setBlurStrength(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setBrightness(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getSaturation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setSaturation(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getContrast()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setContrast(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getXRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setXRadius(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getYRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setYRadius(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getRotationAngle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setRotationAngle(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getXCenter()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setXCenter(F)V

    .line 80
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getYCenter()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setYCenter(F)V

    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setParameterMode(I)V

    .line 82
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 111
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    .line 112
    .local v0, "tiltandshift":Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMinimum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMinimum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMaximum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMaximum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mStyle:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mStyle:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mTransition:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mTransition:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBlurStrength:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBlurStrength:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBrightness:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBrightness:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mSaturation:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mSaturation:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mContrast:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mContrast:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXRadius:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXRadius:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mYRadius:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mYRadius:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mRotationAngle:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mRotationAngle:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXCenter:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXCenter:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mYCenter:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mYCenter:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 125
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBlurStrength()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBlurStrength:I

    return v0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBrightness:I

    return v0
.end method

.method public getContrast()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mContrast:I

    return v0
.end method

.method public getMaximum()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMaximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMinimum:I

    return v0
.end method

.method public getParameter(I)I
    .locals 1
    .param p1, "parameterMode"    # I

    .prologue
    .line 276
    packed-switch p1, :pswitch_data_0

    .line 296
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 278
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getStyle()I

    move-result v0

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getTransition()I

    move-result v0

    goto :goto_0

    .line 282
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getBlurStrength()I

    move-result v0

    goto :goto_0

    .line 284
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getBrightness()I

    move-result v0

    goto :goto_0

    .line 286
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getSaturation()I

    move-result v0

    goto :goto_0

    .line 288
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getContrast()I

    move-result v0

    goto :goto_0

    .line 290
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getXRadius()I

    move-result v0

    goto :goto_0

    .line 292
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getYRadius()I

    move-result v0

    goto :goto_0

    .line 294
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getRotationAngle()I

    move-result v0

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x7f0a021a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getParameterMax(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 244
    sparse-switch p1, :sswitch_data_0

    .line 250
    const/16 v0, 0x64

    :goto_0
    return v0

    .line 246
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    :sswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a021a -> :sswitch_0
        0x7f0a0222 -> :sswitch_1
    .end sparse-switch
.end method

.method public getParameterMin(I)I
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x2

    const/16 v1, -0x64

    .line 255
    packed-switch p1, :pswitch_data_0

    .line 267
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 261
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 263
    goto :goto_0

    .line 265
    :pswitch_4
    const/16 v0, -0xb4

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a021d
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public getParameterMode()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mParameterMode:I

    return v0
.end method

.method public getRotationAngle()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mRotationAngle:I

    return v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mSaturation:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mStyle:I

    return v0
.end method

.method public getTransition()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mTransition:I

    return v0
.end method

.method public getXCenter()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXCenter:F

    return v0
.end method

.method public getXRadius()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXRadius:I

    return v0
.end method

.method public getYCenter()F
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mYCenter:F

    return v0
.end method

.method public getYRadius()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mYRadius:I

    return v0
.end method

.method public setBlurStrength(I)V
    .locals 0
    .param p1, "blurStrength"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBlurStrength:I

    .line 169
    return-void
.end method

.method public setBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBrightness:I

    .line 177
    return-void
.end method

.method public setContrast(I)V
    .locals 0
    .param p1, "contrast"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mContrast:I

    .line 193
    return-void
.end method

.method public setMaximum(I)V
    .locals 0
    .param p1, "maximum"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMaximum:I

    .line 145
    return-void
.end method

.method public setMinimum(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMinimum:I

    .line 137
    return-void
.end method

.method public setParameter(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 304
    packed-switch p1, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 306
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setStyle(I)V

    goto :goto_0

    .line 309
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setTransition(I)V

    goto :goto_0

    .line 312
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setBlurStrength(I)V

    goto :goto_0

    .line 315
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setBrightness(I)V

    goto :goto_0

    .line 318
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setSaturation(I)V

    goto :goto_0

    .line 321
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setContrast(I)V

    goto :goto_0

    .line 324
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setXRadius(I)V

    goto :goto_0

    .line 327
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setYRadius(I)V

    goto :goto_0

    .line 330
    :pswitch_8
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setRotationAngle(I)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x7f0a021a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setParameterMode(I)V
    .locals 0
    .param p1, "parameterMode"    # I

    .prologue
    .line 240
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mParameterMode:I

    .line 241
    return-void
.end method

.method public setRotationAngle(I)V
    .locals 0
    .param p1, "rotationangle"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mRotationAngle:I

    .line 217
    return-void
.end method

.method public setSaturation(I)V
    .locals 0
    .param p1, "saturation"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mSaturation:I

    .line 185
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mStyle:I

    .line 153
    return-void
.end method

.method public setTransition(I)V
    .locals 0
    .param p1, "transition"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mTransition:I

    .line 161
    return-void
.end method

.method public setXCenter(F)V
    .locals 0
    .param p1, "xcenter"    # F

    .prologue
    .line 224
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXCenter:F

    .line 225
    return-void
.end method

.method public setXRadius(I)V
    .locals 0
    .param p1, "xradius"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXRadius:I

    .line 201
    return-void
.end method

.method public setYCenter(F)V
    .locals 0
    .param p1, "ycenter"    # F

    .prologue
    .line 232
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mYCenter:F

    .line 233
    return-void
.end method

.method public setYRadius(I)V
    .locals 0
    .param p1, "yradius"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mYRadius:I

    .line 209
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mTransition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBlurStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mSaturation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mContrast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mYRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mRotationAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mXCenter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->mYCenter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 2
    .param p1, "a"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 86
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;

    .line 88
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setMinimum(I)V

    .line 89
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setMaximum(I)V

    .line 90
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setStyle(I)V

    .line 91
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getTransition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setTransition(I)V

    .line 92
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getBlurStrength()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setBlurStrength(I)V

    .line 93
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getBrightness()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setBrightness(I)V

    .line 94
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getSaturation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setSaturation(I)V

    .line 95
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getContrast()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setContrast(I)V

    .line 96
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getXRadius()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setXRadius(I)V

    .line 97
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getYRadius()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setYRadius(I)V

    .line 98
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getRotationAngle()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setRotationAngle(I)V

    .line 99
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getXCenter()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setXCenter(F)V

    .line 100
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getYCenter()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setYCenter(F)V

    .line 101
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;->setParameterMode(I)V

    .line 103
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterTiltAndShiftRepresentation;
    :cond_0
    return-void
.end method
