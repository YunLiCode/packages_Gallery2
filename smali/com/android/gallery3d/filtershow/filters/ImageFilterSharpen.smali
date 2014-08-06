.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterSharpen.java"


# instance fields
.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

.field private mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 29
    const-string v0, "Sharpen"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private computeKernel()V
    .locals 8

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getScaleFactor()F

    move-result v3

    .line 72
    .local v3, "scaleFactor":F
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->getValue()I

    move-result v5

    int-to-float v5, v5

    mul-float v2, v5, v3

    .line 73
    .local v2, "p1":F
    const/high16 v5, 0x42c80000

    div-float v4, v2, v5

    .line 74
    .local v4, "value":F
    const/16 v5, 0x9

    new-array v0, v5, [F

    .line 75
    .local v0, "f":[F
    move v1, v4

    .line 76
    .local v1, "p":F
    const/4 v5, 0x0

    neg-float v6, v1

    aput v6, v0, v5

    .line 77
    const/4 v5, 0x1

    neg-float v6, v1

    aput v6, v0, v5

    .line 78
    const/4 v5, 0x2

    neg-float v6, v1

    aput v6, v0, v5

    .line 79
    const/4 v5, 0x3

    neg-float v6, v1

    aput v6, v0, v5

    .line 80
    const/4 v5, 0x4

    const/high16 v6, 0x41000000

    mul-float/2addr v6, v1

    const/high16 v7, 0x3f800000

    add-float/2addr v6, v7

    aput v6, v0, v5

    .line 81
    const/4 v5, 0x5

    neg-float v6, v1

    aput v6, v0, v5

    .line 82
    const/4 v5, 0x6

    neg-float v6, v1

    aput v6, v0, v5

    .line 83
    const/4 v5, 0x7

    neg-float v6, v1

    aput v6, v0, v5

    .line 84
    const/16 v5, 0x8

    neg-float v6, v1

    aput v6, v0, v5

    .line 85
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->set_gCoeffs([F)V

    .line 86
    return-void
.end method


# virtual methods
.method protected bindScriptValues()V
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    .line 91
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 92
    .local v0, "h":I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->set_gWidth(I)V

    .line 93
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->set_gHeight(I)V

    .line 94
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    const v2, 0x7f08000b

    invoke-direct {v0, v1, p1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    .line 68
    :cond_0
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    const-string v1, "Sharpen"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;-><init>(Ljava/lang/String;III)V

    .line 34
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setShowParameterValue(Z)V

    .line 35
    const-class v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setFilterClass(Ljava/lang/Class;)V

    .line 36
    const v1, 0x7f0b0177

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setTextId(I)V

    .line 37
    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setButtonId(I)V

    .line 38
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->setOverlayId(I)V

    .line 39
    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setEditorId(I)V

    .line 40
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;->setSupportsPartialRendering(Z)V

    .line 41
    return-object v0
.end method

.method protected resetAllocations()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method protected resetScripts()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->destroy()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    .line 60
    :cond_0
    return-void
.end method

.method protected runFilter()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->computeKernel()V

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->set_gIn(Landroid/support/v8/renderscript/Allocation;)V

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->bind_gPixels(Landroid/support/v8/renderscript/Allocation;)V

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_convolve3x3;->forEach_root(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 45
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 46
    .local v0, "parameters":Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSharpen;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterBasicRepresentation;

    .line 47
    return-void
.end method
