.class public Landroid/support/v8/renderscript/ScriptIntrinsicBlend;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBlend.java"


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 27
    return-void
.end method

.method private blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Input is not of expected format."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Output is not of expected format."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    .line 57
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlend;
    .locals 4
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 39
    sget-boolean v2, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 40
    check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 41
    .local v1, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlendThunker;

    move-result-object v2

    .line 45
    .end local v1    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_0
    return-object v2

    .line 44
    :cond_0
    const/4 v2, 0x7

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v0

    .line 45
    .local v0, "id":I
    new-instance v2, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;

    invoke-direct {v2, v0, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    goto :goto_0
.end method


# virtual methods
.method public forEachAdd(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 404
    const/16 v0, 0x22

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 405
    return-void
.end method

.method public forEachClear(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 67
    return-void
.end method

.method public forEachDst(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 0
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 107
    return-void
.end method

.method public forEachDstAtop(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 260
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 261
    return-void
.end method

.method public forEachDstIn(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 182
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 183
    return-void
.end method

.method public forEachDstOut(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 220
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 221
    return-void
.end method

.method public forEachDstOver(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 144
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 145
    return-void
.end method

.method public forEachMultiply(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 308
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 309
    return-void
.end method

.method public forEachSrc(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 87
    return-void
.end method

.method public forEachSrcAtop(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 240
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 241
    return-void
.end method

.method public forEachSrcIn(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 163
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 164
    return-void
.end method

.method public forEachSrcOut(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 201
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 202
    return-void
.end method

.method public forEachSrcOver(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 125
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 126
    return-void
.end method

.method public forEachSubtract(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 423
    const/16 v0, 0x23

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 424
    return-void
.end method

.method public forEachXor(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "aout"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 279
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->blend(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 280
    return-void
.end method

.method public getKernelIDAdd()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 413
    const/16 v0, 0x22

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDClear()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDst()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstAtop()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    const/16 v0, 0xa

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstIn()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    const/4 v0, 0x6

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstOut()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    const/16 v0, 0x8

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDDstOver()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDMultiply()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    const/16 v0, 0xe

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrc()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcAtop()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    const/16 v0, 0x9

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcIn()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    const/4 v0, 0x5

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcOut()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    const/4 v0, 0x7

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSrcOver()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 134
    invoke-virtual {p0, v0, v0, v1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDSubtract()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    const/16 v0, 0x23

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelIDXor()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    const/16 v0, 0xb

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBlend;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method
