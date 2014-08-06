.class public Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;
.super Landroid/support/v8/renderscript/ScriptC;
.source "ScriptC_vintage.java"


# instance fields
.field private __ALLOCATION:Landroid/support/v8/renderscript/Element;

.field private __F32:Landroid/support/v8/renderscript/Element;

.field private __U32:Landroid/support/v8/renderscript/Element;

.field private __U8_4:Landroid/support/v8/renderscript/Element;

.field private __rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

.field private mExportVar_inputHeight:J

.field private mExportVar_inputWidth:J

.field private mExportVar_lookup:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_saturation:F

.field private mExportVar_scaleX:F

.field private mExportVar_scaleY:F

.field private mExportVar_texture:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_textureOffsetX:F

.field private mExportVar_textureOffsetY:F

.field private mExportVar_textureSizeX:F

.field private mExportVar_textureSizeY:F

.field private mExportVar_textureStrength:F

.field private mExportVar_vignetteMidPointX:F

.field private mExportVar_vignetteMidPointY:F

.field private mExportVar_vignetteStrength:F

.field private mExportVar_vignetteStretchFacX:F

.field private mExportVar_vignetteStretchFacY:F


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
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__U32:Landroid/support/v8/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__ALLOCATION:Landroid/support/v8/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__F32:Landroid/support/v8/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__U8_4:Landroid/support/v8/renderscript/Element;

    .line 46
    return-void
.end method


# virtual methods
.method public forEach_vintage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->forEach_vintage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 360
    return-void
.end method

.method public forEach_vintage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    .line 373
    .local v6, "tIn":Landroid/support/v8/renderscript/Type;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    .line 374
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

    .line 380
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Dimension mismatch between input and output parameters!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_3
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 383
    return-void
.end method

.method public declared-synchronized set_inputHeight(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 85
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 86
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_inputHeight:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_inputWidth(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 64
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 65
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_inputWidth:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_lookup(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 115
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 116
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_lookup:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_saturation(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 160
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 161
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_saturation:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_scaleX(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 265
    monitor-enter p0

    const/16 v0, 0xd

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 266
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_scaleX:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_scaleY(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 280
    monitor-enter p0

    const/16 v0, 0xe

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 281
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_scaleY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_texture(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 100
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_texture:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureOffsetX(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 175
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 176
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_textureOffsetX:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureOffsetY(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 190
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 191
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_textureOffsetY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureSizeX(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 295
    monitor-enter p0

    const/16 v0, 0xf

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 296
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_textureSizeX:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureSizeY(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 310
    monitor-enter p0

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 311
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_textureSizeY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_textureStrength(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 325
    monitor-enter p0

    const/16 v0, 0x11

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 326
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_textureStrength:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_vignetteMidPointX(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 235
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 236
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_vignetteMidPointX:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_vignetteMidPointY(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 250
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 251
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_vignetteMidPointY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_vignetteStrength(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 340
    monitor-enter p0

    const/16 v0, 0x12

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 341
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_vignetteStrength:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_vignetteStretchFacX(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 205
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 206
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_vignetteStretchFacX:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_vignetteStretchFacY(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 220
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->setVar(IF)V

    .line 221
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->mExportVar_vignetteStretchFacY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
