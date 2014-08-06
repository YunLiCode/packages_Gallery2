.class public Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;
.super Landroid/support/v8/renderscript/ScriptC;
.source "ScriptC_tuneimage.java"


# instance fields
.field private __ALLOCATION:Landroid/support/v8/renderscript/Element;

.field private __BOOLEAN:Landroid/support/v8/renderscript/Element;

.field private __F32:Landroid/support/v8/renderscript/Element;

.field private __U32:Landroid/support/v8/renderscript/Element;

.field private __U8_4:Landroid/support/v8/renderscript/Element;

.field private __rs_fp_BOOLEAN:Landroid/support/v8/renderscript/FieldPacker;

.field private __rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

.field private mExportVar_ambiance:F

.field private mExportVar_blur:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_brightness:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_brightnessPos:J

.field private mExportVar_contrast:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_contrastPos:J

.field private mExportVar_inputHeight:J

.field private mExportVar_inputWidth:J

.field private mExportVar_lookup:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_saturation:F

.field private mExportVar_useAlphaBlur:Z

.field private mExportVar_wb:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_wbPos:J


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 3
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I

    .prologue
    const-wide/16 v1, 0x64

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptC;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 42
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__U32:Landroid/support/v8/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__ALLOCATION:Landroid/support/v8/renderscript/Element;

    .line 44
    iput-wide v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_brightnessPos:J

    .line 45
    iput-wide v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_contrastPos:J

    .line 46
    iput-wide v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_wbPos:J

    .line 47
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_saturation:F

    .line 48
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__F32:Landroid/support/v8/renderscript/Element;

    .line 49
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_ambiance:F

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_useAlphaBlur:Z

    .line 51
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    .line 52
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__U8_4:Landroid/support/v8/renderscript/Element;

    .line 53
    return-void
.end method


# virtual methods
.method public forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 335
    return-void
.end method

.method public forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with BOOLEAN!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 343
    return-void
.end method

.method public forEach_preprocess(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->forEach_preprocess(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 303
    return-void
.end method

.method public forEach_preprocess(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    .line 316
    .local v6, "tIn":Landroid/support/v8/renderscript/Type;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    .line 317
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

    .line 323
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Dimension mismatch between input and output parameters!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_3
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 326
    return-void
.end method

.method public forEach_tuneImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->forEach_tuneImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 352
    return-void
.end method

.method public forEach_tuneImage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    .line 365
    .local v6, "tIn":Landroid/support/v8/renderscript/Type;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    .line 366
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

    .line 372
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Dimension mismatch between input and output parameters!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_3
    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 375
    return-void
.end method

.method public declared-synchronized set_ambiance(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 262
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(IF)V

    .line 263
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_ambiance:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_blur(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 109
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_blur:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_brightness(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 124
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 125
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_brightness:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_brightnessPos(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 190
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 191
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_brightnessPos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_contrast(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 139
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 140
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_contrast:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_contrastPos(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 211
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 212
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_contrastPos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_inputHeight(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 94
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 95
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_inputHeight:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_inputWidth(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 73
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 74
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_inputWidth:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_lookup(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 169
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 170
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_lookup:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_saturation(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 247
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(IF)V

    .line 248
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_saturation:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_useAlphaBlur(Z)V
    .locals 2
    .param p1, "v"    # Z

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_BOOLEAN:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_BOOLEAN:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_BOOLEAN:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addBoolean(Z)V

    .line 283
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_BOOLEAN:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 284
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_useAlphaBlur:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 280
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_BOOLEAN:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_wb(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 154
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 155
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_wb:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_wbPos(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 232
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 233
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->mExportVar_wbPos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 229
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_tuneimage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
