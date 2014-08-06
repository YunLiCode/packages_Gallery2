.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterFixedFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;
    }
.end annotation


# static fields
.field private static final frames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field private mLastFrame:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;

.field private mOrientation:I

.field private mOverlayBitmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

.field private mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->initHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->frames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    .line 53
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mOverlayBitmap:Ljava/util/HashMap;

    .line 55
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mLastFrame:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;

    .line 162
    const-string v0, "Frame"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 163
    return-void
.end method

.method private abortCalc()Z
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 292
    .local v0, "rs":Landroid/support/v8/renderscript/RenderScript;
    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->finish()V

    .line 293
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->needsStop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const/4 v1, 0x1

    .line 295
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static initHashMap()Ljava/util/HashMap;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v2, "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 96
    .local v3, "hp_frame_00":[I
    const v19, 0x7f0a01ee

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v4, v0, [I

    fill-array-data v4, :array_1

    .line 100
    .local v4, "hp_frame_01":[I
    const v19, 0x7f0a01ef

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v5, v0, [I

    fill-array-data v5, :array_2

    .line 104
    .local v5, "hp_frame_02":[I
    const v19, 0x7f0a01f0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v6, v0, [I

    fill-array-data v6, :array_3

    .line 108
    .local v6, "hp_frame_03":[I
    const v19, 0x7f0a01f1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v7, v0, [I

    fill-array-data v7, :array_4

    .line 112
    .local v7, "hp_frame_04":[I
    const v19, 0x7f0a01f2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v8, v0, [I

    fill-array-data v8, :array_5

    .line 116
    .local v8, "hp_frame_05":[I
    const v19, 0x7f0a01f3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v9, v0, [I

    fill-array-data v9, :array_6

    .line 120
    .local v9, "hp_frame_06":[I
    const v19, 0x7f0a01f4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v10, v0, [I

    fill-array-data v10, :array_7

    .line 124
    .local v10, "hp_frame_07":[I
    const v19, 0x7f0a01f5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v11, v0, [I

    fill-array-data v11, :array_8

    .line 128
    .local v11, "hp_frame_08":[I
    const v19, 0x7f0a01f6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [I

    fill-array-data v12, :array_9

    .line 132
    .local v12, "hp_frame_09":[I
    const v19, 0x7f0a01f7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v13, v0, [I

    fill-array-data v13, :array_a

    .line 136
    .local v13, "hp_frame_10":[I
    const v19, 0x7f0a01f8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v14, v0, [I

    fill-array-data v14, :array_b

    .line 140
    .local v14, "hp_frame_11":[I
    const v19, 0x7f0a01f9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v15, v0, [I

    fill-array-data v15, :array_c

    .line 144
    .local v15, "hp_frame_12":[I
    const v19, 0x7f0a01fa

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_d

    .line 148
    .local v16, "plain_frame_00":[I
    const v19, 0x7f0a01fb

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_e

    .line 152
    .local v17, "plain_frame_01":[I
    const v19, 0x7f0a01fc

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_f

    .line 156
    .local v18, "plain_frame_02":[I
    const v19, 0x7f0a01fd

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-object v2

    .line 93
    :array_0
    .array-data 4
        0x7f0200bb
        0x7f0200ba
    .end array-data

    .line 97
    :array_1
    .array-data 4
        0x7f0200bd
        0x7f0200bc
    .end array-data

    .line 101
    :array_2
    .array-data 4
        0x7f0200bf
        0x7f0200be
    .end array-data

    .line 105
    :array_3
    .array-data 4
        0x7f0200c1
        0x7f0200c0
    .end array-data

    .line 109
    :array_4
    .array-data 4
        0x7f0200c3
        0x7f0200c2
    .end array-data

    .line 113
    :array_5
    .array-data 4
        0x7f0200c5
        0x7f0200c4
    .end array-data

    .line 117
    :array_6
    .array-data 4
        0x7f0200c7
        0x7f0200c6
    .end array-data

    .line 121
    :array_7
    .array-data 4
        0x7f0200c9
        0x7f0200c8
    .end array-data

    .line 125
    :array_8
    .array-data 4
        0x7f0200cb
        0x7f0200ca
    .end array-data

    .line 129
    :array_9
    .array-data 4
        0x7f0200cd
        0x7f0200cc
    .end array-data

    .line 133
    :array_a
    .array-data 4
        0x7f0200cf
        0x7f0200ce
    .end array-data

    .line 137
    :array_b
    .array-data 4
        0x7f0200d1
        0x7f0200d0
    .end array-data

    .line 141
    :array_c
    .array-data 4
        0x7f0200d3
        0x7f0200d2
    .end array-data

    .line 145
    :array_d
    .array-data 4
        0x7f0201a2
        0x7f0201a1
    .end array-data

    .line 149
    :array_e
    .array-data 4
        0x7f0201a4
        0x7f0201a3
    .end array-data

    .line 153
    :array_f
    .array-data 4
        0x7f0201a6
        0x7f0201a5
    .end array-data
.end method

.method private reCalcFrame(ILandroid/support/v8/renderscript/Allocation;)V
    .locals 17
    .param p1, "frameID"    # I
    .param p2, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 239
    new-instance v14, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v14, v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;-><init>(Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;ILandroid/support/v8/renderscript/Allocation;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mLastFrame:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;

    .line 241
    invoke-virtual/range {p0 .. p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->loadResource(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v11

    .line 243
    .local v11, "tempFrame":Landroid/support/v8/renderscript/Allocation;
    new-instance v4, Ljava/lang/Float;

    const/4 v14, 0x0

    invoke-direct {v4, v14}, Ljava/lang/Float;-><init>(F)V

    .line 244
    .local v4, "factor":Ljava/lang/Float;
    new-instance v9, Landroid/support/v8/renderscript/Float2;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v9, v14, v15}, Landroid/support/v8/renderscript/Float2;-><init>(FF)V

    .line 246
    .local v9, "offset":Landroid/support/v8/renderscript/Float2;
    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v7

    .line 247
    .local v7, "frameWidth":I
    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v6

    .line 249
    .local v6, "frameHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 250
    .local v12, "width":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v8

    .line 252
    .local v8, "height":I
    if-gt v8, v12, :cond_3

    .line 253
    const/high16 v14, 0x3f800000

    int-to-float v15, v12

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 254
    const/high16 v14, 0x3f800000

    int-to-float v15, v8

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    iput v14, v9, Landroid/support/v8/renderscript/Float2;->y:F

    .line 260
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    const/high16 v15, 0x3f800000

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_oneOverW(F)V

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    const/high16 v15, 0x3f800000

    int-to-float v0, v8

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_oneOverH(F)V

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_factor(F)V

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    invoke-virtual {v14, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_offset(Landroid/support/v8/renderscript/Float2;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    int-to-long v15, v7

    invoke-virtual/range {v14 .. v16}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_frameWidth(J)V

    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    int-to-long v15, v6

    invoke-virtual/range {v14 .. v16}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_frameHeight(J)V

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    invoke-virtual {v14, v11}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_frameTexture(Landroid/support/v8/renderscript/Allocation;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mLastFrame:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;

    invoke-virtual {v14}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->getAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    .line 273
    .local v5, "frame":Landroid/support/v8/renderscript/Allocation;
    new-instance v10, Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-direct {v10}, Landroid/support/v8/renderscript/Script$LaunchOptions;-><init>()V

    .line 274
    .local v10, "options":Landroid/support/v8/renderscript/Script$LaunchOptions;
    const/4 v14, 0x0

    invoke-virtual {v10, v14, v12}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 276
    const/4 v3, 0x0

    .line 277
    .local v3, "endY":I
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_1
    if-ge v13, v8, :cond_2

    .line 278
    add-int/lit8 v3, v13, 0x40

    .line 279
    if-le v3, v8, :cond_1

    .line 280
    move v3, v8

    .line 282
    :cond_1
    invoke-virtual {v10, v13, v3}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    invoke-virtual {v14, v5, v10}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->forEach_cacheFrame(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->abortCalc()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 287
    :cond_2
    invoke-virtual {v11}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 288
    return-void

    .line 255
    .end local v3    # "endY":I
    .end local v5    # "frame":Landroid/support/v8/renderscript/Allocation;
    .end local v10    # "options":Landroid/support/v8/renderscript/Script$LaunchOptions;
    .end local v13    # "y":I
    :cond_3
    if-le v8, v12, :cond_0

    .line 256
    const/high16 v14, 0x3f800000

    int-to-float v15, v8

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 257
    const/high16 v14, 0x3f800000

    int-to-float v15, v12

    int-to-float v0, v8

    move/from16 v16, v0

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    iput v14, v9, Landroid/support/v8/renderscript/Float2;->x:F

    goto/16 :goto_0

    .line 277
    .restart local v3    # "endY":I
    .restart local v5    # "frame":Landroid/support/v8/renderscript/Allocation;
    .restart local v10    # "options":Landroid/support/v8/renderscript/Script$LaunchOptions;
    .restart local v13    # "y":I
    :cond_4
    add-int/lit8 v13, v13, 0x40

    goto :goto_1
.end method

.method private setupFrame(Landroid/support/v8/renderscript/Allocation;)V
    .locals 8
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/high16 v7, 0x3f800000

    .line 299
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    .line 300
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    .line 302
    .local v2, "height":I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_imageWidth(J)V

    .line 303
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_imageHeight(J)V

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "frame":Landroid/support/v8/renderscript/Allocation;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->getFrameTexture()I

    move-result v1

    .line 307
    .local v1, "frameID":I
    sget-object v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->frames:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 309
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mLastFrame:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mLastFrame:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;

    invoke-virtual {v4, v1, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->isEqual(ILandroid/support/v8/renderscript/Allocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mLastFrame:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->getAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 316
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_frameTexture(Landroid/support/v8/renderscript/Allocation;)V

    .line 318
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    int-to-float v5, v3

    div-float v5, v7, v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_oneOverW(F)V

    .line 319
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    int-to-float v5, v2

    div-float v5, v7, v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_oneOverH(F)V

    .line 320
    return-void

    .line 312
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->reCalcFrame(ILandroid/support/v8/renderscript/Allocation;)V

    .line 313
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mLastFrame:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->getAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 208
    if-nez p3, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    .line 211
    .local v0, "newOrientation":I
    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mOrientation:I

    if-eq v0, v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mOverlayBitmap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 213
    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mOrientation:I

    .line 215
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;->getFrameTexture()I

    move-result v3

    .line 216
    .local v3, "texture":I
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mOverlayBitmap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 217
    .local v1, "overlay":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 220
    .local v2, "res":Landroid/content/res/Resources;
    sget-object v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->frames:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v2, v4}, Lcom/android/gallery3d/filtershow/filters/IconUtilities;->getFXBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 221
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mOverlayBitmap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v0    # "newOrientation":I
    .end local v1    # "overlay":Landroid/graphics/Bitmap;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "texture":I
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bindScriptValues()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->bindScriptValues(Landroid/support/v8/renderscript/Allocation;)V

    .line 199
    return-void
.end method

.method protected bindScriptValues(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->setupFrame(Landroid/support/v8/renderscript/Allocation;)V

    .line 204
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->createFilter(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V

    .line 168
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I
    .param p4, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-direct {v0, v1, p1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v8/renderscript/Sampler;->CLAMP_LINEAR(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Sampler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->set_frameSampler(Landroid/support/v8/renderscript/Sampler;)V

    .line 179
    :cond_0
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mLastFrame:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;->destroyAlloc()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mLastFrame:Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame$Frame;

    .line 185
    return-void
.end method

.method protected resetScripts()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->destroy()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    goto :goto_0
.end method

.method protected run(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 6
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "out"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 325
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    if-nez v5, :cond_1

    .line 347
    :cond_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    .line 329
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    .line 331
    .local v1, "height":I
    new-instance v2, Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-direct {v2}, Landroid/support/v8/renderscript/Script$LaunchOptions;-><init>()V

    .line 332
    .local v2, "options":Landroid/support/v8/renderscript/Script$LaunchOptions;
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "endY":I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 336
    add-int/lit8 v0, v4, 0x40

    .line 337
    if-le v0, v1, :cond_2

    .line 338
    move v0, v1

    .line 340
    :cond_2
    invoke-virtual {v2, v4, v0}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 342
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->abortCalc()Z

    move-result v5

    if-nez v5, :cond_0

    .line 345
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;

    invoke-virtual {v5, p1, p2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_fixedframe;->forEach_root(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 335
    add-int/lit8 v4, v4, 0x40

    goto :goto_0
.end method

.method protected runFilter()V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->run(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 236
    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 1
    .param p1, "arg0"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 360
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    if-nez v0, :cond_1

    .line 364
    .end local p1    # "arg0":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_0
    :goto_0
    return-void

    .line 363
    .restart local p1    # "arg0":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_1
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    .end local p1    # "arg0":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFixedFrame;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterFixedFrameRepresentation;

    goto :goto_0
.end method
