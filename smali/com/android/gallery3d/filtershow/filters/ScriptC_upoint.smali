.class public Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;
.super Landroid/support/v8/renderscript/ScriptC;
.source "ScriptC_upoint.java"


# instance fields
.field private __ALLOCATION:Landroid/support/v8/renderscript/Element;

.field private __BOOLEAN:Landroid/support/v8/renderscript/Element;

.field private __F32:Landroid/support/v8/renderscript/Element;

.field private __I32:Landroid/support/v8/renderscript/Element;

.field private __U32:Landroid/support/v8/renderscript/Element;

.field private __U8_4:Landroid/support/v8/renderscript/Element;

.field private __rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

.field private mExportVar_active:[Z

.field private mExportVar_brightness:[I

.field private mExportVar_contrast:[I

.field private mExportVar_expScale:F

.field private mExportVar_inking:[Z

.field private mExportVar_inputHeight:J

.field private mExportVar_inputWidth:J

.field private mExportVar_mask:[Z

.field private mExportVar_refColorBlue:[I

.field private mExportVar_refColorGreen:[I

.field private mExportVar_refColorRed:[I

.field private mExportVar_saturation:[I

.field private mExportVar_size:[I

.field private mExportVar_wmap:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_xPos:[I

.field private mExportVar_yPos:[I


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptC;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 42
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__ALLOCATION:Landroid/support/v8/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__U32:Landroid/support/v8/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__I32:Landroid/support/v8/renderscript/Element;

    .line 46
    const/high16 v0, -0x3cc60000

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_expScale:F

    .line 47
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__F32:Landroid/support/v8/renderscript/Element;

    .line 48
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__U8_4:Landroid/support/v8/renderscript/Element;

    .line 49
    return-void
.end method


# virtual methods
.method public forEach_selectiveAdjust(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    .line 419
    .local v6, "tIn":Landroid/support/v8/renderscript/Type;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    .line 420
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

    .line 426
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Dimension mismatch between input and output parameters!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_3
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 429
    return-void
.end method

.method public forEach_selectiveAdjustInkOnly(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 442
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    .line 451
    .local v6, "tIn":Landroid/support/v8/renderscript/Type;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    .line 452
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

    .line 458
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Dimension mismatch between input and output parameters!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_3
    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 461
    return-void
.end method

.method public forEach_selectiveAdjustWMap(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 474
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    .line 483
    .local v6, "tIn":Landroid/support/v8/renderscript/Type;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    .line 484
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

    .line 490
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Dimension mismatch between input and output parameters!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_3
    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 493
    return-void
.end method

.method public invoke_setupUPointParams()V
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->invoke(I)V

    .line 498
    return-void
.end method

.method public declared-synchronized set_active([Z)V
    .locals 5
    .param p1, "v"    # [Z

    .prologue
    const/16 v4, 0x10

    .line 144
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_active:[Z

    .line 145
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 146
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 147
    aget-boolean v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addBoolean(Z)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 151
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 152
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 144
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_brightness([I)V
    .locals 5
    .param p1, "v"    # [I

    .prologue
    const/16 v4, 0x10

    .line 232
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_brightness:[I

    .line 233
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 234
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 235
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 239
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 240
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__I32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 232
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_contrast([I)V
    .locals 5
    .param p1, "v"    # [I

    .prologue
    const/16 v4, 0x10

    .line 254
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_contrast:[I

    .line 255
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 256
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 257
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 261
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 262
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__I32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 254
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_inking([Z)V
    .locals 5
    .param p1, "v"    # [Z

    .prologue
    const/16 v4, 0x10

    .line 298
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_inking:[Z

    .line 299
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 300
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 301
    aget-boolean v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addBoolean(Z)V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 305
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 306
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 298
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_inputHeight(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 107
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 108
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_inputHeight:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_inputWidth(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 86
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 87
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_inputWidth:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_mask([Z)V
    .locals 5
    .param p1, "v"    # [Z

    .prologue
    const/16 v4, 0x10

    .line 122
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_mask:[Z

    .line 123
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 124
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 125
    aget-boolean v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addBoolean(Z)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 129
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 130
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 122
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_refColorBlue([I)V
    .locals 5
    .param p1, "v"    # [I

    .prologue
    const/16 v4, 0x10

    .line 364
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_refColorBlue:[I

    .line 365
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 366
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 367
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 371
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 372
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__I32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 364
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_refColorGreen([I)V
    .locals 5
    .param p1, "v"    # [I

    .prologue
    const/16 v4, 0x10

    .line 342
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_refColorGreen:[I

    .line 343
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 344
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 345
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 349
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 350
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__I32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 342
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_refColorRed([I)V
    .locals 5
    .param p1, "v"    # [I

    .prologue
    const/16 v4, 0x10

    .line 320
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_refColorRed:[I

    .line 321
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 322
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 323
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 327
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 328
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__I32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 320
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_saturation([I)V
    .locals 5
    .param p1, "v"    # [I

    .prologue
    const/16 v4, 0x10

    .line 276
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_saturation:[I

    .line 277
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 278
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 279
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 283
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 284
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__I32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 276
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_size([I)V
    .locals 5
    .param p1, "v"    # [I

    .prologue
    const/16 v4, 0x10

    .line 210
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_size:[I

    .line 211
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 212
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 213
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 217
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 218
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__I32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 210
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_wmap(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_wmap:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_xPos([I)V
    .locals 5
    .param p1, "v"    # [I

    .prologue
    const/16 v4, 0x10

    .line 166
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_xPos:[I

    .line 167
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 168
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 169
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 173
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 174
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__I32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 166
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set_yPos([I)V
    .locals 5
    .param p1, "v"    # [I

    .prologue
    const/16 v4, 0x10

    .line 188
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->mExportVar_yPos:[I

    .line 189
    new-instance v2, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 190
    .local v2, "fp":Landroid/support/v8/renderscript/FieldPacker;
    const/4 v1, 0x0

    .local v1, "ct1":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 191
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/FieldPacker;->addI32(I)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 195
    .local v0, "__dimArr":[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    .line 196
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->__I32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 188
    .end local v0    # "__dimArr":[I
    .end local v1    # "ct1":I
    .end local v2    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
