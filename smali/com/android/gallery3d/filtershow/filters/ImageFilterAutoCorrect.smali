.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterAutoCorrect.java"


# instance fields
.field private mAutoCorrect:Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

.field private mTmpAllocation:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    .line 34
    const-string v0, "AutoCorrect"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected bindScriptValues()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 70
    .local v0, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mAutoCorrect:Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;

    if-nez v2, :cond_0

    .line 71
    new-instance v2, Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v3

    const v4, 0x7f080004

    invoke-direct {v2, v3, p1, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mAutoCorrect:Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;

    .line 75
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->I8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 76
    .local v1, "tb_I8_4":Landroid/support/v8/renderscript/Type$Builder;
    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 77
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mTmpAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 78
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mTmpAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mTmpAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mTmpAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 55
    :cond_0
    return-void
.end method

.method protected resetScripts()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mAutoCorrect:Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mAutoCorrect:Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;->destroy()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mAutoCorrect:Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;

    .line 63
    :cond_0
    return-void
.end method

.method protected runFilter()V
    .locals 7

    .prologue
    const/high16 v6, 0x42c80000

    .line 87
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    if-nez v3, :cond_0

    .line 107
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 93
    .local v1, "inputBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 95
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;-><init>(Landroid/graphics/Bitmap;)V

    .line 97
    .local v0, "autoCorrectMath":Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getFixExposure()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getFixTuneColor()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->updateLookupTables(II)V

    .line 100
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mTmpAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/AutoCorrectMath;->createRGBLookupTexture()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v8/renderscript/Allocation;->copyFrom([B)V

    .line 101
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mAutoCorrect:Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mTmpAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;->set_contrastLookupTexture(Landroid/support/v8/renderscript/Allocation;)V

    .line 103
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;->getFixExposure()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41000000

    div-float/2addr v3, v4

    sub-float v3, v6, v3

    div-float v2, v3, v6

    .line 104
    .local v2, "value":F
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mAutoCorrect:Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;->set_correctContrast(F)V

    .line 106
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mAutoCorrect:Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_autocorrect;->forEach_autoCorrect(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 46
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterAutoCorrect;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterAutoCorrectRepresentation;

    .line 47
    return-void
.end method
