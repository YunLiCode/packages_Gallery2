.class public Landroid/support/v8/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/support/v8/renderscript/Element;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
    .locals 1
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 203
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    .line 204
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Element;->checkValid()V

    .line 205
    iput-object p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 206
    iput-object p2, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    .line 207
    return-void
.end method


# virtual methods
.method public create()Landroid/support/v8/renderscript/Type;
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 275
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    if-lez v1, :cond_2

    .line 276
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_1

    .line 277
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Both X and Y dimension required when Z is present."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_1
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_2

    .line 280
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Cube maps not supported with 3D types."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_2
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-lez v1, :cond_3

    .line 284
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    if-ge v1, v2, :cond_3

    .line 285
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "X dimension required when Y is present."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_3
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_4

    .line 289
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_4

    .line 290
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Cube maps require 2D Types."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_4
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    if-eqz v1, :cond_6

    .line 295
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    if-eqz v1, :cond_6

    .line 296
    :cond_5
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "YUV only supports basic 2D."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_6
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    sget-boolean v1, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v1, :cond_7

    .line 302
    iget-object v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    check-cast v0, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 303
    .local v0, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iget v2, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iget v3, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iget v4, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v5, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iget v7, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/TypeThunker;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;IIIZZI)Landroid/support/v8/renderscript/Type;

    move-result-object v10

    .line 310
    .end local v0    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    .local v10, "t":Landroid/support/v8/renderscript/Type;
    :goto_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iput-object v1, v10, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    .line 311
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimX:I

    .line 312
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimY:I

    .line 313
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimZ:I

    .line 314
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v1, v10, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    .line 315
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v1, v10, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    .line 316
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    iput v1, v10, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    .line 318
    invoke-virtual {v10}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    .line 319
    return-object v10

    .line 306
    .end local v10    # "t":Landroid/support/v8/renderscript/Type;
    :cond_7
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v3, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    iget v3, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iget v5, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v7, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iget v8, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(IIIIZZI)I

    move-result v9

    .line 308
    .local v9, "id":I
    new-instance v10, Landroid/support/v8/renderscript/Type;

    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v10, v9, v1}, Landroid/support/v8/renderscript/Type;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .restart local v10    # "t":Landroid/support/v8/renderscript/Type;
    goto :goto_0
.end method

.method public setFaces(Z)Landroid/support/v8/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    .line 246
    return-object p0
.end method

.method public setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 241
    return-object p0
.end method

.method public setX(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 216
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 217
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    .line 220
    return-object p0
.end method

.method public setY(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 224
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 225
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    .line 228
    return-object p0
.end method

.method public setYuvFormat(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 2
    .param p1, "yuvFormat"    # I

    .prologue
    .line 255
    sparse-switch p1, :sswitch_data_0

    .line 261
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Only NV21 and YV12 are supported.."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :sswitch_0
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    .line 265
    return-object p0

    .line 255
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZ(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 232
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 233
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    .line 236
    return-object p0
.end method
