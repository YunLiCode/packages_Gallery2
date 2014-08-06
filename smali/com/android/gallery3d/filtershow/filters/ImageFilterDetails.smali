.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterDetails.java"


# instance fields
.field private mBlurHeight:I

.field private mBlurSharpenSrc:Landroid/support/v8/renderscript/Allocation;

.field private mBlurWidth:I

.field private mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

.field private mHeight:I

.field private mLSC:Lcom/android/gallery3d/filtershow/filters/LSC;

.field private mOriginalPicture:Landroid/graphics/Bitmap;

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

.field private mStructureHistogram:Landroid/support/v8/renderscript/Allocation;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    .line 43
    const-string v0, "Details"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method protected bindScriptValues()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mWidth:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->set_inputWidth(J)V

    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mHeight:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->set_inputHeight(J)V

    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mStructureHistogram:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->set_structureHistogramTexture(Landroid/support/v8/renderscript/Allocation;)V

    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mLSC:Lcom/android/gallery3d/filtershow/filters/LSC;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/LSC;->countTilesX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->set_structureCountTilesX(F)V

    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mLSC:Lcom/android/gallery3d/filtershow/filters/LSC;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/LSC;->countTilesY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->set_structureCountTilesY(F)V

    .line 165
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurSharpenSrc:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->set_sharpenBlurTexture(Landroid/support/v8/renderscript/Allocation;)V

    .line 166
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 17
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    if-nez v13, :cond_0

    .line 154
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v2

    .line 92
    .local v2, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mWidth:I

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mHeight:I

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    if-nez v13, :cond_1

    .line 96
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v14

    const v15, 0x7f08000c

    move-object/from16 v0, p1

    invoke-direct {v13, v14, v0, v15}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    .line 100
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mWidth:I

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->set_inputWidth(J)V

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mHeight:I

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->set_inputHeight(J)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v13, v14}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 108
    const/high16 v13, 0x3f800000

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x44000000

    div-float/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x44000000

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 110
    .local v1, "fac":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v1

    float-to-int v10, v13

    .line 111
    .local v10, "scaledWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v1

    float-to-int v9, v13

    .line 112
    .local v9, "scaledHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    const/4 v14, 0x1

    invoke-static {v13, v10, v9, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 115
    .local v8, "scaledBitmapForLSC":Landroid/graphics/Bitmap;
    new-instance v13, Lcom/android/gallery3d/filtershow/filters/LSC;

    const/16 v14, 0x19

    const/high16 v15, 0x40a00000

    const/16 v16, 0x1

    invoke-direct/range {v13 .. v16}, Lcom/android/gallery3d/filtershow/filters/LSC;-><init>(IFZ)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mLSC:Lcom/android/gallery3d/filtershow/filters/LSC;

    .line 116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mLSC:Lcom/android/gallery3d/filtershow/filters/LSC;

    invoke-virtual {v13, v8}, Lcom/android/gallery3d/filtershow/filters/LSC;->processTiles(Landroid/graphics/Bitmap;)V

    .line 118
    new-instance v11, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->I8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v13

    invoke-direct {v11, v2, v13}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 119
    .local v11, "tb_I8":Landroid/support/v8/renderscript/Type$Builder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mLSC:Lcom/android/gallery3d/filtershow/filters/LSC;

    invoke-virtual {v13}, Lcom/android/gallery3d/filtershow/filters/LSC;->calculateLookupTextureSizeWidth()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mLSC:Lcom/android/gallery3d/filtershow/filters/LSC;

    invoke-virtual {v13}, Lcom/android/gallery3d/filtershow/filters/LSC;->calculateLookupTextureSizeHeight()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 121
    invoke-virtual {v11}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mStructureHistogram:Landroid/support/v8/renderscript/Allocation;

    .line 122
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mStructureHistogram:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mLSC:Lcom/android/gallery3d/filtershow/filters/LSC;

    invoke-virtual {v14}, Lcom/android/gallery3d/filtershow/filters/LSC;->createLookupTexture()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v8/renderscript/Allocation;->copyFrom([B)V

    .line 125
    const v3, 0x3ea8f5c3

    .line 126
    .local v3, "scale":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    const/16 v14, 0xbb8

    if-gt v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/16 v14, 0xbb8

    if-gt v13, v14, :cond_2

    const v3, 0x3ecccccd

    .line 127
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    const/16 v14, 0x7d0

    if-gt v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/16 v14, 0x7d0

    if-gt v13, v14, :cond_3

    const/high16 v3, 0x3f000000

    .line 129
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v3

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurWidth:I

    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v3

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurHeight:I

    .line 132
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurWidth:I

    const/16 v14, 0x800

    if-gt v13, v14, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurHeight:I

    const/16 v14, 0x800

    if-le v13, v14, :cond_5

    .line 133
    :cond_4
    const/high16 v13, 0x45000000

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v5, v13, v14

    .line 134
    .local v5, "scaleW":F
    const/high16 v13, 0x45000000

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v4, v13, v14

    .line 135
    .local v4, "scaleH":F
    cmpg-float v13, v5, v4

    if-gtz v13, :cond_6

    move v3, v5

    .line 136
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v3

    const/high16 v14, 0x3f000000

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurWidth:I

    .line 137
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v3

    const/high16 v14, 0x3f000000

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurHeight:I

    .line 140
    .end local v4    # "scaleH":F
    .end local v5    # "scaleW":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurHeight:I

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 142
    .local v7, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v13

    invoke-direct {v12, v2, v13}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 143
    .local v12, "tb_uchar":Landroid/support/v8/renderscript/Type$Builder;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurWidth:I

    invoke-virtual {v12, v13}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 144
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurHeight:I

    invoke-virtual {v12, v13}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 146
    invoke-virtual {v12}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v13

    sget-object v14, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v15, 0x3

    invoke-static {v2, v13, v14, v15}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurSharpenSrc:Landroid/support/v8/renderscript/Allocation;

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    invoke-static {v2}, Landroid/support/v8/renderscript/Sampler;->WRAP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->set_sampler(Landroid/support/v8/renderscript/Sampler;)V

    .line 152
    invoke-static {v2, v7}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v6

    .line 153
    .local v6, "scaledAllocation":Landroid/support/v8/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurSharpenSrc:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v13, v6, v14}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->forEach_createSharpenBlurTexture(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto/16 :goto_0

    .end local v6    # "scaledAllocation":Landroid/support/v8/renderscript/Allocation;
    .end local v7    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "tb_uchar":Landroid/support/v8/renderscript/Type$Builder;
    .restart local v4    # "scaleH":F
    .restart local v5    # "scaleW":F
    :cond_6
    move v3, v4

    .line 135
    goto/16 :goto_1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mStructureHistogram:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mStructureHistogram:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 62
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mStructureHistogram:Landroid/support/v8/renderscript/Allocation;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurSharpenSrc:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurSharpenSrc:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 67
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mBlurSharpenSrc:Landroid/support/v8/renderscript/Allocation;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mOriginalPicture:Landroid/graphics/Bitmap;

    .line 75
    :cond_2
    return-void
.end method

.method protected resetScripts()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->destroy()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    .line 83
    :cond_0
    return-void
.end method

.method protected runFilter()V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    const/high16 v1, 0x3fc00000

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getSharpening()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->set_sharpenStrength(F)V

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;->getStructure()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->set_structureStrength(F)V

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mDetails:Lcom/android/gallery3d/filtershow/filters/ScriptC_details;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_details;->forEach_details(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 55
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDetails;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterDetailsRepresentation;

    .line 56
    return-void
.end method
