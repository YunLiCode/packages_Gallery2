.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterBlackAndWhite.java"


# instance fields
.field private m256:Landroid/support/v8/renderscript/Allocation;

.field private mBinomialLookupTable:Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;

.field private mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

.field private mBrightness:Landroid/support/v8/renderscript/Allocation;

.field private mBrightnessBitmapHeight:I

.field private mContrast:Landroid/support/v8/renderscript/Allocation;

.field private mContrastBitmapHeight:I

.field private mFxBitmap:Landroid/graphics/Bitmap;

.field private mGrainAllocation:Landroid/support/v8/renderscript/Allocation;

.field private mLookup:Landroid/support/v8/renderscript/Allocation;

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    .line 46
    const-string v0, "BlackAndWhite"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private calculateSEPGrainSliderValue(I)F
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 133
    div-int/lit8 p1, p1, 0x5

    .line 134
    mul-int/lit8 p1, p1, 0x5

    .line 137
    mul-int/lit8 p1, p1, 0x5

    .line 139
    const/high16 v1, 0x43fa0000

    int-to-float v2, p1

    sub-float v0, v1, v2

    .line 140
    .local v0, "grain":F
    const/high16 v1, 0x3f800000

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 141
    const/high16 v0, 0x3f800000

    .line 144
    :cond_0
    return v0
.end method

.method private updateCurveTexture()V
    .locals 10

    .prologue
    const/high16 v9, 0x43480000

    const/high16 v8, 0x3f800000

    .line 107
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getBrightness()I

    move-result v0

    .line 108
    .local v0, "brightnessParam":I
    add-int/lit8 v6, v0, 0x64

    int-to-float v6, v6

    div-float v1, v6, v9

    .line 109
    .local v1, "brightnessPos":F
    iget v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBrightnessBitmapHeight:I

    int-to-float v6, v6

    sub-float v7, v8, v1

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 110
    .local v2, "brightnessPosY":I
    iget v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBrightnessBitmapHeight:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 113
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getContrast()I

    move-result v3

    .line 114
    .local v3, "contrastParam":I
    add-int/lit8 v6, v3, 0x64

    int-to-float v6, v6

    div-float v4, v6, v9

    .line 115
    .local v4, "contrastPos":F
    iget v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mContrastBitmapHeight:I

    int-to-float v6, v6

    sub-float v7, v8, v4

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 116
    .local v5, "contrastPosY":I
    iget v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mContrastBitmapHeight:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 118
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    invoke-virtual {v6, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_brightnessY(I)V

    .line 119
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_contrastY(I)V

    .line 120
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->m256:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;)V

    .line 121
    return-void
.end method

.method private updateNoiseTexture()V
    .locals 5

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getGrain()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->calculateSEPGrainSliderValue(I)F

    move-result v0

    .line 125
    .local v0, "grain":F
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBinomialLookupTable:Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->getLastGrainSliderStrength()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mGrainAllocation:Landroid/support/v8/renderscript/Allocation;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBinomialLookupTable:Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;

    const/high16 v3, 0x3f800000

    const/high16 v4, -0x40800000

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->createLookuptTextureMemory(FFF)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Allocation;->copyFrom([B)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 95
    if-nez p3, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mFxBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f02009d

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/IconUtilities;->getFXBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mFxBitmap:Landroid/graphics/Bitmap;

    .line 100
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mFxBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/android/gallery3d/filtershow/filters/IconUtilities;->applyFX(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bindScriptValues()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_brightness(Landroid/support/v8/renderscript/Allocation;)V

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mContrast:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_contrast(Landroid/support/v8/renderscript/Allocation;)V

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_lookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_inputWidth(J)V

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_inputHeight(J)V

    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBinomialLookupTable:Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->getTextureWidth()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_grainTextureWidth(J)V

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBinomialLookupTable:Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->getTextureHeight()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_grainTextureHeight(J)V

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v8/renderscript/Sampler;->MIRRORED_REPEAT_NEAREST(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_sampler(Landroid/support/v8/renderscript/Sampler;)V

    .line 195
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 151
    .local v0, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    if-nez v4, :cond_0

    .line 152
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v5

    const v6, 0x7f080008

    invoke-direct {v4, v5, p1, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    .line 158
    :cond_0
    new-instance v2, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 159
    .local v2, "tb_bool":Landroid/support/v8/renderscript/Type$Builder;
    const/16 v4, 0x100

    invoke-virtual {v2, v4}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 160
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->m256:Landroid/support/v8/renderscript/Allocation;

    .line 162
    new-instance v3, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 163
    .local v3, "tb_lookup":Landroid/support/v8/renderscript/Type$Builder;
    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 164
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mLookup:Landroid/support/v8/renderscript/Allocation;

    .line 167
    const v4, 0x7f02003f

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->loadResourceAlpha(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mContrast:Landroid/support/v8/renderscript/Allocation;

    .line 168
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mContrast:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mContrastBitmapHeight:I

    .line 170
    const v4, 0x7f02000f

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->loadResourceAlpha(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    .line 171
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBrightnessBitmapHeight:I

    .line 173
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBinomialLookupTable:Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;

    .line 175
    new-instance v1, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 176
    .local v1, "tb_A_8":Landroid/support/v8/renderscript/Type$Builder;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBinomialLookupTable:Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->getTextureWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 177
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBinomialLookupTable:Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->getTextureHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 178
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    sget-object v5, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x3

    invoke-static {v0, v4, v5, v6}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mGrainAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 181
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 65
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mContrast:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mContrast:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 69
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mContrast:Landroid/support/v8/renderscript/Allocation;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->m256:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->m256:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 73
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->m256:Landroid/support/v8/renderscript/Allocation;

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mLookup:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 77
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mLookup:Landroid/support/v8/renderscript/Allocation;

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mGrainAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mGrainAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 81
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mGrainAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 83
    :cond_4
    return-void
.end method

.method protected resetScripts()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->destroy()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    .line 91
    :cond_0
    return-void
.end method

.method protected runFilter()V
    .locals 15

    .prologue
    const v14, 0x3fcccccd

    const v13, 0x3f4ccccd

    const v12, -0x40333333

    const v11, -0x40b33333

    const/high16 v10, 0x3f800000

    .line 199
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    if-nez v7, :cond_0

    .line 245
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getFilterStrength()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_filterStrength(F)V

    .line 203
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getGeneric()I

    move-result v7

    int-to-float v3, v7

    .line 204
    .local v3, "color":F
    const/4 v0, 0x0

    .local v0, "c1":F
    const/4 v1, 0x0

    .local v1, "c2":F
    const/4 v2, 0x0

    .line 205
    .local v2, "c3":F
    const/high16 v4, 0x3fc00000

    .line 206
    .local v4, "fac":F
    const/4 v7, 0x0

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_2

    .line 208
    mul-float v0, v14, v4

    .line 209
    mul-float v1, v11, v4

    .line 210
    mul-float v2, v11, v4

    .line 228
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    add-float v8, v10, v0

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_colorX(F)V

    .line 229
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    add-float v8, v10, v1

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_colorY(F)V

    .line 230
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    add-float v8, v10, v2

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_colorZ(F)V

    .line 232
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->updateCurveTexture()V

    .line 233
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->updateNoiseTexture()V

    .line 235
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mGrainAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_grainLookupTexture(Landroid/support/v8/renderscript/Allocation;)V

    .line 237
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;->getGrain()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->calculateSEPGrainSliderValue(I)F

    move-result v6

    .line 238
    .local v6, "slider":F
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBinomialLookupTable:Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;

    invoke-virtual {v7, v6}, Lcom/android/gallery3d/filtershow/filters/BinomialLookupTable;->calcGrainStrengthUniform(F)F

    move-result v5

    .line 239
    .local v5, "grain":F
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    invoke-virtual {v7, v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_grainStrength(F)V

    .line 241
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->forEach_blackandwhite(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/support/v8/renderscript/Allocation;)V

    .line 243
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 244
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mBlackAndWhite:Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->forEach_grainBlur(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto/16 :goto_0

    .line 211
    .end local v5    # "grain":F
    .end local v6    # "slider":F
    :cond_2
    const/high16 v7, 0x41f00000

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_3

    .line 213
    mul-float v0, v10, v4

    .line 214
    const v7, 0x3f19999a

    mul-float v1, v7, v4

    .line 215
    mul-float v2, v12, v4

    goto :goto_1

    .line 216
    :cond_3
    const/high16 v7, 0x42700000

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_4

    .line 218
    mul-float v0, v13, v4

    .line 219
    mul-float v1, v13, v4

    .line 220
    mul-float v2, v12, v4

    goto/16 :goto_1

    .line 221
    :cond_4
    const/high16 v7, 0x42f00000

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v10

    if-gez v7, :cond_1

    .line 223
    mul-float v0, v11, v4

    .line 224
    mul-float v1, v14, v4

    .line 225
    mul-float v2, v11, v4

    goto/16 :goto_1
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 58
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBlackAndWhite;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBlackAndWhiteRepresentation;

    .line 59
    return-void
.end method
