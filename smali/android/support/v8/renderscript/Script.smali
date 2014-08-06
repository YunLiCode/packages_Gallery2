.class public Landroid/support/v8/renderscript/Script;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Script$LaunchOptions;,
        Landroid/support/v8/renderscript/Script$FieldBase;,
        Landroid/support/v8/renderscript/Script$Builder;,
        Landroid/support/v8/renderscript/Script$FieldID;,
        Landroid/support/v8/renderscript/Script$KernelID;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v8/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field

.field mT:Landroid/support/v8/renderscript/ScriptCThunker;


# direct methods
.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 283
    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V
    .locals 3
    .param p1, "va"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "slot"    # I

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkBindAllocation(Landroid/support/v8/renderscript/Allocation;I)V

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 196
    if-eqz p1, :cond_1

    .line 197
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p1, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/support/v8/renderscript/RenderScript;->nScriptBindAllocation(III)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/support/v8/renderscript/RenderScript;->nScriptBindAllocation(III)V

    goto :goto_0
.end method

.method protected createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;
    .locals 5
    .param p1, "slot"    # I
    .param p2, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 126
    iget-object v3, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    sget-boolean v3, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 127
    new-instance v0, Landroid/support/v8/renderscript/Script$FieldID;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v3, v4, p0, p1}, Landroid/support/v8/renderscript/Script$FieldID;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;I)V

    .line 128
    .local v0, "f":Landroid/support/v8/renderscript/Script$FieldID;
    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v3, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkCreateFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v8/renderscript/Script$FieldID;->mN:Landroid/renderscript/Script$FieldID;

    .line 131
    :cond_0
    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 146
    .end local v0    # "f":Landroid/support/v8/renderscript/Script$FieldID;
    .local v1, "f":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 134
    .end local v1    # "f":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Script$FieldID;

    .line 135
    .restart local v0    # "f":Landroid/support/v8/renderscript/Script$FieldID;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 136
    .restart local v1    # "f":Ljava/lang/Object;
    goto :goto_0

    .line 139
    .end local v1    # "f":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/support/v8/renderscript/RenderScript;->nScriptFieldIDCreate(II)I

    move-result v2

    .line 140
    .local v2, "id":I
    if-nez v2, :cond_3

    .line 141
    new-instance v3, Landroid/support/v8/renderscript/RSDriverException;

    const-string v4, "Failed to create FieldID"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_3
    new-instance v0, Landroid/support/v8/renderscript/Script$FieldID;

    .end local v0    # "f":Landroid/support/v8/renderscript/Script$FieldID;
    iget-object v3, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v2, v3, p0, p1}, Landroid/support/v8/renderscript/Script$FieldID;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;I)V

    .line 145
    .restart local v0    # "f":Landroid/support/v8/renderscript/Script$FieldID;
    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 146
    .restart local v1    # "f":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
    .locals 7
    .param p1, "slot"    # I
    .param p2, "sig"    # I
    .param p3, "ein"    # Landroid/support/v8/renderscript/Element;
    .param p4, "eout"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 66
    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/Script$KernelID;

    .line 67
    .local v0, "k":Landroid/support/v8/renderscript/Script$KernelID;
    if-eqz v0, :cond_0

    move-object v6, v0

    .line 91
    .end local v0    # "k":Landroid/support/v8/renderscript/Script$KernelID;
    .local v6, "k":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 73
    .end local v6    # "k":Ljava/lang/Object;
    .restart local v0    # "k":Landroid/support/v8/renderscript/Script$KernelID;
    :cond_0
    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    sget-boolean v2, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 74
    new-instance v0, Landroid/support/v8/renderscript/Script$KernelID;

    .end local v0    # "k":Landroid/support/v8/renderscript/Script$KernelID;
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Script$KernelID;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;II)V

    .line 75
    .restart local v0    # "k":Landroid/support/v8/renderscript/Script$KernelID;
    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkCreateKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v8/renderscript/Script$KernelID;->mN:Landroid/renderscript/Script$KernelID;

    .line 78
    :cond_1
    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v0

    .line 79
    .restart local v6    # "k":Ljava/lang/Object;
    goto :goto_0

    .line 83
    .end local v6    # "k":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v3, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    invoke-virtual {v2, v3, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nScriptKernelIDCreate(III)I

    move-result v1

    .line 84
    .local v1, "id":I
    if-nez v1, :cond_3

    .line 85
    new-instance v2, Landroid/support/v8/renderscript/RSDriverException;

    const-string v3, "Failed to create KernelID"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_3
    new-instance v0, Landroid/support/v8/renderscript/Script$KernelID;

    .end local v0    # "k":Landroid/support/v8/renderscript/Script$KernelID;
    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Script$KernelID;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;II)V

    .line 90
    .restart local v0    # "k":Landroid/support/v8/renderscript/Script$KernelID;
    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v0

    .line 91
    .restart local v6    # "k":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkForEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    .line 249
    :goto_0
    return-void

    .line 232
    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 233
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of ain or aout is required to be non-null."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    const/4 v3, 0x0

    .line 237
    .local v3, "in_id":I
    if-eqz p2, :cond_2

    .line 238
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    .line 240
    :cond_2
    const/4 v4, 0x0

    .line 241
    .local v4, "out_id":I
    if-eqz p3, :cond_3

    .line 242
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    .line 244
    :cond_3
    const/4 v5, 0x0

    .line 245
    .local v5, "params":[B
    if-eqz p4, :cond_4

    .line 246
    invoke-virtual {p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    .line 248
    :cond_4
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->nScriptForEach(IIII[B)V

    goto :goto_0
.end method

.method protected forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 13
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "v"    # Landroid/support/v8/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 252
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkForEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 279
    :goto_0
    return-void

    .line 257
    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 258
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one of ain or aout is required to be non-null."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_1
    if-nez p5, :cond_2

    .line 263
    invoke-virtual/range {p0 .. p4}, Landroid/support/v8/renderscript/Script;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    goto :goto_0

    .line 266
    :cond_2
    const/4 v4, 0x0

    .line 267
    .local v4, "in_id":I
    if-eqz p2, :cond_3

    .line 268
    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p2, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    .line 270
    :cond_3
    const/4 v5, 0x0

    .line 271
    .local v5, "out_id":I
    if-eqz p3, :cond_4

    .line 272
    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v5

    .line 274
    :cond_4
    const/4 v6, 0x0

    .line 275
    .local v6, "params":[B
    if-eqz p4, :cond_5

    .line 276
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v6

    .line 278
    :cond_5
    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    move-object/from16 v0, p5

    iget v7, v0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xstart:I

    move-object/from16 v0, p5

    iget v8, v0, Landroid/support/v8/renderscript/Script$LaunchOptions;->xend:I

    move-object/from16 v0, p5

    iget v9, v0, Landroid/support/v8/renderscript/Script$LaunchOptions;->ystart:I

    move-object/from16 v0, p5

    iget v10, v0, Landroid/support/v8/renderscript/Script$LaunchOptions;->yend:I

    move-object/from16 v0, p5

    iget v11, v0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zstart:I

    move-object/from16 v0, p5

    iget v12, v0, Landroid/support/v8/renderscript/Script$LaunchOptions;->zend:I

    move v3, p1

    invoke-virtual/range {v1 .. v12}, Landroid/support/v8/renderscript/RenderScript;->nScriptForEachClipped(IIII[BIIIIII)V

    goto :goto_0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Script;->getNObj()Landroid/renderscript/Script;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/Script;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    return-object v0
.end method

.method protected invoke(I)V
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkInvoke(I)V

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nScriptInvoke(II)V

    goto :goto_0
.end method

.method protected invoke(ILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 3
    .param p1, "slot"    # I
    .param p2, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkInvoke(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    if-eqz p2, :cond_1

    .line 177
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v8/renderscript/RenderScript;->nScriptInvokeV(II[B)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nScriptInvoke(II)V

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v1, p1}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetTimeZone(Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 211
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetTimeZone(I[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVar(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # D

    .prologue
    .line 307
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(ID)V

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarD(IID)V

    goto :goto_0
.end method

.method public setVar(IF)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(IF)V

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarF(IIF)V

    goto :goto_0
.end method

.method public setVar(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # I

    .prologue
    .line 322
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(II)V

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarI(III)V

    goto :goto_0
.end method

.method public setVar(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # J

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(IJ)V

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarJ(IIJ)V

    goto :goto_0
.end method

.method public setVar(ILandroid/support/v8/renderscript/BaseObj;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/support/v8/renderscript/BaseObj;

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(ILandroid/support/v8/renderscript/BaseObj;)V

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, p1, v0}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarObj(III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    goto :goto_1
.end method

.method public setVar(ILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarV(II[B)V

    goto :goto_0
.end method

.method public setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/support/v8/renderscript/FieldPacker;
    .param p3, "e"    # Landroid/support/v8/renderscript/Element;
    .param p4, "dims"    # [I

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    iget-object v2, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p3, v2}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    move v2, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarVE(II[BI[I)V

    goto :goto_0
.end method

.method public setVar(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mT:Landroid/support/v8/renderscript/ScriptCThunker;

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/ScriptCThunker;->thunkSetVar(IZ)V

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/BaseObj;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, p1, v0}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarI(III)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
