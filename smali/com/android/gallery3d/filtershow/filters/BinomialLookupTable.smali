.class public Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;
.super Ljava/lang/Object;
.source "BinomialLookupTable.java"


# instance fields
.field final NOISE_TEXTURE_ENLARGED_WIDTH:I

.field final NOISE_TEXTURE_HEIGHT:I

.field final NOISE_TEXTURE_WIDTH:I

.field private mLastGrainSliderStrength:F

.field private mLastScalingFactor:F

.field private mLnGammaLookupTable:[F

.field private mState:J


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x800

    const/16 v3, 0x100

    const/high16 v2, -0x40800000

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v1, 0x40

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->NOISE_TEXTURE_WIDTH:I

    .line 24
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->NOISE_TEXTURE_ENLARGED_WIDTH:I

    .line 26
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->NOISE_TEXTURE_HEIGHT:I

    .line 28
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mLnGammaLookupTable:[F

    .line 35
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mLastGrainSliderStrength:F

    .line 36
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mLastScalingFactor:F

    .line 38
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mLnGammaLookupTable:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 40
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mLnGammaLookupTable:[F

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mLnGammaLookupTable:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    const-wide/16 v1, 0x2a

    iput-wide v1, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mState:J

    .line 44
    return-void
.end method

.method private binomial(IF)I
    .locals 6
    .param p1, "n"    # I
    .param p2, "p"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 223
    const/4 v0, 0x0

    .line 226
    .local v0, "invert":Z
    const/high16 v4, 0x3f000000

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 228
    const/high16 v4, 0x3f800000

    sub-float p2, v4, p2

    .line 230
    :cond_0
    int-to-float v4, p1

    mul-float v1, v4, p2

    .line 232
    .local v1, "n_mal_p":F
    if-eqz p1, :cond_1

    cmpl-float v4, p2, v5

    if-nez v4, :cond_4

    :cond_1
    if-eqz v0, :cond_3

    .end local p1    # "n":I
    :goto_0
    move v2, p1

    .line 242
    :cond_2
    :goto_1
    return v2

    .restart local p1    # "n":I
    :cond_3
    move p1, v3

    .line 232
    goto :goto_0

    .line 234
    :cond_4
    if-ltz p1, :cond_5

    cmpg-float v4, p2, v5

    if-gez v4, :cond_6

    :cond_5
    move v2, v3

    goto :goto_1

    .line 236
    :cond_6
    const/high16 v3, 0x41a00000

    cmpg-float v3, v1, v3

    if-gez v3, :cond_7

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->binomial_small_n_mal_p(IF)I

    move-result v2

    .line 242
    .local v2, "x":I
    :goto_2
    if-eqz v0, :cond_2

    sub-int v2, p1, v2

    goto :goto_1

    .line 239
    .end local v2    # "x":I
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->binomial_big_n_mal_p(IF)I

    move-result v2

    .restart local v2    # "x":I
    goto :goto_2
.end method

.method private binomial_big_n_mal_p(IF)I
    .locals 14
    .param p1, "n"    # I
    .param p2, "p"    # F

    .prologue
    .line 200
    int-to-float v10, p1

    mul-float v5, v10, p2

    .line 201
    .local v5, "n_mal_p":F
    add-float v10, v5, p2

    float-to-int v6, v10

    .line 202
    .local v6, "n_mal_p_plus_p":I
    const/high16 v10, 0x3f000000

    add-float v0, v5, v10

    .line 203
    .local v0, "a":F
    const v10, 0x403c5ab2

    const/high16 v11, 0x3f800000

    sub-float v11, v11, p2

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f000000

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    const v11, 0x3f661f5f

    add-float v1, v10, v11

    .line 204
    .local v1, "h":F
    const/high16 v10, 0x40c00000

    mul-float/2addr v10, v1

    add-float/2addr v10, v0

    int-to-float v11, p1

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    move v4, p1

    .line 205
    .local v4, "max":I
    :goto_0
    invoke-direct {p0, v6}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->ln_gamma(I)F

    move-result v10

    sub-int v11, p1, v6

    invoke-direct {p0, v11}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->ln_gamma(I)F

    move-result v11

    add-float v3, v10, v11

    .line 210
    .local v3, "lng":F
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->random()F

    move-result v7

    .line 211
    .local v7, "r":F
    :goto_1
    const/4 v10, 0x0

    cmpl-float v10, v7, v10

    if-nez v10, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->random()F

    move-result v7

    goto :goto_1

    .line 204
    .end local v3    # "lng":F
    .end local v4    # "max":I
    .end local v7    # "r":F
    :cond_1
    const/high16 v10, 0x40c00000

    mul-float/2addr v10, v1

    add-float/2addr v10, v0

    float-to-int v4, v10

    goto :goto_0

    .line 212
    .restart local v3    # "lng":F
    .restart local v4    # "max":I
    .restart local v7    # "r":F
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->random()F

    move-result v10

    const/high16 v11, 0x3f000000

    sub-float/2addr v10, v11

    mul-float/2addr v10, v1

    div-float/2addr v10, v7

    add-float v8, v0, v10

    .line 213
    .local v8, "r1":F
    int-to-float v10, v4

    cmpl-float v10, v8, v10

    if-gtz v10, :cond_0

    const/4 v10, 0x0

    cmpg-float v10, v8, v10

    if-ltz v10, :cond_0

    .line 214
    float-to-int v9, v8

    .line 215
    .local v9, "r1_int":I
    sub-int v10, v9, v6

    int-to-float v10, v10

    const/high16 v11, 0x3f800000

    sub-float v11, v11, p2

    div-float v11, p2, v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v10, v3

    sub-int v11, p1, v9

    invoke-direct {p0, v11}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->ln_gamma(I)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-direct {p0, v9}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->ln_gamma(I)F

    move-result v11

    sub-float v2, v10, v11

    .line 216
    .local v2, "lnf":F
    const/high16 v10, 0x40800000

    sub-float/2addr v10, v7

    mul-float/2addr v10, v7

    const/high16 v11, 0x40400000

    sub-float/2addr v10, v11

    cmpg-float v10, v10, v2

    if-gtz v10, :cond_3

    .line 218
    :goto_2
    return v9

    .line 217
    :cond_3
    sub-float v10, v7, v2

    mul-float/2addr v10, v7

    const/high16 v11, 0x3f800000

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_0

    .line 218
    const-wide/high16 v10, 0x4000000000000000L

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    float-to-double v12, v2

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    goto :goto_2
.end method

.method private binomial_small_n_mal_p(IF)I
    .locals 18
    .param p1, "n"    # I
    .param p2, "p"    # F

    .prologue
    .line 164
    const/4 v9, 0x0

    .line 166
    .local v9, "x":I
    const/high16 v10, 0x3f800000

    sub-float v1, v10, p2

    .line 167
    .local v1, "emp":F
    const/high16 v3, 0x3f800000

    .line 169
    .local v3, "f_0":F
    move/from16 v6, p1

    .line 170
    .local v6, "n_":I
    :goto_0
    if-lez v6, :cond_1

    .line 171
    and-int/lit8 v10, v6, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    mul-float/2addr v3, v1

    .line 172
    :cond_0
    mul-float/2addr v1, v1

    .line 173
    shr-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 176
    :cond_1
    add-int/lit8 v10, p1, 0x1

    int-to-float v10, v10

    mul-float v10, v10, p2

    float-to-double v10, v10

    const-wide/high16 v12, 0x4026000000000000L

    add-int/lit8 v14, p1, 0x1

    int-to-float v14, v14

    mul-float v14, v14, p2

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v8, v10

    .line 177
    .local v8, "ub":I
    move/from16 v0, p1

    if-le v8, v0, :cond_2

    move/from16 v8, p1

    .line 179
    :cond_2
    const/4 v4, 0x1

    .line 180
    .local v4, "goon":Z
    :cond_3
    :goto_1
    if-eqz v4, :cond_6

    .line 181
    const/4 v9, 0x0

    .line 182
    move/from16 v5, p1

    .line 183
    .local v5, "l":I
    move v2, v3

    .line 184
    .local v2, "f":F
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->random()F

    move-result v7

    .line 186
    .local v7, "r":F
    :cond_4
    sub-float/2addr v7, v2

    .line 187
    const/4 v10, 0x0

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_5

    const/4 v4, 0x0

    .line 193
    :goto_2
    if-gt v9, v8, :cond_3

    if-nez v4, :cond_4

    goto :goto_1

    .line 188
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 189
    const/high16 v10, 0x3f800000

    sub-float v10, v10, p2

    div-float v10, p2, v10

    int-to-float v11, v5

    mul-float/2addr v10, v11

    mul-float/2addr v2, v10

    .line 190
    add-int/lit8 v5, v5, -0x1

    .line 191
    int-to-float v10, v9

    mul-float/2addr v7, v10

    goto :goto_2

    .line 195
    .end local v2    # "f":F
    .end local v5    # "l":I
    .end local v7    # "r":F
    :cond_6
    return v9
.end method

.method private grainSensitivityModifier(FFF)I
    .locals 7
    .param p1, "grainSliderStrength"    # F
    .param p2, "currentScalingFactor"    # F
    .param p3, "imageDiagonal"    # F

    .prologue
    const/16 v6, 0x4b

    const v5, 0x44bb8000

    .line 116
    const/high16 v3, 0x43fa0000

    sub-float/2addr v3, p1

    const/high16 v4, 0x40a00000

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 117
    .local v1, "l":I
    const/4 v2, 0x0

    .line 118
    .local v2, "sens":I
    if-le v1, v6, :cond_4

    add-int/lit8 v3, v1, -0x4b

    mul-int/lit8 v3, v3, 0x6

    div-int/lit8 v3, v3, 0x19

    rsub-int/lit8 v2, v3, 0x6

    .line 124
    :cond_0
    :goto_0
    move v0, v2

    .line 125
    .local v0, "final_sens":I
    const/16 v3, 0x1e

    if-le v2, v3, :cond_1

    .line 126
    add-int/lit8 v3, v2, -0x1e

    add-int/lit8 v4, v2, -0x1e

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    .line 127
    :cond_1
    if-le v2, v6, :cond_2

    .line 128
    add-int/lit8 v3, v2, -0x4b

    add-int/lit8 v4, v2, -0x4b

    mul-int/2addr v3, v4

    add-int/lit8 v4, v2, -0x4b

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    .line 129
    :cond_2
    const/high16 v3, 0x3f800000

    int-to-float v4, v0

    mul-float/2addr v3, v4

    mul-float v4, p2, p2

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 132
    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-lez v3, :cond_3

    .line 133
    int-to-float v3, v0

    div-float v4, p3, v5

    div-float v5, p3, v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 136
    :cond_3
    return v0

    .line 119
    .end local v0    # "final_sens":I
    :cond_4
    const/16 v3, 0x32

    if-le v1, v3, :cond_5

    add-int/lit8 v3, v1, -0x32

    mul-int/lit8 v3, v3, 0xe

    div-int/lit8 v3, v3, 0x19

    rsub-int/lit8 v2, v3, 0x14

    goto :goto_0

    .line 120
    :cond_5
    const/16 v3, 0x19

    if-le v1, v3, :cond_6

    add-int/lit8 v3, v1, -0x19

    mul-int/lit8 v3, v3, 0xf

    div-int/lit8 v3, v3, 0x19

    rsub-int/lit8 v2, v3, 0x23

    goto :goto_0

    .line 121
    :cond_6
    const/4 v3, 0x5

    if-le v1, v3, :cond_7

    add-int/lit8 v3, v1, -0x5

    mul-int/lit8 v3, v3, 0x14

    div-int/lit8 v3, v3, 0x14

    rsub-int/lit8 v2, v3, 0x37

    goto :goto_0

    .line 122
    :cond_7
    if-ltz v1, :cond_0

    const/16 v2, 0x37

    goto :goto_0
.end method

.method private ln_gamma(I)F
    .locals 8
    .param p1, "n"    # I

    .prologue
    .line 146
    const/16 v5, 0x800

    if-ge p1, v5, :cond_1

    .line 147
    const/4 v5, 0x1

    if-gt p1, v5, :cond_0

    .line 148
    const/4 v4, 0x0

    .line 159
    :goto_0
    return v4

    .line 150
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mLnGammaLookupTable:[F

    aget v4, v5, p1

    goto :goto_0

    .line 154
    :cond_1
    const v0, 0x3f6b3f8e

    .line 155
    .local v0, "c0":F
    const v1, 0x3daaaaab

    .line 156
    .local v1, "c1":F
    const v2, -0x44c9f49f

    .line 157
    .local v2, "c3":F
    const/high16 v5, 0x3f800000

    int-to-float v6, p1

    div-float v3, v5, v6

    .line 158
    .local v3, "n_m1":F
    int-to-float v5, p1

    const/high16 v6, 0x3f000000

    add-float/2addr v5, v6

    int-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, p1

    sub-float/2addr v5, v6

    add-float/2addr v5, v0

    mul-float v6, v3, v3

    mul-float/2addr v6, v2

    add-float/2addr v6, v1

    mul-float/2addr v6, v3

    add-float v4, v5, v6

    .line 159
    .local v4, "result":F
    goto :goto_0
.end method

.method private random()F
    .locals 6

    .prologue
    .line 140
    const-wide/32 v2, 0x19660d

    iget-wide v4, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mState:J

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x3c6ef35f

    add-long/2addr v2, v4

    const-wide v4, 0x100000000L

    rem-long v0, v2, v4

    .line 141
    .local v0, "tmp":J
    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mState:J

    .line 142
    const/high16 v2, 0x3f800000

    iget-wide v3, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mState:J

    long-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x2f800000

    mul-float/2addr v2, v3

    return v2
.end method


# virtual methods
.method public calcGrainStrengthUniform(F)F
    .locals 4
    .param p1, "grainSliderStrength"    # F

    .prologue
    .line 104
    const/high16 v2, 0x43fa0000

    sub-float/2addr v2, p1

    const/high16 v3, 0x40a00000

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 105
    .local v0, "l":I
    const/4 v1, 0x0

    .line 106
    .local v1, "tmp":I
    const/16 v2, 0x4b

    if-le v0, v2, :cond_1

    const/16 v1, 0x64

    .line 111
    :cond_0
    :goto_0
    const v2, 0x3c23d70a

    int-to-float v3, v1

    mul-float/2addr v2, v3

    return v2

    .line 107
    :cond_1
    const/16 v2, 0x32

    if-le v0, v2, :cond_2

    const/16 v1, 0x64

    goto :goto_0

    .line 108
    :cond_2
    const/16 v2, 0x19

    if-le v0, v2, :cond_3

    add-int/lit8 v2, v0, -0x19

    mul-int/lit8 v2, v2, 0x1e

    div-int/lit8 v2, v2, 0x19

    add-int/lit8 v1, v2, 0x46

    goto :goto_0

    .line 109
    :cond_3
    const/4 v2, 0x5

    if-le v0, v2, :cond_4

    add-int/lit8 v2, v0, -0x5

    mul-int/lit8 v2, v2, 0x1e

    div-int/lit8 v2, v2, 0x14

    add-int/lit8 v1, v2, 0x28

    goto :goto_0

    .line 110
    :cond_4
    if-ltz v0, :cond_0

    mul-int/lit8 v1, v0, 0x8

    goto :goto_0
.end method

.method public createLookuptTextureMemory(FFF)[B
    .locals 19
    .param p1, "grainSliderStrength"    # F
    .param p2, "currentScalingFactor"    # F
    .param p3, "imageDiagonal"    # F

    .prologue
    .line 59
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mLastScalingFactor:F

    .line 60
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mLastGrainSliderStrength:F

    .line 62
    invoke-direct/range {p0 .. p3}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->grainSensitivityModifier(FFF)I

    move-result v5

    .line 63
    .local v5, "final_sens":I
    const/high16 v11, 0x43800000

    .line 66
    .local v11, "sizehf":F
    const/high16 v15, 0x10000

    new-array v9, v15, [B

    .line 68
    .local v9, "mem":[B
    const/4 v6, 0x0

    .local v6, "h":I
    :goto_0
    const/16 v15, 0x100

    if-ge v6, v15, :cond_7

    .line 69
    int-to-float v15, v6

    const/high16 v16, 0x3f800000

    sub-float v16, v11, v16

    div-float v10, v15, v16

    .line 70
    .local v10, "p":F
    mul-int/lit16 v8, v6, 0x100

    .line 72
    .local v8, "lineStartIndex":I
    const/4 v12, 0x0

    .line 73
    .local v12, "tmp":F
    const/4 v14, 0x0

    .local v14, "w":I
    :goto_1
    const/16 v15, 0x40

    if-ge v14, v15, :cond_2

    .line 74
    const/high16 v15, 0x3f800000

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->binomial(IF)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    int-to-float v0, v5

    move/from16 v16, v0

    div-float v2, v15, v16

    .line 75
    .local v2, "L":F
    const/4 v15, 0x0

    cmpg-float v15, v2, v15

    if-gez v15, :cond_1

    const/4 v2, 0x0

    .line 78
    :cond_0
    :goto_2
    const/high16 v15, 0x437f0000

    mul-float/2addr v15, v2

    const/high16 v16, 0x3f000000

    add-float v15, v15, v16

    float-to-int v15, v15

    int-to-short v3, v15

    .line 80
    .local v3, "Li":S
    add-int v15, v8, v14

    add-int/lit8 v16, v3, -0x80

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 81
    int-to-float v15, v3

    add-float/2addr v12, v15

    .line 73
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 76
    .end local v3    # "Li":S
    :cond_1
    const/high16 v15, 0x3f800000

    cmpl-float v15, v2, v15

    if-lez v15, :cond_0

    const/high16 v2, 0x3f800000

    goto :goto_2

    .line 84
    .end local v2    # "L":F
    :cond_2
    const/high16 v15, 0x42800000

    div-float/2addr v12, v15

    .line 85
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v15

    sub-int v4, v15, v6

    .line 86
    .local v4, "delta":I
    const/4 v14, 0x0

    :goto_3
    const/16 v15, 0x40

    if-ge v14, v15, :cond_5

    .line 87
    add-int v15, v8, v14

    aget-byte v15, v9, v15

    add-int/lit16 v15, v15, 0x80

    sub-int v13, v15, v4

    .line 88
    .local v13, "value":I
    if-gez v13, :cond_4

    const/4 v13, 0x0

    .line 91
    :cond_3
    :goto_4
    add-int v15, v8, v14

    add-int/lit8 v16, v13, -0x80

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v9, v15

    .line 86
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 89
    :cond_4
    const/16 v15, 0xff

    if-le v13, v15, :cond_3

    const/16 v13, 0xff

    goto :goto_4

    .line 94
    .end local v13    # "value":I
    :cond_5
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    const/16 v15, 0x40

    if-ge v7, v15, :cond_6

    .line 95
    add-int v15, v8, v7

    add-int/lit8 v15, v15, 0x40

    add-int v16, v8, v7

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    add-int v17, v8, v7

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xc0

    move/from16 v17, v0

    add-int v18, v8, v7

    aget-byte v18, v9, v18

    aput-byte v18, v9, v17

    aput-byte v18, v9, v16

    aput-byte v18, v9, v15

    .line 94
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 68
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 100
    .end local v4    # "delta":I
    .end local v7    # "i":I
    .end local v8    # "lineStartIndex":I
    .end local v10    # "p":F
    .end local v12    # "tmp":F
    .end local v14    # "w":I
    :cond_7
    return-object v9
.end method

.method public getLastGrainSliderStrength()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->mLastGrainSliderStrength:F

    return v0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x100

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x100

    return v0
.end method
