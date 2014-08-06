.class public Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterFilmRepresentation.java"


# instance fields
.field private mBlurStrength:I

.field private mBrightness:I

.field private mCenterSize:I

.field private mGrain:I

.field private mMaximum:I

.field private mMinimum:I

.field private mParameterMode:I

.field private mPreset:I

.field private mSaturation:I

.field private mStyle:I

.field private mStyleStrength:I

.field private mSubPreset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x32

    .line 40
    const-string v0, "Film"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 25
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mMinimum:I

    .line 26
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mMaximum:I

    .line 27
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    .line 28
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 29
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 30
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    .line 31
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mGrain:I

    .line 32
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyleStrength:I

    .line 33
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBrightness:I

    .line 34
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mPreset:I

    .line 35
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSubPreset:I

    .line 37
    const v0, 0x7f0a01e4

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mParameterMode:I

    .line 41
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setStyle(I)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setCenterSize(I)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setSaturation(I)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setBlurStrength(I)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setGrain(I)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setStyleStrength(I)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setBrightness(I)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setPreset(I)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setSubPreset(I)V

    .line 51
    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setTextId(I)V

    .line 52
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setButtonId(I)V

    .line 53
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setEditorId(I)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setShowEditingControls(Z)V

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setPriority(I)V

    .line 56
    return-void
.end method

.method private handlePresets()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v4, 0x1e

    const/16 v1, 0x19

    const/16 v3, 0x32

    const/4 v2, 0x0

    .line 260
    iget v5, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mPreset:I

    mul-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSubPreset:I

    add-int v0, v5, v6

    .line 261
    .local v0, "preset":I
    iget v5, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mPreset:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 262
    :cond_0
    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    .line 263
    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 269
    :pswitch_0
    if-ne v0, v7, :cond_3

    const/16 v4, 0x46

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 273
    :goto_1
    if-eqz v0, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    .line 275
    if-nez v0, :cond_5

    const/16 v1, 0x28

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto :goto_0

    .line 270
    :cond_3
    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    goto :goto_1

    .line 271
    :cond_4
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    goto :goto_1

    .line 276
    :cond_5
    if-ne v0, v7, :cond_6

    const/16 v1, 0x23

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto :goto_0

    .line 277
    :cond_6
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto :goto_0

    .line 286
    :pswitch_1
    const/16 v1, 0x4b

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 287
    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    :goto_2
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    .line 288
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto :goto_0

    .line 287
    :cond_7
    const/16 v2, 0x4b

    goto :goto_2

    .line 296
    :pswitch_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    move v1, v3

    :goto_3
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 297
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    move v1, v4

    :goto_4
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    .line 298
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto :goto_0

    :cond_8
    move v1, v2

    .line 296
    goto :goto_3

    :cond_9
    move v1, v2

    .line 297
    goto :goto_4

    .line 307
    :pswitch_3
    const/16 v4, 0xc

    if-eq v0, v4, :cond_a

    const/16 v4, 0xe

    if-ne v0, v4, :cond_e

    :cond_a
    const/16 v4, 0x41

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 310
    :goto_5
    const/16 v4, 0xb

    if-eq v0, v4, :cond_b

    const/16 v4, 0xc

    if-ne v0, v4, :cond_c

    :cond_b
    move v2, v1

    :cond_c
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    .line 311
    const/16 v1, 0xe

    if-ne v0, v1, :cond_d

    const/16 v3, 0x28

    :cond_d
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto :goto_0

    .line 308
    :cond_e
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    goto :goto_5

    .line 320
    :pswitch_4
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 321
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    .line 323
    const/16 v2, 0xf

    if-ne v0, v2, :cond_f

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto :goto_0

    .line 324
    :cond_f
    const/16 v2, 0x11

    if-ne v0, v2, :cond_10

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto/16 :goto_0

    .line 325
    :cond_10
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto/16 :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
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

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    .line 68
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setMinimum(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setMaximum(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setStyle(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getCenterSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setCenterSize(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getSaturation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setSaturation(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getBlurStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setBlurStrength(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getGrain()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setGrain(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getStyleStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setStyleStrength(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setBrightness(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getPreset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setPreset(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getSubPreset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setSubPreset(I)V

    .line 79
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 105
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    .line 106
    .local v0, "film":Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mMinimum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mMinimum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mMaximum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mMaximum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mGrain:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mGrain:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyleStrength:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyleStrength:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBrightness:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBrightness:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mPreset:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mPreset:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSubPreset:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSubPreset:I

    if-ne v2, v3, :cond_0

    .line 117
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBlurStrength()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    return v0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBrightness:I

    return v0
.end method

.method public getCenterSize()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    return v0
.end method

.method public getCurrentParameter()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 354
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 336
    :pswitch_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    goto :goto_0

    .line 338
    :pswitch_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    goto :goto_0

    .line 340
    :pswitch_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto :goto_0

    .line 342
    :pswitch_3
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto :goto_0

    .line 344
    :pswitch_4
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mGrain:I

    goto :goto_0

    .line 346
    :pswitch_5
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyleStrength:I

    goto :goto_0

    .line 348
    :pswitch_6
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBrightness:I

    goto :goto_0

    .line 350
    :pswitch_7
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mPreset:I

    goto :goto_0

    .line 352
    :pswitch_8
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSubPreset:I

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x7f0a01e4
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getGrain()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mGrain:I

    return v0
.end method

.method public getMaximum()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    const/16 v1, 0x64

    .line 224
    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mParameterMode:I

    packed-switch v2, :pswitch_data_0

    .line 244
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mMaximum:I

    :cond_0
    :goto_0
    return v0

    .line 226
    :pswitch_0
    const/16 v0, 0x13

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 228
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 230
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 232
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 234
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 236
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    .line 242
    :pswitch_8
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mPreset:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x7f0a01e4
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getMinimum()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 196
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mParameterMode:I

    packed-switch v1, :pswitch_data_0

    .line 216
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mMinimum:I

    :goto_0
    :pswitch_0
    return v0

    .line 210
    :pswitch_1
    const/16 v0, -0x64

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x7f0a01e4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPreset()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mPreset:I

    return v0
.end method

.method public getSaturation()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    return v0
.end method

.method public getStyleStrength()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyleStrength:I

    return v0
.end method

.method public getSubPreset()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSubPreset:I

    return v0
.end method

.method public setBlurStrength(I)V
    .locals 0
    .param p1, "blurStrength"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    .line 153
    return-void
.end method

.method public setBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBrightness:I

    .line 177
    return-void
.end method

.method public setCenterSize(I)V
    .locals 0
    .param p1, "centerSize"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 137
    return-void
.end method

.method public setCurrentParameter(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0x46

    const/16 v4, 0x50

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 358
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 483
    :goto_0
    :pswitch_0
    return-void

    .line 360
    :pswitch_1
    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    .line 361
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    .line 362
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mGrain:I

    .line 363
    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 364
    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 365
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    .line 367
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 369
    :pswitch_2
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 370
    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 371
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto :goto_0

    .line 374
    :pswitch_3
    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 375
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 376
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto :goto_0

    .line 379
    :pswitch_4
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 380
    iput v5, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 381
    iput v6, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto :goto_0

    .line 384
    :pswitch_5
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 385
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 386
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto :goto_0

    .line 389
    :pswitch_6
    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 390
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 391
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    .line 392
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mGrain:I

    goto :goto_0

    .line 395
    :pswitch_7
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 396
    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 397
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto :goto_0

    .line 400
    :pswitch_8
    iput v6, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 401
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 402
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto :goto_0

    .line 405
    :pswitch_9
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 406
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 407
    const/16 v0, -0x14

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto :goto_0

    .line 412
    :pswitch_a
    iput v5, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 413
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 414
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    .line 415
    const/16 v0, 0x37

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mGrain:I

    goto :goto_0

    .line 422
    :pswitch_b
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto :goto_0

    .line 425
    :pswitch_c
    iput v5, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto :goto_0

    .line 428
    :pswitch_d
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 429
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto/16 :goto_0

    .line 432
    :pswitch_e
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 433
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 434
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto/16 :goto_0

    .line 437
    :pswitch_f
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 438
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto/16 :goto_0

    .line 441
    :pswitch_10
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 442
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 443
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto/16 :goto_0

    .line 446
    :pswitch_11
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 447
    const/16 v0, 0x41

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 448
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto/16 :goto_0

    .line 451
    :pswitch_12
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    .line 452
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto/16 :goto_0

    .line 457
    :pswitch_13
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    goto/16 :goto_0

    .line 460
    :pswitch_14
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    goto/16 :goto_0

    .line 463
    :pswitch_15
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    goto/16 :goto_0

    .line 466
    :pswitch_16
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mGrain:I

    goto/16 :goto_0

    .line 469
    :pswitch_17
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyleStrength:I

    goto/16 :goto_0

    .line 472
    :pswitch_18
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBrightness:I

    goto/16 :goto_0

    .line 475
    :pswitch_19
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mPreset:I

    .line 476
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->handlePresets()V

    goto/16 :goto_0

    .line 479
    :pswitch_1a
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSubPreset:I

    .line 480
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->handlePresets()V

    goto/16 :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x7f0a01e4
        :pswitch_19
        :pswitch_1a
        :pswitch_1
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    .line 367
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public setGrain(I)V
    .locals 0
    .param p1, "grain"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mGrain:I

    .line 161
    return-void
.end method

.method public setMaximum(I)V
    .locals 0
    .param p1, "maximum"    # I

    .prologue
    .line 248
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mMaximum:I

    .line 249
    return-void
.end method

.method public setMinimum(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mMinimum:I

    .line 221
    return-void
.end method

.method public setParameterMode(I)V
    .locals 0
    .param p1, "parameterMode"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mParameterMode:I

    .line 257
    return-void
.end method

.method public setPreset(I)V
    .locals 0
    .param p1, "preset"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mPreset:I

    .line 185
    return-void
.end method

.method public setSaturation(I)V
    .locals 0
    .param p1, "saturation"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    .line 145
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    .line 129
    return-void
.end method

.method public setStyleStrength(I)V
    .locals 0
    .param p1, "styleStrength"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyleStrength:I

    .line 169
    return-void
.end method

.method public setSubPreset(I)V
    .locals 0
    .param p1, "subPreset"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSubPreset:I

    .line 193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mCenterSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSaturation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBlurStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mGrain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mStyleStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mPreset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->mSubPreset:I

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
    .line 83
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    .line 85
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setMinimum(I)V

    .line 86
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setMaximum(I)V

    .line 87
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setStyle(I)V

    .line 88
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getCenterSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setCenterSize(I)V

    .line 89
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getSaturation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setSaturation(I)V

    .line 90
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getBlurStrength()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setBlurStrength(I)V

    .line 91
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getGrain()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setGrain(I)V

    .line 92
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getStyleStrength()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setStyleStrength(I)V

    .line 93
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getBrightness()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setBrightness(I)V

    .line 94
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getPreset()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setPreset(I)V

    .line 95
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getSubPreset()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->setSubPreset(I)V

    .line 97
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;
    :cond_0
    return-void
.end method
