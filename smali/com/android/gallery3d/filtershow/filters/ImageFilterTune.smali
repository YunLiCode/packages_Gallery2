.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterTune.java"


# instance fields
.field private lastBrightness:I

.field private lastContrast:I

.field private lastWb:I

.field private m256:Landroid/support/v8/renderscript/Allocation;

.field private mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

.field private mBlur:Landroid/support/v8/renderscript/Allocation;

.field private mBrightness:Landroid/support/v8/renderscript/Allocation;

.field private mContrast:Landroid/support/v8/renderscript/Allocation;

.field private mLookup:Landroid/support/v8/renderscript/Allocation;

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

.field private mTempCols:Landroid/support/v8/renderscript/Allocation;

.field private mTempRows:Landroid/support/v8/renderscript/Allocation;

.field private mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

.field private mWhiteBalance:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 41
    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastBrightness:I

    .line 42
    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastContrast:I

    .line 43
    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastWb:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    .line 48
    const-string v0, "Tune"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method protected bindScriptValues()V
    .locals 5

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    .line 179
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 181
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_blur(Landroid/support/v8/renderscript/Allocation;)V

    .line 182
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_inputWidth(J)V

    .line 183
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_inputHeight(J)V

    .line 185
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_brightness(Landroid/support/v8/renderscript/Allocation;)V

    .line 186
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mContrast:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_contrast(Landroid/support/v8/renderscript/Allocation;)V

    .line 187
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mWhiteBalance:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_wb(Landroid/support/v8/renderscript/Allocation;)V

    .line 188
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_lookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 189
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    const/4 v8, -0x1

    .line 114
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->resetAllocations()V

    .line 115
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    .line 116
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 117
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    .line 119
    .local v1, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBlur:Landroid/support/v8/renderscript/Allocation;

    .line 121
    new-instance v3, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 122
    .local v3, "tb_lookup":Landroid/support/v8/renderscript/Type$Builder;
    const/16 v5, 0x200

    invoke-virtual {v3, v5}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 123
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mLookup:Landroid/support/v8/renderscript/Allocation;

    .line 128
    new-instance v2, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 129
    .local v2, "tb_bool":Landroid/support/v8/renderscript/Type$Builder;
    const/16 v5, 0x100

    invoke-virtual {v2, v5}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 130
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->m256:Landroid/support/v8/renderscript/Allocation;

    .line 132
    invoke-virtual {v2, v4}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 133
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    .line 135
    invoke-virtual {v2, v0}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 136
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    .line 138
    const v5, 0x7f02003f

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->loadResourceAlpha(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mContrast:Landroid/support/v8/renderscript/Allocation;

    .line 139
    const v5, 0x7f02000f

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->loadResourceAlpha(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    .line 140
    const v5, 0x7f0201d7

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->loadResource(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mWhiteBalance:Landroid/support/v8/renderscript/Allocation;

    .line 143
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    if-nez v5, :cond_0

    .line 144
    new-instance v5, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    const v6, 0x7f080001

    invoke-direct {v5, v1, p1, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    .line 147
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->set_width(J)V

    .line 148
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->set_height(J)V

    .line 150
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->set_ant(F)V

    .line 152
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 153
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->set_outputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 155
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 156
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->forEach_blurLeftRight(Landroid/support/v8/renderscript/Allocation;)V

    .line 157
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->forEach_blurTopBottom(Landroid/support/v8/renderscript/Allocation;)V

    .line 158
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->forEach_blurRightLeft(Landroid/support/v8/renderscript/Allocation;)V

    .line 159
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->forEach_blurBottomTop(Landroid/support/v8/renderscript/Allocation;)V

    .line 160
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 161
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->forEach_blurLeftRight(Landroid/support/v8/renderscript/Allocation;)V

    .line 162
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->forEach_blurTopBottom(Landroid/support/v8/renderscript/Allocation;)V

    .line 163
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->forEach_blurRightLeft(Landroid/support/v8/renderscript/Allocation;)V

    .line 164
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->forEach_blurBottomTop(Landroid/support/v8/renderscript/Allocation;)V

    .line 167
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    if-nez v5, :cond_1

    .line 168
    new-instance v5, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    const v6, 0x7f08001a

    invoke-direct {v5, v1, p1, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    .line 171
    :cond_1
    iput v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastBrightness:I

    .line 172
    iput v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastContrast:I

    .line 173
    iput v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastWb:I

    .line 174
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBlur:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 67
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBlur:Landroid/support/v8/renderscript/Allocation;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 71
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 75
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->m256:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->m256:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 79
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->m256:Landroid/support/v8/renderscript/Allocation;

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mContrast:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mContrast:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 83
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mContrast:Landroid/support/v8/renderscript/Allocation;

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_5

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 87
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mWhiteBalance:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_6

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mWhiteBalance:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 91
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mWhiteBalance:Landroid/support/v8/renderscript/Allocation;

    .line 93
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mLookup:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_7

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 95
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mLookup:Landroid/support/v8/renderscript/Allocation;

    .line 97
    :cond_7
    return-void
.end method

.method protected resetScripts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;->destroy()V

    .line 103
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur_constant;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->destroy()V

    .line 107
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    .line 109
    :cond_1
    return-void
.end method

.method protected runFilter()V
    .locals 14

    .prologue
    .line 193
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    if-nez v11, :cond_0

    .line 251
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    invoke-virtual {v11}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getContrast()I

    move-result v11

    int-to-float v4, v11

    .line 199
    .local v4, "contrastF":F
    const/high16 v11, 0x42c80000

    add-float/2addr v11, v4

    const/high16 v12, 0x40000000

    div-float v4, v11, v12

    .line 200
    const/high16 v11, 0x42c80000

    div-float/2addr v4, v11

    .line 202
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    invoke-virtual {v11}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getSaturation()I

    move-result v11

    int-to-float v7, v11

    .line 204
    .local v7, "saturation":F
    const/high16 v11, 0x42c80000

    add-float/2addr v11, v7

    const/high16 v12, 0x40000000

    div-float v7, v11, v12

    .line 205
    const/high16 v11, 0x42480000

    div-float/2addr v7, v11

    .line 206
    const/high16 v11, 0x3fc00000

    const/4 v12, 0x0

    const/high16 v13, 0x3f000000

    sub-float v13, v4, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    mul-float/2addr v11, v12

    sub-float/2addr v7, v11

    .line 207
    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 209
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    invoke-virtual {v11, v7}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_saturation(F)V

    .line 210
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    iget-object v12, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    invoke-virtual {v12}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getAmbiance()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x42c80000

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_ambiance(F)V

    .line 211
    iget-object v12, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    invoke-virtual {v11}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getAmbiance()I

    move-result v11

    if-gez v11, :cond_6

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_useAlphaBlur(Z)V

    .line 213
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    invoke-virtual {v11}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getBrightness()I

    move-result v0

    .line 214
    .local v0, "brightness":I
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    invoke-virtual {v11}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getContrast()I

    move-result v3

    .line 215
    .local v3, "contrast":I
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    invoke-virtual {v11}, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;->getWhiteBalance()I

    move-result v8

    .line 217
    .local v8, "wb":I
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v12

    iget-object v13, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v11, v12, v13}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->forEach_preprocess(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 218
    iget v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastBrightness:I

    if-ne v0, v11, :cond_1

    iget v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastContrast:I

    if-ne v3, v11, :cond_1

    iget v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastWb:I

    if-eq v8, v11, :cond_5

    .line 219
    :cond_1
    add-int/lit8 v11, v0, 0x64

    int-to-float v11, v11

    const/high16 v12, 0x43480000

    div-float v1, v11, v12

    .line 220
    .local v1, "brightnessPos":F
    add-int/lit8 v11, v3, 0x64

    int-to-float v11, v11

    const/high16 v12, 0x43480000

    div-float v5, v11, v12

    .line 221
    .local v5, "contrastPos":F
    add-int/lit8 v11, v8, 0x64

    int-to-float v11, v11

    const/high16 v12, 0x43480000

    div-float v9, v11, v12

    .line 223
    .local v9, "wbPos":F
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v1

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 225
    .local v2, "brightnessPosY":I
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    if-lt v2, v11, :cond_2

    .line 226
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 229
    :cond_2
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mContrast:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 231
    .local v6, "contrastPosY":I
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mContrast:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    if-lt v6, v11, :cond_3

    .line 232
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mContrast:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .line 235
    :cond_3
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mWhiteBalance:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v9

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 237
    .local v10, "wbPosY":I
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mWhiteBalance:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 238
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mWhiteBalance:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    add-int/lit8 v10, v11, -0x1

    .line 241
    :cond_4
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    int-to-long v12, v2

    invoke-virtual {v11, v12, v13}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_brightnessPos(J)V

    .line 242
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    int-to-long v12, v6

    invoke-virtual {v11, v12, v13}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_contrastPos(J)V

    .line 243
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    int-to-long v12, v10

    invoke-virtual {v11, v12, v13}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->set_wbPos(J)V

    .line 244
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    iget-object v12, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->m256:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;)V

    .line 245
    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastBrightness:I

    .line 246
    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastContrast:I

    .line 247
    iput v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->lastWb:I

    .line 250
    .end local v1    # "brightnessPos":F
    .end local v2    # "brightnessPosY":I
    .end local v5    # "contrastPos":F
    .end local v6    # "contrastPosY":I
    .end local v9    # "wbPos":F
    .end local v10    # "wbPosY":I
    :cond_5
    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mTuneImage:Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->forEach_tuneImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto/16 :goto_0

    .line 211
    .end local v0    # "brightness":I
    .end local v3    # "contrast":I
    .end local v8    # "wb":I
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 60
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterTune;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterTuneImageRepresentation;

    .line 61
    return-void
.end method
