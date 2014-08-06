.class public Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;
.super Ljava/lang/Object;
.source "AutoCorrectMath.java"


# instance fields
.field private final lut_max:I

.field private final lut_max_idx:I

.field private final lut_min:I

.field private final lut_zero:I

.field private mAverageB:I

.field private mAverageG:I

.field private mAverageR:I

.field private mBlackpoint1B:I

.field private mBlackpoint1G:I

.field private mBlackpoint1R:I

.field private mBlackpoint2B:I

.field private mBlackpoint2G:I

.field private mBlackpoint2R:I

.field private mContrB:[I

.field private mContrG:[I

.field private mContrR:[I

.field private mHistogramCalculated:Z

.field private mOldFineTuneColor:I

.field private mOldFixExposure:I

.field private mOriginalPicture:Landroid/graphics/Bitmap;

.field private mWhitepoint1B:I

.field private mWhitepoint1G:I

.field private mWhitepoint1R:I

.field private mWhitepoint2B:I

.field private mWhitepoint2G:I

.field private mWhitepoint2R:I

.field private final maxVal:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v2, 0x1800

    const/4 v1, -0x1

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, -0x800

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lut_min:I

    .line 48
    const/16 v0, 0x800

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lut_zero:I

    .line 49
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lut_max:I

    .line 50
    const/16 v0, 0xfff

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lut_max_idx:I

    .line 51
    const/16 v0, 0x7ff

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->maxVal:I

    .line 53
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrR:[I

    .line 54
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrG:[I

    .line 55
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrB:[I

    .line 58
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOldFixExposure:I

    .line 59
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOldFineTuneColor:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mHistogramCalculated:Z

    .line 63
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageR:I

    .line 64
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageG:I

    .line 65
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageB:I

    .line 67
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint1R:I

    .line 68
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint1G:I

    .line 69
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint1B:I

    .line 70
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint2R:I

    .line 71
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint2G:I

    .line 72
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint2B:I

    .line 73
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint1R:I

    .line 74
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint1G:I

    .line 75
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint1B:I

    .line 76
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint2R:I

    .line 77
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint2G:I

    .line 78
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint2B:I

    .line 80
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOriginalPicture:Landroid/graphics/Bitmap;

    .line 81
    return-void
.end method

.method private lookupTableBend([II)V
    .locals 9
    .param p1, "array"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 150
    const/16 v0, -0x800

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x1000

    if-ge v0, v3, :cond_0

    .line 151
    add-int/lit16 v3, v0, -0x400

    int-to-double v3, v3

    const-wide/high16 v5, 0x4090000000000000L

    div-double v1, v3, v5

    .line 152
    .local v1, "square":D
    const-wide/high16 v3, 0x3ff0000000000000L

    mul-double v5, v1, v1

    sub-double v1, v3, v5

    .line 153
    add-int/lit16 v3, v0, 0x800

    aget v4, p1, v3

    int-to-double v5, p2

    mul-double/2addr v5, v1

    const-wide/high16 v7, 0x3fe0000000000000L

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v4, v5

    aput v4, p1, v3

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "square":D
    :cond_0
    return-void
.end method

.method private lookupTableBlurDown([II)V
    .locals 12
    .param p1, "array"    # [I
    .param p2, "r"    # I

    .prologue
    const/16 v11, 0x1000

    const/16 v10, 0xfff

    const/16 v9, -0x800

    .line 103
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x1000

    new-array v4, v6, [I

    .line 105
    .local v4, "help":[I
    const/16 v5, -0x800

    .local v5, "i":I
    :goto_0
    if-ge v5, v11, :cond_0

    .line 106
    sub-int v0, v5, p2

    .line 107
    .local v0, "a":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 108
    move v1, v5

    .line 109
    .local v1, "b":I
    add-int v3, v5, p2

    .line 110
    .local v3, "c":I
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 111
    add-int/lit16 v6, v5, 0x800

    add-int/lit16 v7, v0, 0x800

    aget v7, p1, v7

    add-int/lit16 v8, v1, 0x800

    aget v8, p1, v8

    add-int/2addr v7, v8

    add-int/lit16 v8, v3, 0x800

    aget v8, p1, v8

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 105
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v3    # "c":I
    :cond_0
    const/16 v5, -0x800

    :goto_1
    if-ge v5, v11, :cond_1

    .line 115
    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v6, p2

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v0, v6, 0x2

    .line 116
    .restart local v0    # "a":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 117
    move v1, v5

    .line 118
    .restart local v1    # "b":I
    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v6, p2

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v3, v6, 0x2

    .line 119
    .restart local v3    # "c":I
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 121
    add-int/lit16 v6, v0, 0x800

    aget v6, v4, v6

    add-int/lit16 v7, v1, 0x800

    aget v7, v4, v7

    add-int/2addr v6, v7

    add-int/lit16 v7, v3, 0x800

    aget v7, v4, v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    div-int/lit8 v2, v6, 0x9

    .line 122
    .local v2, "blurred":I
    add-int/lit16 v6, v5, 0x800

    add-int/lit16 v7, v5, 0x800

    aget v7, p1, v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, p1, v6

    .line 114
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "blurred":I
    .end local v3    # "c":I
    :cond_1
    return-void
.end method

.method private lookupTableBlurUp([II)V
    .locals 12
    .param p1, "array"    # [I
    .param p2, "r"    # I

    .prologue
    const/16 v11, 0x1000

    const/16 v10, 0xfff

    const/16 v9, -0x800

    .line 127
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x1000

    new-array v4, v6, [I

    .line 129
    .local v4, "help":[I
    const/16 v5, -0x800

    .local v5, "i":I
    :goto_0
    if-ge v5, v11, :cond_0

    .line 130
    sub-int v0, v5, p2

    .line 131
    .local v0, "a":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 132
    move v1, v5

    .line 133
    .local v1, "b":I
    add-int v3, v5, p2

    .line 134
    .local v3, "c":I
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 135
    add-int/lit16 v6, v5, 0x800

    add-int/lit16 v7, v0, 0x800

    aget v7, p1, v7

    add-int/lit16 v8, v1, 0x800

    aget v8, p1, v8

    add-int/2addr v7, v8

    add-int/lit16 v8, v3, 0x800

    aget v8, p1, v8

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 129
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v3    # "c":I
    :cond_0
    const/16 v5, -0x800

    :goto_1
    if-ge v5, v11, :cond_1

    .line 139
    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v6, p2

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v0, v6, 0x2

    .line 140
    .restart local v0    # "a":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 141
    move v1, v5

    .line 142
    .restart local v1    # "b":I
    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v6, p2

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v3, v6, 0x2

    .line 143
    .restart local v3    # "c":I
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 144
    add-int/lit16 v6, v0, 0x800

    aget v6, v4, v6

    add-int/lit16 v7, v1, 0x800

    aget v7, v4, v7

    add-int/2addr v6, v7

    add-int/lit16 v7, v3, 0x800

    aget v7, v4, v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    div-int/lit8 v2, v6, 0x9

    .line 145
    .local v2, "blurred":I
    add-int/lit16 v6, v5, 0x800

    add-int/lit16 v7, v5, 0x800

    aget v7, p1, v7

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, p1, v6

    .line 138
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 147
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "blurred":I
    .end local v3    # "c":I
    :cond_1
    return-void
.end method

.method private lookupTableCreateRGBLookupTexture([I[I[I)[B
    .locals 9
    .param p1, "array_r"    # [I
    .param p2, "array_g"    # [I
    .param p3, "array_b"    # [I

    .prologue
    const/16 v8, 0x300

    .line 169
    new-array v6, v8, [B

    .line 170
    .local v6, "redData":[B
    invoke-direct {p0, p1, v6}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableTextureDataFromTable([I[B)V

    .line 172
    new-array v1, v8, [B

    .line 173
    .local v1, "greenData":[B
    invoke-direct {p0, p2, v1}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableTextureDataFromTable([I[B)V

    .line 175
    new-array v0, v8, [B

    .line 176
    .local v0, "blueData":[B
    invoke-direct {p0, p3, v0}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableTextureDataFromTable([I[B)V

    .line 178
    const/16 v7, 0xc00

    new-array v5, v7, [B

    .line 179
    .local v5, "memory":[B
    const/4 v3, 0x0

    .line 180
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 181
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aget-byte v7, v6, v2

    aput-byte v7, v5, v4

    .line 182
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    aget-byte v7, v1, v2

    aput-byte v7, v5, v3

    .line 183
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    aget-byte v7, v0, v2

    aput-byte v7, v5, v4

    .line 184
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    const/16 v7, 0x7f

    aput-byte v7, v5, v3

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-object v5
.end method

.method private lookupTableInit([I)V
    .locals 2
    .param p1, "array"    # [I

    .prologue
    .line 84
    const/16 v0, -0x800

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    .line 85
    add-int/lit16 v1, v0, 0x800

    aput v0, p1, v1

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method private lookupTableSet([III)V
    .locals 1
    .param p1, "array"    # [I
    .param p2, "i"    # I
    .param p3, "value"    # I

    .prologue
    .line 89
    add-int/lit16 v0, p2, 0x800

    aput p3, p1, v0

    .line 90
    return-void
.end method

.method private lookupTableTextureDataFromTable([I[B)V
    .locals 5
    .param p1, "array"    # [I
    .param p2, "data"    # [B

    .prologue
    .line 158
    const/16 v1, 0x8

    .line 160
    .local v1, "scaleFac":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x300

    if-ge v0, v3, :cond_0

    .line 161
    mul-int/lit8 v3, v0, 0x8

    aget v3, p1, v3

    int-to-float v3, v3

    const/high16 v4, 0x41000000

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 162
    .local v2, "value":I
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 163
    const/16 v3, 0xff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 164
    add-int/lit8 v3, v2, -0x80

    int-to-byte v3, v3

    aput-byte v3, p2, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "value":I
    :cond_0
    return-void
.end method

.method private lookupTableTruncate([I)V
    .locals 4
    .param p1, "array"    # [I

    .prologue
    const/16 v3, 0x7ff

    .line 93
    const/16 v0, -0x800

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1000

    if-ge v0, v1, :cond_2

    .line 94
    add-int/lit16 v1, v0, 0x800

    aget v1, p1, v1

    if-gez v1, :cond_0

    .line 95
    add-int/lit16 v1, v0, 0x800

    const/4 v2, 0x0

    aput v2, p1, v1

    .line 97
    :cond_0
    add-int/lit16 v1, v0, 0x800

    aget v1, p1, v1

    if-le v1, v3, :cond_1

    .line 98
    add-int/lit16 v1, v0, 0x800

    aput v3, p1, v1

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_2
    return-void
.end method

.method private maxi(II)I
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 418
    if-le p1, p2, :cond_0

    .end local p1    # "a":I
    :goto_0
    return p1

    .restart local p1    # "a":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private mini(II)I
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 422
    if-ge p1, p2, :cond_0

    .end local p1    # "a":I
    :goto_0
    return p1

    .restart local p1    # "a":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private updateHistogram()V
    .locals 17

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mHistogramCalculated:Z

    if-eqz v15, :cond_0

    .line 415
    :goto_0
    return-void

    .line 305
    :cond_0
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mHistogramCalculated:Z

    .line 307
    const/16 v15, 0x100

    new-array v9, v15, [I

    .line 308
    .local v9, "luminanceR":[I
    const/16 v15, 0x100

    new-array v8, v15, [I

    .line 309
    .local v8, "luminanceG":[I
    const/16 v15, 0x100

    new-array v7, v15, [I

    .line 311
    .local v7, "luminanceB":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v15, 0xff

    if-ge v4, v15, :cond_1

    .line 312
    const/4 v15, 0x0

    aput v15, v7, v4

    aput v15, v8, v4

    aput v15, v9, v4

    .line 311
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 314
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOriginalPicture:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    mul-int v14, v15, v16

    .line 316
    .local v14, "totalcount":I
    const v11, 0x7fffffff

    .local v11, "minim":I
    const/high16 v10, -0x80000000

    .line 318
    .local v10, "maxim":I
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-ge v4, v15, :cond_3

    .line 319
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-ge v6, v15, :cond_2

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v15, v4, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 321
    .local v2, "color":I
    shr-int/lit8 v15, v2, 0x10

    and-int/lit16 v12, v15, 0xff

    .line 322
    .local v12, "r":I
    shr-int/lit8 v15, v2, 0x8

    and-int/lit16 v3, v15, 0xff

    .line 323
    .local v3, "g":I
    and-int/lit16 v1, v2, 0xff

    .line 325
    .local v1, "b":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 326
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 327
    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 329
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 330
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 331
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 333
    aget v15, v9, v12

    add-int/lit8 v15, v15, 0x1

    aput v15, v9, v12

    .line 334
    aget v15, v8, v3

    add-int/lit8 v15, v15, 0x1

    aput v15, v8, v3

    .line 335
    aget v15, v7, v1

    add-int/lit8 v15, v15, 0x1

    aput v15, v7, v1

    .line 337
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageR:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageR:I

    .line 338
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageG:I

    add-int/2addr v15, v3

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageG:I

    .line 339
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageB:I

    add-int/2addr v15, v1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageB:I

    .line 319
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 318
    .end local v1    # "b":I
    .end local v2    # "color":I
    .end local v3    # "g":I
    .end local v12    # "r":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 343
    .end local v6    # "j":I
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageR:I

    div-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageR:I

    .line 344
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageG:I

    div-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageG:I

    .line 345
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageB:I

    div-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageB:I

    .line 347
    const/4 v13, 0x0

    .line 348
    .local v13, "sum":I
    const/4 v4, 0x0

    .line 351
    :goto_4
    mul-int/lit8 v15, v14, 0xf

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_4

    .line 352
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v15, v9, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_4

    .line 353
    :cond_4
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint1R:I

    .line 355
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 356
    :goto_5
    mul-int/lit8 v15, v14, 0xf

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_5

    .line 357
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v15, v8, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_5

    .line 358
    :cond_5
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint1G:I

    .line 360
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 361
    :goto_6
    mul-int/lit8 v15, v14, 0xf

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_6

    .line 362
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v15, v7, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_6

    .line 363
    :cond_6
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint1B:I

    .line 367
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 368
    :goto_7
    mul-int/lit8 v15, v14, 0x64

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_7

    .line 369
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v15, v9, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_7

    .line 370
    :cond_7
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint2R:I

    .line 372
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 373
    :goto_8
    mul-int/lit8 v15, v14, 0x64

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_8

    .line 374
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v15, v8, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_8

    .line 375
    :cond_8
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint2G:I

    .line 377
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 378
    :goto_9
    mul-int/lit8 v15, v14, 0x64

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_9

    .line 379
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v15, v7, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_9

    .line 380
    :cond_9
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint2B:I

    .line 384
    const/4 v13, 0x0

    const/16 v4, 0xff

    .line 385
    :goto_a
    mul-int/lit8 v15, v14, 0xf

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_a

    .line 386
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v15, v9, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_a

    .line 387
    :cond_a
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint1R:I

    .line 389
    const/4 v13, 0x0

    const/16 v4, 0xff

    .line 390
    :goto_b
    mul-int/lit8 v15, v14, 0xf

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_b

    .line 391
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v15, v8, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_b

    .line 392
    :cond_b
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint1G:I

    .line 394
    const/4 v13, 0x0

    const/16 v4, 0xff

    .line 395
    :goto_c
    mul-int/lit8 v15, v14, 0xf

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_c

    .line 396
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v15, v7, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_c

    .line 397
    :cond_c
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint1B:I

    .line 401
    const/4 v13, 0x0

    const/16 v4, 0xff

    .line 402
    :goto_d
    mul-int/lit8 v15, v14, 0x64

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_d

    .line 403
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v15, v9, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_d

    .line 404
    :cond_d
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint2R:I

    .line 406
    const/4 v13, 0x0

    const/16 v4, 0xff

    .line 407
    :goto_e
    mul-int/lit8 v15, v14, 0x64

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_e

    .line 408
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v15, v8, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_e

    .line 409
    :cond_e
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint2G:I

    .line 411
    const/4 v13, 0x0

    const/16 v4, 0xff

    .line 412
    :goto_f
    mul-int/lit8 v15, v14, 0x64

    div-int/lit16 v15, v15, 0x3e8

    if-ge v13, v15, :cond_f

    .line 413
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    aget v15, v7, v4

    add-int/2addr v13, v15

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_f

    .line 414
    :cond_f
    mul-int/lit8 v15, v4, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint2B:I

    goto/16 :goto_0
.end method


# virtual methods
.method public createRGBLookupTexture()[B
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrR:[I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrG:[I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrB:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableCreateRGBLookupTexture([I[I[I)[B

    move-result-object v0

    return-object v0
.end method

.method public updateLookupTables(II)V
    .locals 37
    .param p1, "fixExposure"    # I
    .param p2, "fineTuneColor"    # I

    .prologue
    .line 195
    if-ltz p1, :cond_0

    const/16 v32, 0x64

    move/from16 v0, p1

    move/from16 v1, v32

    if-gt v0, v1, :cond_0

    if-ltz p2, :cond_0

    const/16 v32, 0x64

    move/from16 v0, p2

    move/from16 v1, v32

    if-le v0, v1, :cond_1

    .line 197
    :cond_0
    new-instance v30, Ljava/lang/Throwable;

    invoke-direct/range {v30 .. v30}, Ljava/lang/Throwable;-><init>()V

    .line 198
    .local v30, "t":Ljava/lang/Throwable;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    .end local v30    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->updateHistogram()V

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOldFixExposure:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOldFineTuneColor:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 301
    :goto_0
    return-void

    .line 207
    :cond_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOldFixExposure:I

    .line 208
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOldFineTuneColor:I

    .line 210
    const/16 v32, 0x64

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOldFixExposure:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOldFineTuneColor:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, -0x32

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const v36, 0x3fa66666

    mul-float v35, v35, v36

    const/high16 v36, 0x3f000000

    add-float v35, v35, v36

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->floor(D)D

    move-result-wide v35

    move-wide/from16 v0, v35

    double-to-int v0, v0

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->maxi(II)I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mini(II)I

    move-result v19

    .line 212
    .local v19, "fColorCorrect":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mOldFixExposure:I

    move/from16 v20, v0

    .line 213
    .local v20, "fContrastCorrect":I
    div-int/lit8 v28, v20, 0x2

    .line 214
    .local v28, "fProtectLo":I
    div-int/lit8 v27, v20, 0x4

    .line 219
    .local v27, "fProtectHi":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint1R:I

    .line 220
    .local v13, "Min1_r":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint1G:I

    .line 221
    .local v12, "Min1_g":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint1B:I

    .line 222
    .local v11, "Min1_b":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint2R:I

    move/from16 v16, v0

    .line 223
    .local v16, "Min2_r":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint2G:I

    .line 224
    .local v15, "Min2_g":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mBlackpoint2B:I

    .line 225
    .local v14, "Min2_b":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint1R:I

    .line 226
    .local v6, "Max1_r":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint1G:I

    .line 227
    .local v5, "Max1_g":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint1B:I

    .line 228
    .local v4, "Max1_b":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint2R:I

    .line 229
    .local v9, "Max2_r":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint2G:I

    .line 230
    .local v8, "Max2_g":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mWhitepoint2B:I

    .line 234
    .local v7, "Max2_b":I
    const/16 v32, 0x32

    move/from16 v0, v20

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    .line 235
    mul-int/lit8 v31, v20, 0x2

    .line 236
    .local v31, "w":I
    mul-int v32, v13, v31

    rsub-int/lit8 v33, v31, 0x64

    mul-int/lit8 v33, v33, 0x0

    add-int v32, v32, v33

    div-int/lit8 v26, v32, 0x64

    .line 237
    .local v26, "fMin_r":I
    mul-int v32, v12, v31

    rsub-int/lit8 v33, v31, 0x64

    mul-int/lit8 v33, v33, 0x0

    add-int v32, v32, v33

    div-int/lit8 v25, v32, 0x64

    .line 238
    .local v25, "fMin_g":I
    mul-int v32, v11, v31

    rsub-int/lit8 v33, v31, 0x64

    mul-int/lit8 v33, v33, 0x0

    add-int v32, v32, v33

    div-int/lit8 v24, v32, 0x64

    .line 239
    .local v24, "fMin_b":I
    mul-int v32, v6, v31

    rsub-int/lit8 v33, v31, 0x64

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x7ff

    move/from16 v33, v0

    add-int v32, v32, v33

    div-int/lit8 v23, v32, 0x64

    .line 240
    .local v23, "fMax_r":I
    mul-int v32, v5, v31

    rsub-int/lit8 v33, v31, 0x64

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x7ff

    move/from16 v33, v0

    add-int v32, v32, v33

    div-int/lit8 v22, v32, 0x64

    .line 241
    .local v22, "fMax_g":I
    mul-int v32, v4, v31

    rsub-int/lit8 v33, v31, 0x64

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x7ff

    move/from16 v33, v0

    add-int v32, v32, v33

    div-int/lit8 v21, v32, 0x64

    .line 254
    .local v21, "fMax_b":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mini(II)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mini(II)I

    move-result v17

    .line 255
    .local v17, "MinNeutral":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->maxi(II)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->maxi(II)I

    move-result v10

    .line 257
    .local v10, "MaxNeutral":I
    mul-int v32, v26, v19

    rsub-int/lit8 v33, v19, 0x64

    mul-int v33, v33, v17

    add-int v32, v32, v33

    div-int/lit8 v26, v32, 0x64

    .line 258
    mul-int v32, v25, v19

    rsub-int/lit8 v33, v19, 0x64

    mul-int v33, v33, v17

    add-int v32, v32, v33

    div-int/lit8 v25, v32, 0x64

    .line 259
    mul-int v32, v24, v19

    rsub-int/lit8 v33, v19, 0x64

    mul-int v33, v33, v17

    add-int v32, v32, v33

    div-int/lit8 v24, v32, 0x64

    .line 260
    mul-int v32, v23, v19

    rsub-int/lit8 v33, v19, 0x64

    mul-int v33, v33, v10

    add-int v32, v32, v33

    div-int/lit8 v23, v32, 0x64

    .line 261
    mul-int v32, v22, v19

    rsub-int/lit8 v33, v19, 0x64

    mul-int v33, v33, v10

    add-int v32, v32, v33

    div-int/lit8 v22, v32, 0x64

    .line 262
    mul-int v32, v21, v19

    rsub-int/lit8 v33, v19, 0x64

    mul-int v33, v33, v10

    add-int v32, v32, v33

    div-int/lit8 v21, v32, 0x64

    .line 264
    move/from16 v0, v23

    move/from16 v1, v26

    if-gt v0, v1, :cond_3

    add-int/lit8 v23, v26, 0x1

    .line 265
    :cond_3
    move/from16 v0, v22

    move/from16 v1, v25

    if-gt v0, v1, :cond_4

    add-int/lit8 v22, v25, 0x1

    .line 266
    :cond_4
    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_5

    add-int/lit8 v21, v24, 0x1

    .line 268
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrR:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableInit([I)V

    .line 269
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_2
    const/16 v32, 0x800

    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrR:[I

    move-object/from16 v32, v0

    sub-int v33, v29, v26

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x800

    move/from16 v33, v0

    sub-int v34, v23, v26

    div-int v33, v33, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v29

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableSet([III)V

    .line 269
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 243
    .end local v10    # "MaxNeutral":I
    .end local v17    # "MinNeutral":I
    .end local v21    # "fMax_b":I
    .end local v22    # "fMax_g":I
    .end local v23    # "fMax_r":I
    .end local v24    # "fMin_b":I
    .end local v25    # "fMin_g":I
    .end local v26    # "fMin_r":I
    .end local v29    # "i":I
    .end local v31    # "w":I
    :cond_6
    add-int/lit8 v32, v20, -0x32

    mul-int/lit8 v31, v32, 0x2

    .line 244
    .restart local v31    # "w":I
    mul-int v32, v16, v31

    rsub-int/lit8 v33, v31, 0x64

    mul-int v33, v33, v13

    add-int v32, v32, v33

    div-int/lit8 v26, v32, 0x64

    .line 245
    .restart local v26    # "fMin_r":I
    mul-int v32, v15, v31

    rsub-int/lit8 v33, v31, 0x64

    mul-int v33, v33, v12

    add-int v32, v32, v33

    div-int/lit8 v25, v32, 0x64

    .line 246
    .restart local v25    # "fMin_g":I
    mul-int v32, v14, v31

    rsub-int/lit8 v33, v31, 0x64

    mul-int v33, v33, v11

    add-int v32, v32, v33

    div-int/lit8 v24, v32, 0x64

    .line 247
    .restart local v24    # "fMin_b":I
    mul-int v32, v9, v31

    rsub-int/lit8 v33, v31, 0x64

    mul-int v33, v33, v6

    add-int v32, v32, v33

    div-int/lit8 v23, v32, 0x64

    .line 248
    .restart local v23    # "fMax_r":I
    mul-int v32, v8, v31

    rsub-int/lit8 v33, v31, 0x64

    mul-int v33, v33, v5

    add-int v32, v32, v33

    div-int/lit8 v22, v32, 0x64

    .line 249
    .restart local v22    # "fMax_g":I
    mul-int v32, v7, v31

    rsub-int/lit8 v33, v31, 0x64

    mul-int v33, v33, v4

    add-int v32, v32, v33

    div-int/lit8 v21, v32, 0x64

    .restart local v21    # "fMax_b":I
    goto/16 :goto_1

    .line 272
    .restart local v10    # "MaxNeutral":I
    .restart local v17    # "MinNeutral":I
    .restart local v29    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrR:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableTruncate([I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrR:[I

    move-object/from16 v32, v0

    mul-int/lit8 v33, v27, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableBlurDown([II)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrR:[I

    move-object/from16 v32, v0

    mul-int/lit8 v33, v28, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableBlurUp([II)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrG:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableInit([I)V

    .line 277
    const/16 v29, 0x0

    :goto_3
    const/16 v32, 0x800

    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrG:[I

    move-object/from16 v32, v0

    sub-int v33, v29, v25

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x800

    move/from16 v33, v0

    sub-int v34, v22, v25

    div-int v33, v33, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v29

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableSet([III)V

    .line 277
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 280
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrG:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableTruncate([I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrG:[I

    move-object/from16 v32, v0

    mul-int/lit8 v33, v27, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableBlurDown([II)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrG:[I

    move-object/from16 v32, v0

    mul-int/lit8 v33, v28, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableBlurUp([II)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrB:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableInit([I)V

    .line 285
    const/16 v29, 0x0

    :goto_4
    const/16 v32, 0x800

    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrB:[I

    move-object/from16 v32, v0

    sub-int v33, v29, v24

    move/from16 v0, v33

    mul-int/lit16 v0, v0, 0x800

    move/from16 v33, v0

    sub-int v34, v21, v24

    div-int v33, v33, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v29

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableSet([III)V

    .line 285
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 288
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrB:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableTruncate([I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrB:[I

    move-object/from16 v32, v0

    mul-int/lit8 v33, v27, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableBlurDown([II)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrB:[I

    move-object/from16 v32, v0

    mul-int/lit8 v33, v28, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableBlurUp([II)V

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageR:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageG:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageB:I

    move/from16 v33, v0

    add-int v32, v32, v33

    div-int/lit8 v18, v32, 0x3

    .line 294
    .local v18, "average_of_average":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageR:I

    move/from16 v32, v0

    sub-int v32, v32, v18

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageR:I

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageG:I

    move/from16 v32, v0

    sub-int v32, v32, v18

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageG:I

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageB:I

    move/from16 v32, v0

    sub-int v32, v32, v18

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageB:I

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrR:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageR:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, -0x1

    mul-int v33, v33, v19

    div-int/lit8 v33, v33, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableBend([II)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrG:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageG:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, -0x1

    mul-int v33, v33, v19

    div-int/lit8 v33, v33, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableBend([II)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mContrB:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->mAverageB:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, -0x1

    mul-int v33, v33, v19

    div-int/lit8 v33, v33, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->lookupTableBend([II)V

    goto/16 :goto_0
.end method
