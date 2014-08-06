.class public Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterCenterFocusRepresentation.java"


# instance fields
.field private mBlurStrength:I

.field private mCenterSize:I

.field private mFilterStrength:I

.field private mInnerBrightness:I

.field private mMaximum:I

.field private mMinimum:I

.field private mOuterBrightness:I

.field private mParameterMode:I

.field private mStyle:I

.field private mXCenter:F

.field private mYCenter:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/16 v4, 0x1b

    const/16 v3, 0xd

    const/16 v2, -0x23

    const/4 v1, 0x0

    .line 47
    const-string v0, "CenterFocus"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 31
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMinimum:I

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMaximum:I

    .line 33
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mStyle:I

    .line 35
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mFilterStrength:I

    .line 36
    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mCenterSize:I

    .line 37
    iput v5, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mInnerBrightness:I

    .line 38
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mBlurStrength:I

    .line 39
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mOuterBrightness:I

    .line 41
    const/high16 v0, 0x7fc00000

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mXCenter:F

    .line 44
    const v0, 0x7f0a01c3

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mParameterMode:I

    .line 48
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setStyle(I)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setFilterStrength(I)V

    .line 51
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setCenterSize(I)V

    .line 52
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setInnerBrightness(I)V

    .line 53
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setBlurStrength(I)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setOuterBrightness(I)V

    .line 55
    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setTextId(I)V

    .line 56
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setButtonId(I)V

    .line 57
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setEditorId(I)V

    .line 58
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setPriority(I)V

    .line 59
    return-void
.end method

.method private setPreset(IIIIF)V
    .locals 1
    .param p1, "filterStrength"    # I
    .param p2, "blurStrength"    # I
    .param p3, "vignetteStrength"    # I
    .param p4, "brightness"    # I
    .param p5, "centerSize"    # F

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setFilterStrength(I)V

    .line 127
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setBlurStrength(I)V

    .line 128
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setOuterBrightness(I)V

    .line 129
    invoke-virtual {p0, p4}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setInnerBrightness(I)V

    .line 130
    const/high16 v0, 0x42c80000

    mul-float/2addr v0, p5

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setCenterSize(I)V

    .line 131
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
    .line 70
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .line 71
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setMinimum(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setMaximum(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setStyle(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getFilterStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setFilterStrength(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getCenterSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setCenterSize(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getInnerBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setInnerBrightness(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getBlurStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setBlurStrength(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getOuterBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setOuterBrightness(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getXCenter()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setXCenter(F)V

    .line 80
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getYCenter()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setYCenter(F)V

    .line 81
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setParameterMode(I)V

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
    .line 28
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .line 109
    .local v0, "centerfocus":Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMinimum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMinimum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMaximum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMaximum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mStyle:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mStyle:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mFilterStrength:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mFilterStrength:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mCenterSize:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mCenterSize:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mInnerBrightness:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mInnerBrightness:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mBlurStrength:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mBlurStrength:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mOuterBrightness:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mOuterBrightness:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mXCenter:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mXCenter:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mYCenter:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mYCenter:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 119
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBlurStrength()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mBlurStrength:I

    return v0
.end method

.method public getCenterSize()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mCenterSize:I

    return v0
.end method

.method public getFilterStrength()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mFilterStrength:I

    return v0
.end method

.method public getInnerBrightness()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mInnerBrightness:I

    return v0
.end method

.method public getMaximum()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMaximum:I

    return v0
.end method

.method public getMinimum()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMinimum:I

    return v0
.end method

.method public getOuterBrightness()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mOuterBrightness:I

    return v0
.end method

.method public getParameter(I)I
    .locals 1
    .param p1, "parameterMode"    # I

    .prologue
    .line 261
    packed-switch p1, :pswitch_data_0

    .line 275
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 263
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getStyle()I

    move-result v0

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getFilterStrength()I

    move-result v0

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getCenterSize()I

    move-result v0

    goto :goto_0

    .line 269
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getInnerBrightness()I

    move-result v0

    goto :goto_0

    .line 271
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getBlurStrength()I

    move-result v0

    goto :goto_0

    .line 273
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getOuterBrightness()I

    move-result v0

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01c1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getParameterMax(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 237
    packed-switch p1, :pswitch_data_0

    .line 241
    const/16 v0, 0x64

    :goto_0
    return v0

    .line 239
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x7f0a01c1
        :pswitch_0
    .end packed-switch
.end method

.method public getParameterMin(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/16 v0, -0x64

    .line 246
    packed-switch p1, :pswitch_data_0

    .line 252
    const/4 v0, 0x0

    :pswitch_0
    return v0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01c4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getParameterMode()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mParameterMode:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mStyle:I

    return v0
.end method

.method public getXCenter()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mXCenter:F

    return v0
.end method

.method public getYCenter()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mYCenter:F

    return v0
.end method

.method public setBlurStrength(I)V
    .locals 0
    .param p1, "blurStrength"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mBlurStrength:I

    .line 202
    return-void
.end method

.method public setCenterSize(I)V
    .locals 0
    .param p1, "centerSize"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mCenterSize:I

    .line 186
    return-void
.end method

.method public setFilterStrength(I)V
    .locals 0
    .param p1, "filterStrength"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mFilterStrength:I

    .line 178
    return-void
.end method

.method public setInnerBrightness(I)V
    .locals 0
    .param p1, "innerBrightness"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mInnerBrightness:I

    .line 194
    return-void
.end method

.method public setMaximum(I)V
    .locals 0
    .param p1, "maximum"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMaximum:I

    .line 147
    return-void
.end method

.method public setMinimum(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMinimum:I

    .line 139
    return-void
.end method

.method public setOuterBrightness(I)V
    .locals 0
    .param p1, "outerBrightness"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mOuterBrightness:I

    .line 210
    return-void
.end method

.method public setParameter(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 285
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setStyle(I)V

    goto :goto_0

    .line 288
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setFilterStrength(I)V

    goto :goto_0

    .line 291
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setCenterSize(I)V

    goto :goto_0

    .line 294
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setInnerBrightness(I)V

    goto :goto_0

    .line 297
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setBlurStrength(I)V

    goto :goto_0

    .line 300
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setOuterBrightness(I)V

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x7f0a01c1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setParameterMode(I)V
    .locals 0
    .param p1, "parameterMode"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mParameterMode:I

    .line 234
    return-void
.end method

.method public setStyle(I)V
    .locals 12
    .param p1, "style"    # I

    .prologue
    const/4 v3, 0x1

    const v5, 0x3ea8f5c3

    const/4 v1, 0x0

    .line 154
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mStyle:I

    .line 156
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mStyle:I

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 157
    :pswitch_0
    const/16 v2, 0xd

    const/16 v3, -0x23

    const/16 v4, 0x1e

    const v5, 0x3e8a3d71

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setPreset(IIIIF)V

    goto :goto_0

    .line 159
    :pswitch_1
    const/16 v3, -0x53

    const/16 v4, 0x19

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setPreset(IIIIF)V

    goto :goto_0

    .line 161
    :pswitch_2
    const/16 v3, -0x5f

    const v5, 0x3f0ccccd

    move-object v0, p0

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setPreset(IIIIF)V

    goto :goto_0

    .line 163
    :pswitch_3
    const/16 v4, 0x42

    const/16 v5, -0x32

    const v7, 0x3ec28f5c

    move-object v2, p0

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setPreset(IIIIF)V

    goto :goto_0

    .line 165
    :pswitch_4
    const/16 v8, 0x28

    const/16 v9, -0x55

    move-object v6, p0

    move v7, v3

    move v10, v1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setPreset(IIIIF)V

    goto :goto_0

    .line 167
    :pswitch_5
    const/16 v2, 0x55

    const/16 v3, 0x10

    const/16 v4, 0x14

    const v5, 0x3e6b851f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setPreset(IIIIF)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setXCenter(F)V
    .locals 0
    .param p1, "xcenter"    # F

    .prologue
    .line 217
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mXCenter:F

    .line 218
    return-void
.end method

.method public setYCenter(F)V
    .locals 0
    .param p1, "ycenter"    # F

    .prologue
    .line 225
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mYCenter:F

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mFilterStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mCenterSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mInnerBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mBlurStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mOuterBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mXCenter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->mYCenter:F

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
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .line 88
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setMinimum(I)V

    .line 89
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setMaximum(I)V

    .line 90
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setStyle(I)V

    .line 91
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getFilterStrength()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setFilterStrength(I)V

    .line 92
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getCenterSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setCenterSize(I)V

    .line 93
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getInnerBrightness()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setInnerBrightness(I)V

    .line 94
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getBlurStrength()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setBlurStrength(I)V

    .line 95
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getOuterBrightness()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setOuterBrightness(I)V

    .line 96
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getXCenter()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setXCenter(F)V

    .line 97
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getYCenter()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setYCenter(F)V

    .line 98
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->setParameterMode(I)V

    .line 100
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;
    :cond_0
    return-void
.end method
