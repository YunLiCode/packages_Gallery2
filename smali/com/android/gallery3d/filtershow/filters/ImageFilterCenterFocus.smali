.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterCenterFocus.java"


# instance fields
.field private mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

.field private mAntLookup:Landroid/support/v8/renderscript/Allocation;

.field private mBlur:Landroid/support/v8/renderscript/Allocation;

.field private mBlurStrength:F

.field private mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

.field private mCenterSize:F

.field private mCenterX:I

.field private mCenterY:I

.field private mContrastLookup:Landroid/support/v8/renderscript/Allocation;

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

.field private mTempCols:Landroid/support/v8/renderscript/Allocation;

.field private mTempRows:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x40800000

    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .line 45
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterX:I

    .line 46
    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterY:I

    .line 47
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mBlurStrength:F

    .line 48
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterSize:F

    .line 51
    const-string v0, "CenterFocus"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method protected bindScriptValues()V
    .locals 5

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    .line 142
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 144
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_antLookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 146
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_width(J)V

    .line 147
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_height(J)V

    .line 149
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_blur(Landroid/support/v8/renderscript/Allocation;)V

    .line 151
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mContrastLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_contrastLookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 152
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mContrastLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;)V

    .line 154
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_width(J)V

    .line 155
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_height(J)V

    .line 156
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->invoke_setupMatrices()V

    .line 157
    return-void
.end method

.method public createFilter(Landroid/content/res/Resources;FI)V
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    const/16 v8, 0x100

    .line 104
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v6

    .line 105
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 106
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    .line 108
    .local v1, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    new-instance v4, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v4, v1, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 109
    .local v4, "tb_floatLookup":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v4, v8}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 110
    invoke-virtual {v4, v8}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 111
    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mContrastLookup:Landroid/support/v8/renderscript/Allocation;

    .line 113
    new-instance v5, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v5, v1, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 114
    .local v5, "tb_uchar4":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v5, v6}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 115
    invoke-virtual {v5, v0}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 116
    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mBlur:Landroid/support/v8/renderscript/Allocation;

    .line 118
    new-instance v3, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 119
    .local v3, "tb_float":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v3, v6}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 120
    invoke-virtual {v3, v0}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 121
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    .line 123
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    if-nez v7, :cond_0

    .line 124
    new-instance v7, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    const/high16 v8, 0x7f080000

    invoke-direct {v7, v1, p1, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    .line 127
    :cond_0
    new-instance v2, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 128
    .local v2, "tb_bool":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v2, v6}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 129
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    .line 131
    invoke-virtual {v2, v0}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 132
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    .line 134
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    if-nez v7, :cond_1

    .line 135
    new-instance v7, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    const v8, 0x7f08000a

    invoke-direct {v7, v1, p1, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    .line 137
    :cond_1
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 69
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 73
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 77
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mBlur:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mBlur:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 81
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mBlur:Landroid/support/v8/renderscript/Allocation;

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mContrastLookup:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mContrastLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 85
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mContrastLookup:Landroid/support/v8/renderscript/Allocation;

    .line 87
    :cond_4
    return-void
.end method

.method protected resetScripts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->destroy()V

    .line 93
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->destroy()V

    .line 97
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    .line 99
    :cond_1
    return-void
.end method

.method public runFilter()V
    .locals 24

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 228
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v16

    .line 165
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v7

    .line 167
    .local v7, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getXCenter()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getScaleFactor()F

    move-result v18

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v3, v0

    .line 168
    .local v3, "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getYCenter()F

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getScaleFactor()F

    move-result v18

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v4, v0

    .line 170
    .local v4, "centerY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getBlurStrength()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42c80000

    div-float v17, v17, v18

    const/high16 v18, 0x3f800000

    add-float v14, v17, v18

    .line 171
    .local v14, "str":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getCenterSize()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42c80000

    div-float v2, v17, v18

    .line 173
    .local v2, "centerSize":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterX:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterY:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mBlurStrength:F

    move/from16 v17, v0

    cmpl-float v17, v17, v14

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterSize:F

    move/from16 v17, v0

    cmpl-float v17, v17, v2

    if-eqz v17, :cond_2

    .line 175
    :cond_1
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterX:I

    .line 176
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterY:I

    .line 177
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mBlurStrength:F

    .line 178
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterSize:F

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_width(J)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    int-to-long v0, v7

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_height(J)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    int-to-float v0, v3

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_centerX(F)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    int-to-float v0, v4

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_centerY(F)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_blurRadiusFac(F)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_innerRadius(F)V

    .line 187
    int-to-double v0, v3

    move-wide/from16 v17, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000000000000000L

    div-double v19, v19, v21

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_3

    move v10, v3

    .line 188
    .local v10, "maxXDistance":I
    :goto_1
    int-to-double v0, v4

    move-wide/from16 v17, v0

    int-to-double v0, v7

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000000000000000L

    div-double v19, v19, v21

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_4

    move v11, v4

    .line 189
    .local v11, "maxYDistance":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    int-to-double v0, v11

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_maxDistance(F)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_createAntLookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mBlur:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_outputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurLeftRight(Landroid/support/v8/renderscript/Allocation;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mBlur:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurTopBottom(Landroid/support/v8/renderscript/Allocation;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempRows:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurRightLeft(Landroid/support/v8/renderscript/Allocation;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mTempCols:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurBottomTop(Landroid/support/v8/renderscript/Allocation;)V

    .line 203
    .end local v10    # "maxXDistance":I
    .end local v11    # "maxYDistance":I
    :cond_2
    new-instance v12, Landroid/support/v8/renderscript/Float2;

    int-to-float v0, v3

    move/from16 v17, v0

    const/high16 v18, 0x42c80000

    div-float v17, v17, v18

    int-to-float v0, v4

    move/from16 v18, v0

    const/high16 v19, 0x42c80000

    div-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/support/v8/renderscript/Float2;-><init>(FF)V

    .line 204
    .local v12, "midPoint":Landroid/support/v8/renderscript/Float2;
    move/from16 v0, v16

    if-lt v0, v7, :cond_5

    move/from16 v17, v16

    :goto_3
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42c80000

    div-float v9, v17, v18

    .line 205
    .local v9, "m":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getCenterSize()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3c23d70a

    mul-float v17, v17, v18

    const v18, 0x3c23d70a

    add-float v2, v17, v18

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_midPoint(Landroid/support/v8/renderscript/Float2;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_m(F)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f000000

    mul-float v18, v18, v2

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_centerSize(F)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getFilterStrength()I

    move-result v17

    if-nez v17, :cond_6

    const/high16 v17, 0x3f000000

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_filterStrength(F)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getOuterBrightness()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3c23d70a

    mul-float v15, v17, v18

    .line 213
    .local v15, "v":F
    const/16 v17, 0x0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_7

    const/high16 v17, 0x42c80000

    mul-float v13, v17, v15

    .line 217
    .local v13, "outerBrightness":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    move-object/from16 v17, v0

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x3a83126f

    mul-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_outerBrightness_abs01(F)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    move-object/from16 v17, v0

    const-wide/high16 v18, 0x4030000000000000L

    const v20, -0x43dc28f6

    mul-float v20, v20, v13

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_outerBrightness_exp(F)V

    .line 220
    mul-int v17, v16, v16

    mul-int v18, v7, v7

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v5, v0

    .line 221
    .local v5, "diag_length":F
    const v17, 0x3f124925

    mul-float v18, v5, v2

    div-float v6, v17, v18

    .line 222
    .local v6, "factor":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;->getInnerBrightness()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f6e147b

    mul-float v8, v17, v18

    .line 223
    .local v8, "innerBrightness":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    move-object/from16 v17, v0

    const v18, 0x3c23d70a

    mul-float v18, v18, v8

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_innerBrightness(F)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    move-object/from16 v17, v0

    const-wide/high16 v18, 0x4000000000000000L

    const v20, -0x43dc28f6

    mul-float v20, v20, v8

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_innerBrightness_exp(F)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->set_factor(F)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mCenterFocus:Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/gallery3d/filtershow/filters/ScriptC_centerfocus;->forEach_centerfocus(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto/16 :goto_0

    .line 187
    .end local v5    # "diag_length":F
    .end local v6    # "factor":F
    .end local v8    # "innerBrightness":F
    .end local v9    # "m":F
    .end local v12    # "midPoint":Landroid/support/v8/renderscript/Float2;
    .end local v13    # "outerBrightness":F
    .end local v15    # "v":F
    :cond_3
    sub-int v10, v16, v3

    goto/16 :goto_1

    .line 188
    .restart local v10    # "maxXDistance":I
    :cond_4
    sub-int v11, v7, v4

    goto/16 :goto_2

    .end local v10    # "maxXDistance":I
    .restart local v12    # "midPoint":Landroid/support/v8/renderscript/Float2;
    :cond_5
    move/from16 v17, v7

    .line 204
    goto/16 :goto_3

    .line 209
    .restart local v9    # "m":F
    :cond_6
    const/high16 v17, 0x3f800000

    goto/16 :goto_4

    .line 214
    .restart local v15    # "v":F
    :cond_7
    const/high16 v17, -0x40c00000

    cmpl-float v17, v15, v17

    if-lez v17, :cond_8

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, -0x3e080000

    mul-float v13, v17, v18

    .restart local v13    # "outerBrightness":F
    goto/16 :goto_5

    .line 215
    .end local v13    # "outerBrightness":F
    :cond_8
    const/high16 v17, -0x3d460000

    const/high16 v18, 0x40400000

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v19

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000

    sub-float v18, v18, v19

    mul-float v13, v17, v18

    .restart local v13    # "outerBrightness":F
    goto/16 :goto_5
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 63
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterCenterFocus;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterCenterFocusRepresentation;

    .line 64
    return-void
.end method
