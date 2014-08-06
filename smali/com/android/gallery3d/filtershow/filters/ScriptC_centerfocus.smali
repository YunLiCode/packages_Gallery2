.class public Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;
.super Landroid/support/v8/renderscript/ScriptC;
.source "ScriptC_centerfocus.java"


# instance fields
.field private __ALLOCATION:Landroid/support/v8/renderscript/Element;

.field private __F32:Landroid/support/v8/renderscript/Element;

.field private __F32_2:Landroid/support/v8/renderscript/Element;

.field private __F32_3:Landroid/support/v8/renderscript/Element;

.field private __U32:Landroid/support/v8/renderscript/Element;

.field private __U8_4:Landroid/support/v8/renderscript/Element;

.field private __rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

.field private mExportVar_blur:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_centerSize:F

.field private mExportVar_contrastLookup:Landroid/support/v8/renderscript/Allocation;

.field private mExportVar_contrast_factor:F

.field private mExportVar_factor:F

.field private mExportVar_filterStrength:F

.field private mExportVar_height:J

.field private mExportVar_innerBrightness:F

.field private mExportVar_innerBrightness_exp:F

.field private mExportVar_m:F

.field private mExportVar_midPoint:Landroid/support/v8/renderscript/Float2;

.field private mExportVar_outerBrightness_abs01:F

.field private mExportVar_outerBrightness_exp:F

.field private mExportVar_steps_lum:J

.field private mExportVar_steps_mask:J

.field private mExportVar_vec_00:Landroid/support/v8/renderscript/Float2;

.field private mExportVar_vec_055:Landroid/support/v8/renderscript/Float3;

.field private mExportVar_vec_11:Landroid/support/v8/renderscript/Float2;

.field private mExportVar_width:J


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 6
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I

    .prologue
    const-wide/16 v4, 0x100

    const/high16 v3, 0x3f800000

    const/high16 v2, 0x3f000000

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptC;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    .line 42
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__ALLOCATION:Landroid/support/v8/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__U32:Landroid/support/v8/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__F32_2:Landroid/support/v8/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__F32:Landroid/support/v8/renderscript/Element;

    .line 46
    const v0, 0x3eb43958

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_contrast_factor:F

    .line 47
    new-instance v0, Landroid/support/v8/renderscript/Float2;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_vec_00:Landroid/support/v8/renderscript/Float2;

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_vec_00:Landroid/support/v8/renderscript/Float2;

    iput v1, v0, Landroid/support/v8/renderscript/Float2;->x:F

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_vec_00:Landroid/support/v8/renderscript/Float2;

    iput v1, v0, Landroid/support/v8/renderscript/Float2;->y:F

    .line 50
    new-instance v0, Landroid/support/v8/renderscript/Float2;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_vec_11:Landroid/support/v8/renderscript/Float2;

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_vec_11:Landroid/support/v8/renderscript/Float2;

    iput v3, v0, Landroid/support/v8/renderscript/Float2;->x:F

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_vec_11:Landroid/support/v8/renderscript/Float2;

    iput v3, v0, Landroid/support/v8/renderscript/Float2;->y:F

    .line 53
    new-instance v0, Landroid/support/v8/renderscript/Float3;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_vec_055:Landroid/support/v8/renderscript/Float3;

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_vec_055:Landroid/support/v8/renderscript/Float3;

    iput v1, v0, Landroid/support/v8/renderscript/Float3;->x:F

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_vec_055:Landroid/support/v8/renderscript/Float3;

    iput v2, v0, Landroid/support/v8/renderscript/Float3;->y:F

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_vec_055:Landroid/support/v8/renderscript/Float3;

    iput v2, v0, Landroid/support/v8/renderscript/Float3;->z:F

    .line 57
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__F32_3:Landroid/support/v8/renderscript/Element;

    .line 58
    iput-wide v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_steps_lum:J

    .line 59
    iput-wide v4, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_steps_mask:J

    .line 60
    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__U8_4:Landroid/support/v8/renderscript/Element;

    .line 61
    return-void
.end method


# virtual methods
.method public forEach_centerfocus(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->forEach_centerfocus(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 422
    return-void
.end method

.method public forEach_centerfocus(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 426
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__U8_4:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with U8_4!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    .line 435
    .local v6, "tIn":Landroid/support/v8/renderscript/Type;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    .line 436
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

    .line 442
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Dimension mismatch between input and output parameters!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_3
    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 445
    return-void
.end method

.method public forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 405
    return-void
.end method

.method public forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v2, 0x0

    .line 409
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__F32:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Type mismatch with F32!"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    const/4 v1, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 413
    return-void
.end method

.method public invoke_setupMatrices()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->invoke(I)V

    .line 450
    return-void
.end method

.method public declared-synchronized set_blur(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 92
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 93
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_blur:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_centerSize(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 198
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(IF)V

    .line 199
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_centerSize:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_contrastLookup(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_contrastLookup:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_factor(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 228
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(IF)V

    .line 229
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_factor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_filterStrength(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 183
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(IF)V

    .line 184
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_filterStrength:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_height(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 134
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 135
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_height:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_innerBrightness(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 273
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(IF)V

    .line 274
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_innerBrightness:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_innerBrightness_exp(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 288
    monitor-enter p0

    const/16 v0, 0xd

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(IF)V

    .line 289
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_innerBrightness_exp:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_m(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 213
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(IF)V

    .line 214
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_m:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_midPoint(Landroid/support/v8/renderscript/Float2;)V
    .locals 4
    .param p1, "v"    # Landroid/support/v8/renderscript/Float2;

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_midPoint:Landroid/support/v8/renderscript/Float2;

    .line 150
    new-instance v1, Landroid/support/v8/renderscript/FieldPacker;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    .line 151
    .local v1, "fp":Landroid/support/v8/renderscript/FieldPacker;
    invoke-virtual {v1, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(Landroid/support/v8/renderscript/Float2;)V

    .line 152
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 153
    .local v0, "__dimArr":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v0, v2

    .line 154
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__F32_2:Landroid/support/v8/renderscript/Element;

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 149
    .end local v0    # "__dimArr":[I
    .end local v1    # "fp":Landroid/support/v8/renderscript/FieldPacker;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized set_outerBrightness_abs01(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 243
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(IF)V

    .line 244
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_outerBrightness_abs01:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_outerBrightness_exp(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 258
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(IF)V

    .line 259
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_outerBrightness_exp:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_width(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/FieldPacker;->reset()V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/FieldPacker;->addU32(J)V

    .line 113
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 114
    iput-wide p1, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->mExportVar_width:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->__rs_fp_U32:Landroid/support/v8/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
