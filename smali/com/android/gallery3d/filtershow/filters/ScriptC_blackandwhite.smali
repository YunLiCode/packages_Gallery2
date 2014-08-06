.class public Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;
.super Landroid/support/v8/renderscript/ScriptC;
.source "ScriptC_blackandwhite.java"


# instance fields
.field private __ALLOCATION:Landroid/support/v8/renderscript/Element;

.field private __BOOLEAN:Landroid/support/v8/renderscript/Element;

.field private __F32:Landroid/support/v8/renderscript/Element;

.field private __F32_2:Landroid/support/v8/renderscript/Element;

.field private __F32_3:Landroid/support/v8/renderscript/Element;

.field private __I32:Landroid/support/v8/renderscript/Element;

.field private __SAMPLER:Landroid/support/v8/renderscript/Element;

.field private __U32:Landroid/support/v8/renderscript/Element;

.field private __U8_4:Landroid/support/v8/renderscript/Element;

.field private __rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

.field private mExportVar_a:Landroid/support/v8/renderscript/Float2;

.field private mExportVar_b:Landroid/support/v8/renderscript/Float2;

.field private mExportVar_brightness:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_brightnessY:I

.field private mExportVar_colorX:F

.field private mExportVar_colorY:F

.field private mExportVar_colorZ:F

.field private mExportVar_contrast:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_contrastY:I

.field private mExportVar_filterStrength:F

.field private mExportVar_grainLookupTexture:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_grainStrength:F

.field private mExportVar_grainTextureHeight:J

.field private mExportVar_grainTextureWidth:J

.field private mExportVar_inputAlloc:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_inputHeight:J

.field private mExportVar_inputWidth:J

.field private mExportVar_lookup:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_rgbToGray:Landroid/support/v8/renderscript/Float3;

.field private mExportVar_sampler:Landroid/support/v8/renderscript/Sampler;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptC;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 42
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__U32:Landroid/support/v8/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__F32:Landroid/support/v8/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__ALLOCATION:Landroid/support/v8/renderscript/Element;

    .line 45
    new-instance v0, Landroid/support/v8/renderscript/Float2;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_a:Landroid/support/v8/renderscript/Float2;

    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_a:Landroid/support/v8/renderscript/Float2;

    const v1, 0x414fd35b

    iput v1, v0, Landroid/support/v8/renderscript/Float2;->x:F

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_a:Landroid/support/v8/renderscript/Float2;

    const v1, 0x429c774c

    iput v1, v0, Landroid/support/v8/renderscript/Float2;->y:F

    .line 48
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__F32_2:Landroid/support/v8/renderscript/Element;

    .line 49
    new-instance v0, Landroid/support/v8/renderscript/Float2;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_b:Landroid/support/v8/renderscript/Float2;

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_b:Landroid/support/v8/renderscript/Float2;

    const v1, 0x421161e5

    iput v1, v0, Landroid/support/v8/renderscript/Float2;->x:F

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_b:Landroid/support/v8/renderscript/Float2;

    const v1, 0x400f2b02

    iput v1, v0, Landroid/support/v8/renderscript/Float2;->y:F

    .line 52
    new-instance v0, Landroid/support/v8/renderscript/Float3;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_rgbToGray:Landroid/support/v8/renderscript/Float3;

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_rgbToGray:Landroid/support/v8/renderscript/Float3;

    const v1, 0x3e991687

    iput v1, v0, Landroid/support/v8/renderscript/Float3;->x:F

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_rgbToGray:Landroid/support/v8/renderscript/Float3;

    const v1, 0x3f1645a2

    iput v1, v0, Landroid/support/v8/renderscript/Float3;->y:F

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_rgbToGray:Landroid/support/v8/renderscript/Float3;

    const v1, 0x3de978d5

    iput v1, v0, Landroid/support/v8/renderscript/Float3;->z:F

    .line 56
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__F32_3:Landroid/support/v8/renderscript/Element;

    .line 57
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__I32:Landroid/support/v8/renderscript/Element;

    .line 58
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->SAMPLER(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__SAMPLER:Landroid/support/v8/renderscript/Element;

    .line 59
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    .line 60
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__U8_4:Landroid/support/v8/renderscript/Element;

    .line 61
    return-void
.end method


# virtual methods
.method public forEach_blackandwhite(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->forEach_blackandwhite(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 413
    return-void
.end method

.method public forEach_blackandwhite(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    .line 426
    .local v6, "tIn":Landroid/support/v8/renderscript/Type;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    .line 427
    .local v7, "tOut":Landroid/support/v8/renderscript/Type;
    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->hasFaces()Z

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->hasFaces()Z

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 433
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Dimension mismatch between input and output parameters!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_3
    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 436
    return-void
.end method

.method public forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 396
    return-void
.end method

.method public forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 400
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with BOOLEAN!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 404
    return-void
.end method

.method public forEach_grainBlur(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->forEach_grainBlur(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 445
    return-void
.end method

.method public forEach_grainBlur(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 449
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    .line 458
    .local v6, "tIn":Landroid/support/v8/renderscript/Type;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    .line 459
    .local v7, "tOut":Landroid/support/v8/renderscript/Type;
    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->hasFaces()Z

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->hasFaces()Z

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 465
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Dimension mismatch between input and output parameters!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_3
    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 468
    return-void
.end method

.method public declared-synchronized set_brightness(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 301
    monitor-enter p0

    const/16 v0, 0xe

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 302
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_brightness:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_brightnessY(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 316
    monitor-enter p0

    const/16 v0, 0xf

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(II)V

    .line 317
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_brightnessY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_colorX(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 166
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(IF)V

    .line 167
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_colorX:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_colorY(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 181
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(IF)V

    .line 182
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_colorY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_colorZ(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 196
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(IF)V

    .line 197
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_colorZ:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_contrast(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 331
    monitor-enter p0

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 332
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_contrast:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_contrastY(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 346
    monitor-enter p0

    const/16 v0, 0x11

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(II)V

    .line 347
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_contrastY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_filterStrength(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 241
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(IF)V

    .line 242
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_filterStrength:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_grainLookupTexture(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 211
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 212
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_grainLookupTexture:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_grainStrength(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 256
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(IF)V

    .line 257
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_grainStrength:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_grainTextureHeight(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 151
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 152
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_grainTextureHeight:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_grainTextureWidth(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 130
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 131
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_grainTextureWidth:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 361
    monitor-enter p0

    const/16 v0, 0x12

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 362
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_inputAlloc:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_inputHeight(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 109
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 110
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_inputHeight:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_inputWidth(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 88
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 89
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_inputWidth:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_lookup(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 226
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 227
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_lookup:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_sampler(Landroid/support/v8/renderscript/Sampler;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Sampler;

    .prologue
    .line 376
    monitor-enter p0

    const/16 v0, 0x13

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 377
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_blackandwhite;->mExportVar_sampler:Landroid/support/v8/renderscript/Sampler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
