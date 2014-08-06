.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterDrama.java"


# instance fields
.field private mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

.field private mDeltaLum:Landroid/support/v8/renderscript/Allocation;

.field private mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

.field private mFxBitmap:Landroid/graphics/Bitmap;

.field private mLuminocityO:Landroid/support/v8/renderscript/Allocation;

.field private mLuminocityO2:Landroid/support/v8/renderscript/Allocation;

.field private mLuminocityU:Landroid/support/v8/renderscript/Allocation;

.field private mLuminocityU2:Landroid/support/v8/renderscript/Allocation;

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

.field private mScaledHeight:I

.field private mScaledWidth:I

.field private mTempCols:Landroid/support/v8/renderscript/Allocation;

.field private mTempRows:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    .line 51
    const-string v0, "Drama"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private blur(Landroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p1, "scaledInputAllocation"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO:Landroid/support/v8/renderscript/Allocation;

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->prepareBlur(IZLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU:Landroid/support/v8/renderscript/Allocation;

    invoke-direct {p0, v2, v2, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->prepareBlur(IZLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO2:Landroid/support/v8/renderscript/Allocation;

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->prepareBlur(IZLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU2:Landroid/support/v8/renderscript/Allocation;

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->prepareBlur(IZLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 181
    return-void
.end method

.method private prepareBlur(IZLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "renderStage"    # I
    .param p2, "isFirstChannel"    # Z
    .param p3, "luminocity"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "scaledInputAllocation"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->set_luminocity(Landroid/support/v8/renderscript/Allocation;)V

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->set_renderStage(I)V

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    invoke-virtual {v0, p4, p3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->forEach_prepareLuminocity(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 189
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    if-eqz p2, :cond_0

    const v0, 0x3ca3d70a

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->set_ant(F)V

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->forEach_blurLeftToRight(Landroid/support/v8/renderscript/Allocation;)V

    .line 192
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    if-eqz p2, :cond_1

    const v0, 0x3ccccccd

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->set_ant(F)V

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->forEach_blurTopToBottom(Landroid/support/v8/renderscript/Allocation;)V

    .line 195
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    if-eqz p2, :cond_2

    const v0, 0x3d0f5c29

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->set_ant(F)V

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->forEach_blurRightToLeft(Landroid/support/v8/renderscript/Allocation;)V

    .line 198
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    if-eqz p2, :cond_3

    const v0, 0x3d2e147b

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->set_ant(F)V

    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->forEach_blurBottomToTop(Landroid/support/v8/renderscript/Allocation;)V

    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDeltaLum:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, p4, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->forEach_prepareDeltaLum(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 203
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->set_renderStage(I)V

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->forEach_blurLeftToRight(Landroid/support/v8/renderscript/Allocation;)V

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->forEach_blurTopToBottom(Landroid/support/v8/renderscript/Allocation;)V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->forEach_blurRightToLeft(Landroid/support/v8/renderscript/Allocation;)V

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->forEach_blurBottomToTop(Landroid/support/v8/renderscript/Allocation;)V

    .line 208
    return-void

    .line 189
    :cond_0
    const v0, 0x3d75c28f

    goto :goto_0

    .line 192
    :cond_1
    const v0, 0x3d99999a

    goto :goto_1

    .line 195
    :cond_2
    const v0, 0x3dd70a3d

    goto :goto_2

    .line 198
    :cond_3
    const v0, 0x3e028f5c

    goto :goto_3
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 112
    if-nez p3, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mFxBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f02009b

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/IconUtilities;->getFXBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mFxBitmap:Landroid/graphics/Bitmap;

    .line 117
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mFxBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/android/gallery3d/filtershow/filters/IconUtilities;->applyFX(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bindScriptValues()V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->bindScriptValues(Landroid/support/v8/renderscript/Allocation;)V

    .line 213
    return-void
.end method

.method protected bindScriptValues(Landroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledWidth:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->set_xMult(F)V

    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledHeight:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->set_yMult(F)V

    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getStyle()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->set_luminocityO(Landroid/support/v8/renderscript/Allocation;)V

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->set_luminocityU(Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO2:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->set_luminocityO(Landroid/support/v8/renderscript/Allocation;)V

    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU2:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->set_luminocityU(Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_0
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->createFilter(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V

    .line 126
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V
    .locals 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I
    .param p4, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/high16 v10, 0x44000000

    .line 131
    const/high16 v7, 0x3f800000

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 133
    .local v0, "fac":F
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledWidth:I

    .line 134
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledHeight:I

    .line 135
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v2

    .line 137
    .local v2, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    if-nez v7, :cond_0

    .line 138
    new-instance v7, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v8

    const v9, 0x7f080002

    invoke-direct {v7, v8, p1, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    .line 141
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    if-nez v7, :cond_1

    .line 142
    new-instance v7, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v8

    const v9, 0x7f08000d

    invoke-direct {v7, v8, p1, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    .line 145
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledWidth:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->set_inputWidth(J)V

    .line 146
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledHeight:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->set_inputHeight(J)V

    .line 148
    new-instance v6, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 149
    .local v6, "tb_uchar":Landroid/support/v8/renderscript/Type$Builder;
    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledWidth:I

    invoke-virtual {v6, v7}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 150
    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledHeight:I

    invoke-virtual {v6, v7}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 151
    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDeltaLum:Landroid/support/v8/renderscript/Allocation;

    .line 153
    new-instance v5, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v5, v2, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 154
    .local v5, "tb_float":Landroid/support/v8/renderscript/Type$Builder;
    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledWidth:I

    invoke-virtual {v5, v7}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 155
    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledHeight:I

    invoke-virtual {v5, v7}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 156
    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO:Landroid/support/v8/renderscript/Allocation;

    .line 157
    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU:Landroid/support/v8/renderscript/Allocation;

    .line 158
    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO2:Landroid/support/v8/renderscript/Allocation;

    .line 159
    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU2:Landroid/support/v8/renderscript/Allocation;

    .line 161
    new-instance v4, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v4, v2, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 162
    .local v4, "tb_bool":Landroid/support/v8/renderscript/Type$Builder;
    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledWidth:I

    invoke-virtual {v4, v7}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 163
    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    .line 165
    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledHeight:I

    invoke-virtual {v4, v7}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 166
    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    .line 168
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDeltaLum:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->set_deltaLum(Landroid/support/v8/renderscript/Allocation;)V

    .line 170
    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;

    invoke-direct {v1, p4, v2, p1}, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;-><init>(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;)V

    .line 171
    .local v1, "imageWrapper":Lcom/android/gallery3d/filtershow/filters/ImageWrapper;
    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledWidth:I

    iget v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledHeight:I

    invoke-virtual {v1, v7, v8}, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->downScaleRGBAIntoBounds(II)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    .line 173
    .local v3, "scaledInputAllocation":Landroid/support/v8/renderscript/Allocation;
    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->blur(Landroid/support/v8/renderscript/Allocation;)V

    .line 174
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 70
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO:Landroid/support/v8/renderscript/Allocation;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 74
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU:Landroid/support/v8/renderscript/Allocation;

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO2:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO2:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 78
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityO2:Landroid/support/v8/renderscript/Allocation;

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU2:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU2:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 82
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mLuminocityU2:Landroid/support/v8/renderscript/Allocation;

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDeltaLum:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDeltaLum:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 86
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDeltaLum:Landroid/support/v8/renderscript/Allocation;

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_5

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 90
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_6

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 94
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    .line 96
    :cond_6
    return-void
.end method

.method protected resetScripts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;->destroy()V

    .line 102
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mAntBlurDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_drama;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->destroy()V

    .line 106
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    .line 108
    :cond_1
    return-void
.end method

.method protected run(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 5
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "out"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/high16 v4, 0x42c80000

    .line 243
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    if-nez v2, :cond_0

    .line 270
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getFilterStrength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 248
    .local v1, "strength":F
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getSaturation()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 249
    .local v0, "saturation":F
    const v2, 0x3e4ccccd

    const v3, 0x3fe66666

    mul-float/2addr v3, v0

    add-float v0, v2, v3

    .line 251
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->set_strength(F)V

    .line 252
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->set_saturation(F)V

    .line 253
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledWidth:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->set_xMult(F)V

    .line 254
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mScaledHeight:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->set_yMult(F)V

    .line 256
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;->getStyle()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 259
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->forEach_drama01(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->forEach_drama23(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mDrama:Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_drama;->forEach_drama45(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected runFilter()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->run(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 239
    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 63
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDrama;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDramaRepresentation;

    .line 64
    return-void
.end method
