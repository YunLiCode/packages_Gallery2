.class public Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;
.super Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
.source "FilterBlackAndWhiteRepresentation.java"


# static fields
.field private static final BRIGHTNESS_DFTS:[I

.field private static final CONTRAST_DFTS:[I

.field private static final GRAIN_DFTS:[I


# instance fields
.field private mBrightness:I

.field private mColorStyle:I

.field private mContrast:I

.field private mFilterStrength:I

.field private mGeneric:I

.field private mGrain:I

.field private mMaximum:I

.field private mMinimum:I

.field private mParameterMode:I

.field private mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 27
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->BRIGHTNESS_DFTS:[I

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->CONTRAST_DFTS:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->GRAIN_DFTS:[I

    return-void

    .line 27
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x14
        -0x14
        -0x3
        0x0
    .end array-data

    .line 28
    :array_1
    .array-data 4
        0x0
        0x1e
        0x19
        0x14
        0x32
        0x28
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x41
        0x23
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const-string v0, "BlackAndWhite"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;-><init>(Ljava/lang/String;)V

    .line 31
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mMinimum:I

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mMaximum:I

    .line 33
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    .line 34
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mColorStyle:I

    .line 35
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mBrightness:I

    .line 36
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mContrast:I

    .line 37
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGrain:I

    .line 38
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mFilterStrength:I

    .line 39
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGeneric:I

    .line 41
    const v0, 0x7f0a01b9

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mParameterMode:I

    .line 45
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setStyle(I)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setColorStyle(I)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setBrightness(I)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setContrast(I)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setGrain(I)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setFilterStrength(I)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setGeneric(I)V

    .line 53
    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setTextId(I)V

    .line 54
    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setButtonId(I)V

    .line 55
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setEditorId(I)V

    .line 56
    return-void
.end method

.method private updateFilterStrengthAndGeneric()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mColorStyle:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mFilterStrength:I

    .line 240
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mColorStyle:I

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_1
    return-void

    .line 239
    :cond_0
    const/16 v0, 0x64

    goto :goto_0

    .line 243
    :pswitch_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGeneric:I

    goto :goto_1

    .line 246
    :pswitch_1
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGeneric:I

    goto :goto_1

    .line 249
    :pswitch_2
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGeneric:I

    goto :goto_1

    .line 252
    :pswitch_3
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGeneric:I

    goto :goto_1

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 66
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    .line 68
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setMinimum(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setMaximum(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setStyle(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getColorStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setColorStyle(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setBrightness(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getContrast()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setContrast(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getGrain()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setGrain(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getFilterStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setFilterStrength(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getGeneric()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setGeneric(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setParameterMode(I)V

    .line 78
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 104
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    .line 106
    .local v0, "blackAndWhite":Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;
    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mMinimum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mMinimum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mMaximum:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mMaximum:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mColorStyle:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mColorStyle:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mBrightness:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mBrightness:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mContrast:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mContrast:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGrain:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGrain:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mFilterStrength:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mFilterStrength:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGeneric:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGeneric:I

    if-ne v2, v3, :cond_0

    .line 115
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mBrightness:I

    return v0
.end method

.method public getColorStyle()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mColorStyle:I

    return v0
.end method

.method public getContrast()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mContrast:I

    return v0
.end method

.method public getCurrentParameter()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 235
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 221
    :pswitch_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    goto :goto_0

    .line 223
    :pswitch_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mColorStyle:I

    goto :goto_0

    .line 225
    :pswitch_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mBrightness:I

    goto :goto_0

    .line 227
    :pswitch_3
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mContrast:I

    goto :goto_0

    .line 229
    :pswitch_4
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGrain:I

    goto :goto_0

    .line 231
    :pswitch_5
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mFilterStrength:I

    goto :goto_0

    .line 233
    :pswitch_6
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGeneric:I

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x7f0a01b9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getFilterStrength()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mFilterStrength:I

    return v0
.end method

.method public getGeneric()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGeneric:I

    return v0
.end method

.method public getGrain()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGrain:I

    return v0
.end method

.method public getMaximum()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 202
    :pswitch_0
    const/16 v0, 0x64

    :goto_0
    return v0

    .line 194
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 196
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 198
    :pswitch_3
    const/16 v0, 0xc8

    goto :goto_0

    .line 200
    :pswitch_4
    const/16 v0, 0x168

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x7f0a01b9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMinimum()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 183
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 181
    :pswitch_0
    const/16 v0, -0x64

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x7f0a01bb
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getParameterMode()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mParameterMode:I

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    return v0
.end method

.method public setBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mBrightness:I

    .line 143
    return-void
.end method

.method public setColorStyle(I)V
    .locals 0
    .param p1, "colorStyle"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mColorStyle:I

    .line 135
    return-void
.end method

.method public setContrast(I)V
    .locals 0
    .param p1, "contrast"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mContrast:I

    .line 151
    return-void
.end method

.method public setCurrentParameter(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 260
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mParameterMode:I

    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 262
    :pswitch_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    .line 263
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->BRIGHTNESS_DFTS:[I

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mBrightness:I

    .line 264
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->CONTRAST_DFTS:[I

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mContrast:I

    .line 265
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->GRAIN_DFTS:[I

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGrain:I

    .line 266
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mColorStyle:I

    .line 267
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->updateFilterStrengthAndGeneric()V

    goto :goto_0

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 270
    :pswitch_1
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mColorStyle:I

    .line 271
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->updateFilterStrengthAndGeneric()V

    goto :goto_0

    .line 274
    :pswitch_2
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mBrightness:I

    goto :goto_0

    .line 277
    :pswitch_3
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mContrast:I

    goto :goto_0

    .line 280
    :pswitch_4
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGrain:I

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01b9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setFilterStrength(I)V
    .locals 0
    .param p1, "filterStrength"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mFilterStrength:I

    .line 167
    return-void
.end method

.method public setGeneric(I)V
    .locals 0
    .param p1, "generic"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGeneric:I

    .line 175
    return-void
.end method

.method public setGrain(I)V
    .locals 0
    .param p1, "grain"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGrain:I

    .line 159
    return-void
.end method

.method public setMaximum(I)V
    .locals 0
    .param p1, "maximum"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mMaximum:I

    .line 208
    return-void
.end method

.method public setMinimum(I)V
    .locals 0
    .param p1, "minimum"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mMinimum:I

    .line 189
    return-void
.end method

.method public setParameterMode(I)V
    .locals 0
    .param p1, "parameterMode"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mParameterMode:I

    .line 216
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mColorStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mContrast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGrain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mFilterStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->mGeneric:I

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
    .line 82
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    .line 85
    .local v0, "representation":Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getMinimum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setMinimum(I)V

    .line 86
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getMaximum()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setMaximum(I)V

    .line 87
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getStyle()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setStyle(I)V

    .line 88
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getColorStyle()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setColorStyle(I)V

    .line 89
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getBrightness()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setBrightness(I)V

    .line 90
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getContrast()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setContrast(I)V

    .line 91
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getGrain()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setGrain(I)V

    .line 92
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getFilterStrength()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setFilterStrength(I)V

    .line 93
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getGeneric()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setGeneric(I)V

    .line 94
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getParameterMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->setParameterMode(I)V

    .line 96
    .end local v0    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;
    :cond_0
    return-void
.end method
