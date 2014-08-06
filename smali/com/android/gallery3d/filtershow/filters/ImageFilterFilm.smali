.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterFilm.java"


# instance fields
.field private m256:Landroid/support/v8/renderscript/Allocation;

.field private mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

.field private mAntLookup:Landroid/support/v8/renderscript/Allocation;

.field private mBlurLookupTextureRadialLarge:Landroid/support/v8/renderscript/Allocation;

.field private mBlurLookupTextureRadialSmall:Landroid/support/v8/renderscript/Allocation;

.field private mBrightnessSource:Landroid/support/v8/renderscript/Allocation;

.field private mCurveLookup:Landroid/support/v8/renderscript/Allocation;

.field private mCurveSourceDef:Landroid/support/v8/renderscript/Allocation;

.field private mCurveSourceMax:Landroid/support/v8/renderscript/Allocation;

.field private mCurveSourceMin:Landroid/support/v8/renderscript/Allocation;

.field private mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

.field private mFxBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

.field private mVignetteStretchFac0:F

.field private mVignetteStretchFac1:F

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    .line 60
    const-string v0, "Film"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private calculateBlurLookupTextures(Landroid/content/res/Resources;Landroid/support/v8/renderscript/Allocation;)V
    .locals 28
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v11

    .line 83
    .local v11, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    const/high16 v21, 0x3f800000

    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x44000000

    div-float v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x44000000

    div-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 85
    .local v5, "fac":F
    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v14, v0

    .line 86
    .local v14, "scaledWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v12, v0

    .line 87
    .local v12, "scaledHeight":I
    new-instance v6, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v11, v1}, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;-><init>(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;)V

    .line 88
    .local v6, "imageWrapper":Lcom/android/gallery3d/filtershow/filters/ImageWrapper;
    invoke-virtual {v6, v14, v12}, Lcom/android/gallery3d/filtershow/filters/ImageWrapper;->downScaleRGBAIntoBounds(II)Landroid/support/v8/renderscript/Allocation;

    move-result-object v13

    .line 90
    .local v13, "scaledInputAllocation":Landroid/support/v8/renderscript/Allocation;
    new-instance v16, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v11}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 91
    .local v16, "tb_float":Landroid/support/v8/renderscript/Type$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 92
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 93
    invoke-virtual/range {v16 .. v16}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    .line 95
    new-instance v15, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v11}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v15, v11, v0}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 96
    .local v15, "tb_bool":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v15, v14}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 97
    invoke-virtual {v15}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    .line 99
    .local v7, "mTempCols":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v15, v12}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 100
    invoke-virtual {v15}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v11, v0}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v8

    .line 102
    .local v8, "mTempRows":Landroid/support/v8/renderscript/Allocation;
    new-instance v17, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v11}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v11, v1}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 103
    .local v17, "tb_uchar4":Landroid/support/v8/renderscript/Type$Builder;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 104
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 105
    invoke-virtual/range {v17 .. v17}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v20

    .line 106
    .local v20, "tmpType":Landroid/support/v8/renderscript/Type;
    const-string v21, "rs"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dims "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v21, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/16 v22, 0x3

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v11, v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v18

    .line 110
    .local v18, "tmpLarge":Landroid/support/v8/renderscript/Allocation;
    sget-object v21, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/16 v22, 0x3

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v11, v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v19

    .line 115
    .local v19, "tmpSmall":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v21

    sget-object v22, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/16 v23, 0x3

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v11, v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialLarge:Landroid/support/v8/renderscript/Allocation;

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v21

    sget-object v22, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/16 v23, 0x3

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v11, v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialSmall:Landroid/support/v8/renderscript/Allocation;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 123
    new-instance v21, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    const/high16 v22, 0x7f080000

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v11, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    .line 125
    :cond_0
    div-int/lit8 v3, v14, 0x2

    .line 126
    .local v3, "centerX":I
    div-int/lit8 v4, v12, 0x2

    .line 128
    .local v4, "centerY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    int-to-long v0, v14

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_width(J)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    int-to-long v0, v12

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_height(J)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    int-to-float v0, v14

    move/from16 v22, v0

    const/high16 v23, 0x40000000

    div-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_centerX(F)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    int-to-float v0, v12

    move/from16 v22, v0

    const/high16 v23, 0x40000000

    div-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_centerY(F)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_antLookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    const v22, 0x3e99999a

    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_innerRadius(F)V

    .line 135
    div-int/lit8 v21, v14, 0x2

    move/from16 v0, v21

    if-lt v3, v0, :cond_1

    move v9, v3

    .line 136
    .local v9, "maxXDistance":I
    :goto_0
    div-int/lit8 v21, v12, 0x2

    move/from16 v0, v21

    if-lt v4, v0, :cond_2

    move v10, v4

    .line 137
    .local v10, "maxYDistance":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    int-to-double v0, v9

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    int-to-double v0, v10

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000000000000000L

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_maxDistance(F)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    const v22, 0x3fb33333

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_blurRadiusFac(F)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_createAntLookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_outputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurLeftRight(Landroid/support/v8/renderscript/Allocation;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurTopBottom(Landroid/support/v8/renderscript/Allocation;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurRightLeft(Landroid/support/v8/renderscript/Allocation;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurBottomTop(Landroid/support/v8/renderscript/Allocation;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    const v22, 0x3f266666

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_blurRadiusFac(F)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_createAntLookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_outputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurLeftRight(Landroid/support/v8/renderscript/Allocation;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->set_inputAlloc(Landroid/support/v8/renderscript/Allocation;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurTopBottom(Landroid/support/v8/renderscript/Allocation;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurRightLeft(Landroid/support/v8/renderscript/Allocation;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->forEach_blurBottomTop(Landroid/support/v8/renderscript/Allocation;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000

    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_overWm1(F)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000

    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_overHm1(F)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_gResampleSource(Landroid/support/v8/renderscript/Allocation;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialLarge:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->forEach_resample(Landroid/support/v8/renderscript/Allocation;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_gResampleSource(Landroid/support/v8/renderscript/Allocation;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialSmall:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->forEach_resample(Landroid/support/v8/renderscript/Allocation;)V

    .line 175
    invoke-virtual/range {v18 .. v18}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 176
    invoke-virtual/range {v19 .. v19}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialSmall:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_blurLookupTexture1(Landroid/support/v8/renderscript/Allocation;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialLarge:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_blurLookupTexture2(Landroid/support/v8/renderscript/Allocation;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    move-object/from16 v21, v0

    int-to-long v0, v14

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_blurTextureWidth(J)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    move-object/from16 v21, v0

    int-to-long v0, v12

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_blurTextureHeight(J)V

    .line 183
    return-void

    .line 135
    .end local v9    # "maxXDistance":I
    .end local v10    # "maxYDistance":I
    :cond_1
    sub-int v9, v14, v3

    goto/16 :goto_0

    .line 136
    .restart local v9    # "maxXDistance":I
    :cond_2
    sub-int v10, v12, v4

    goto/16 :goto_1
.end method

.method private prepareFilmCurveResources()V
    .locals 3

    .prologue
    .line 186
    const v2, 0x7f02007b

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->loadResource(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceMin:Landroid/support/v8/renderscript/Allocation;

    .line 187
    const v2, 0x7f020079

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->loadResource(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceDef:Landroid/support/v8/renderscript/Allocation;

    .line 188
    const v2, 0x7f02007a

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->loadResource(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceMax:Landroid/support/v8/renderscript/Allocation;

    .line 189
    const v2, 0x7f02000f

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->loadResourceAlpha(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBrightnessSource:Landroid/support/v8/renderscript/Allocation;

    .line 191
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->bindScriptValues()V

    .line 193
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 194
    .local v0, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    new-instance v1, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 195
    .local v1, "tb_bool":Landroid/support/v8/renderscript/Type$Builder;
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 196
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->m256:Landroid/support/v8/renderscript/Allocation;

    .line 197
    return-void
.end method

.method private updateFilmCurve()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000

    .line 200
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getStyle()I

    move-result v7

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v5, v7, 0x5

    .line 201
    .local v5, "styleMemY":I
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getBrightness()I

    move-result v7

    add-int/lit8 v7, v7, 0x64

    int-to-float v7, v7

    const/high16 v8, 0x43480000

    div-float v2, v7, v8

    .line 202
    .local v2, "brightnessPos":F
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBrightnessSource:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v9, v2

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 203
    .local v3, "brightnessPosY":I
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBrightnessSource:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 204
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getStyleStrength()I

    move-result v7

    add-int/lit8 v7, v7, -0x32

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42480000

    div-float v0, v7, v8

    .line 205
    .local v0, "blendStyleFac":F
    sub-float v1, v9, v0

    .line 207
    .local v1, "blendStyleFacInv":F
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    int-to-long v8, v5

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_styleMemY(J)V

    .line 208
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_brightnessY(J)V

    .line 209
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    invoke-virtual {v7, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_blendStyleFac(F)V

    .line 210
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    invoke-virtual {v7, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_blendStyleFacInv(F)V

    .line 212
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v4

    .line 213
    .local v4, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    new-instance v6, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 214
    .local v6, "tb_lookup":Landroid/support/v8/renderscript/Type$Builder;
    const/16 v7, 0x200

    invoke-virtual {v6, v7}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 215
    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveLookup:Landroid/support/v8/renderscript/Allocation;

    .line 216
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_curveLookupTexture(Landroid/support/v8/renderscript/Allocation;)V

    .line 217
    return-void
.end method

.method private updateParameters(Landroid/support/v8/renderscript/Allocation;)V
    .locals 5
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/high16 v4, 0x42c80000

    const/high16 v0, 0x3f800000

    .line 220
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    if-eqz v1, :cond_1

    .line 221
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mWidth:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mVignetteStretchFac0:F

    .line 222
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mWidth:I

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mVignetteStretchFac1:F

    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_overWm1(F)V

    .line 225
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_overHm1(F)V

    .line 226
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getSaturation()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42480000

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_saturation(F)V

    .line 227
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getBlurStrength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_blurBlend(F)V

    .line 228
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getBlurStrength()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_blurStrength(F)V

    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getCenterSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_vignetteStrength(F)V

    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mVignetteStretchFac0:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_vignetteStretchFac0(F)V

    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mVignetteStretchFac1:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_vignetteStretchFac1(F)V

    .line 235
    :goto_1
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_1
    const-string v0, "ImageFilterFilm"

    const-string v1, "mFilmBase was not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 279
    if-nez p3, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFxBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 282
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020099

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/filters/IconUtilities;->getFXBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFxBitmap:Landroid/graphics/Bitmap;

    .line 284
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFxBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v1}, Lcom/android/gallery3d/filtershow/filters/IconUtilities;->applyFX(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 286
    :goto_0
    return-object v1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bindScriptValues()V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->bindScriptValues(Landroid/support/v8/renderscript/Allocation;)V

    .line 328
    return-void
.end method

.method protected bindScriptValues(Landroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceDef:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_curveSourceDef(Landroid/support/v8/renderscript/Allocation;)V

    .line 336
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBrightnessSource:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_brightnessSource(Landroid/support/v8/renderscript/Allocation;)V

    .line 337
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;->getStyleStrength()I

    move-result v0

    const/16 v2, 0x32

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceMin:Landroid/support/v8/renderscript/Allocation;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_blendStyleMem(Landroid/support/v8/renderscript/Allocation;)V

    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v8/renderscript/Sampler;->WRAP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->set_sampler(Landroid/support/v8/renderscript/Sampler;)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceMax:Landroid/support/v8/renderscript/Allocation;

    goto :goto_1
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->createFilter(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V

    .line 305
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I
    .param p4, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mWidth:I

    .line 314
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mHeight:I

    .line 316
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    if-nez v0, :cond_1

    .line 317
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-direct {v0, v1, p1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->prepareFilmCurveResources()V

    .line 322
    invoke-direct {p0, p1, p4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->calculateBlurLookupTextures(Landroid/content/res/Resources;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_0
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 241
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntLookup:Landroid/support/v8/renderscript/Allocation;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialLarge:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialLarge:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 245
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialLarge:Landroid/support/v8/renderscript/Allocation;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialSmall:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialSmall:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 249
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBlurLookupTextureRadialSmall:Landroid/support/v8/renderscript/Allocation;

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceMin:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceMin:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 253
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceMin:Landroid/support/v8/renderscript/Allocation;

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceDef:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceDef:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 257
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceDef:Landroid/support/v8/renderscript/Allocation;

    .line 259
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceMax:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_5

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceMax:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 261
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveSourceMax:Landroid/support/v8/renderscript/Allocation;

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBrightnessSource:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_6

    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBrightnessSource:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 265
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mBrightnessSource:Landroid/support/v8/renderscript/Allocation;

    .line 267
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveLookup:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_7

    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 269
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mCurveLookup:Landroid/support/v8/renderscript/Allocation;

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->m256:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_8

    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->m256:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 273
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->m256:Landroid/support/v8/renderscript/Allocation;

    .line 275
    :cond_8
    return-void
.end method

.method protected resetScripts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->destroy()V

    .line 293
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;->destroy()V

    .line 297
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mAntBlur:Lcom/android/gallery3d/filtershow/filters/ScriptC_antblur;

    .line 299
    :cond_1
    return-void
.end method

.method protected run(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 2
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "out"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    if-nez v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->updateFilmCurve()V

    .line 352
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->updateParameters(Landroid/support/v8/renderscript/Allocation;)V

    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->m256:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;)V

    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mFilmBase:Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_film_base;->forEach_film_base(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_0
.end method

.method protected runFilter()V
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->run(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 344
    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 72
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFilm;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFilmRepresentation;

    .line 73
    return-void
.end method
