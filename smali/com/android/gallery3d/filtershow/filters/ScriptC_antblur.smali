.class public Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;
.super Landroid/support/v8/renderscript/ScriptC;
.source "ScriptC_antblur.java"


# instance fields
.field private __ALLOCATION:Landroid/support/v8/renderscript/Element;

.field private __BOOLEAN:Landroid/support/v8/renderscript/Element;

.field private __F32:Landroid/support/v8/renderscript/Element;

.field private __U32:Landroid/support/v8/renderscript/Element;

.field private __rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

.field private mExportVar_antLookup:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_blurRadiusFac:F

.field private mExportVar_centerX:F

.field private mExportVar_centerY:F

.field private mExportVar_height:J

.field private mExportVar_innerRadius:F

.field private mExportVar_inputAlloc:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_maxDistance:F

.field private mExportVar_outputAlloc:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_width:J


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
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__F32:Landroid/support/v8/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__U32:Landroid/support/v8/renderscript/Element;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->mExportVar_innerRadius:F

    .line 45
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__ALLOCATION:Landroid/support/v8/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    .line 47
    return-void
.end method


# virtual methods
.method public forEach_blurBottomTop(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurBottomTop(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 294
    return-void
.end method

.method public forEach_blurBottomTop(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with BOOLEAN!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 302
    return-void
.end method

.method public forEach_blurLeftRight(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurLeftRight(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 243
    return-void
.end method

.method public forEach_blurLeftRight(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with BOOLEAN!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 251
    return-void
.end method

.method public forEach_blurRightLeft(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurRightLeft(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 260
    return-void
.end method

.method public forEach_blurRightLeft(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with BOOLEAN!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 268
    return-void
.end method

.method public forEach_blurTopBottom(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurTopBottom(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 277
    return-void
.end method

.method public forEach_blurTopBottom(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__BOOLEAN:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with BOOLEAN!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 285
    return-void
.end method

.method public forEach_createAntLookup(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_createAntLookup(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 226
    return-void
.end method

.method public forEach_createAntLookup(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__F32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with F32!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    const/4 v1, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 234
    return-void
.end method

.method public declared-synchronized set_antLookup(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 176
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 177
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->mExportVar_antLookup:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_blurRadiusFac(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 161
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->setVar(IF)V

    .line 162
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->mExportVar_blurRadiusFac:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_centerX(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 59
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->setVar(IF)V

    .line 60
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->mExportVar_centerX:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_centerY(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 74
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->setVar(IF)V

    .line 75
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->mExportVar_centerY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_height(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 116
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 117
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->mExportVar_height:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 113
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_innerRadius(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 146
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->setVar(IF)V

    .line 147
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->mExportVar_innerRadius:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 191
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 192
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->mExportVar_inputAlloc:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_maxDistance(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 131
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->setVar(IF)V

    .line 132
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->mExportVar_maxDistance:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_outputAlloc(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 206
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 207
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->mExportVar_outputAlloc:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_width(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 95
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 96
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->mExportVar_width:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 92
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
