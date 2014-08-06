.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterUPoint.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

.field private mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mWMap:Landroid/support/v8/renderscript/Allocation;

.field private mWMapState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMap:Landroid/support/v8/renderscript/Allocation;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMapState:I

    .line 48
    new-instance v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .line 52
    const-string v0, "upoint"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private checkStop()Z
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 296
    .local v0, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->finish()V

    .line 297
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->needsStop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const/4 v1, 0x1

    .line 300
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSourceBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mSourceBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mSourceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private hasInk()Z
    .locals 3

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getInking()[Z

    move-result-object v1

    .line 150
    .local v1, "ink":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 151
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    .line 152
    const/4 v2, 0x1

    .line 154
    :goto_1
    return v2

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private runSelectiveAdjust(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 6
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "out"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    .line 231
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    .line 233
    .local v1, "height":I
    new-instance v2, Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-direct {v2}, Landroid/support/v8/renderscript/Script$LaunchOptions;-><init>()V

    .line 235
    .local v2, "options":Landroid/support/v8/renderscript/Script$LaunchOptions;
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 237
    const/4 v3, 0x0

    .local v3, "ty":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 238
    add-int/lit8 v0, v3, 0x40

    .line 239
    .local v0, "endy":I
    if-le v0, v1, :cond_0

    .line 240
    move v0, v1

    .line 242
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 243
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    invoke-virtual {v5, p1, p2, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->forEach_selectiveAdjust(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 244
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->checkStop()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    .end local v0    # "endy":I
    :cond_1
    return-void

    .line 237
    .restart local v0    # "endy":I
    :cond_2
    add-int/lit8 v3, v3, 0x40

    goto :goto_0
.end method

.method private runSelectiveAdjustInkOnly(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 6
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "out"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    .line 252
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    .line 254
    .local v1, "height":I
    new-instance v2, Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-direct {v2}, Landroid/support/v8/renderscript/Script$LaunchOptions;-><init>()V

    .line 256
    .local v2, "options":Landroid/support/v8/renderscript/Script$LaunchOptions;
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 258
    const/4 v3, 0x0

    .local v3, "ty":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 259
    add-int/lit8 v0, v3, 0x40

    .line 260
    .local v0, "endy":I
    if-le v0, v1, :cond_0

    .line 261
    move v0, v1

    .line 263
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 264
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    invoke-virtual {v5, p1, p2, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->forEach_selectiveAdjustInkOnly(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 265
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->checkStop()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 270
    .end local v0    # "endy":I
    :cond_1
    return-void

    .line 258
    .restart local v0    # "endy":I
    :cond_2
    add-int/lit8 v3, v3, 0x40

    goto :goto_0
.end method

.method private runSelectiveAdjustWMap(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 6
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "out"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    .line 274
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    .line 276
    .local v1, "height":I
    new-instance v2, Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-direct {v2}, Landroid/support/v8/renderscript/Script$LaunchOptions;-><init>()V

    .line 278
    .local v2, "options":Landroid/support/v8/renderscript/Script$LaunchOptions;
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 280
    const/4 v3, 0x0

    .local v3, "ty":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 281
    add-int/lit8 v0, v3, 0x40

    .line 282
    .local v0, "endy":I
    if-le v0, v1, :cond_0

    .line 283
    move v0, v1

    .line 285
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    .line 286
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    invoke-virtual {v5, p1, p2, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->forEach_selectiveAdjustWMap(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 287
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->checkStop()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 292
    .end local v0    # "endy":I
    :cond_1
    return-void

    .line 280
    .restart local v0    # "endy":I
    :cond_2
    add-int/lit8 v3, v3, 0x40

    goto :goto_0
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    const/4 v11, 0x0

    .line 114
    if-nez p3, :cond_1

    .line 115
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 117
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x7f020087

    invoke-static {v4, v7}, Lcom/android/gallery3d/filtershow/filters/IconUtilities;->getFXBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 120
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 122
    .local v6, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 123
    .local v2, "h":I
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 124
    .local v1, "dim":I
    new-instance v3, Landroid/graphics/Rect;

    sub-int v7, v6, v1

    div-int/lit8 v7, v7, 0x2

    sub-int v8, v2, v1

    div-int/lit8 v8, v8, 0x2

    add-int v9, v1, v6

    div-int/lit8 v9, v9, 0x2

    add-int v10, v2, v1

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 126
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7, v11, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 136
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "dim":I
    .end local v2    # "h":I
    .end local v3    # "r":Landroid/graphics/Rect;
    .end local v6    # "w":I
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 129
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v7, 0x2

    if-eq v7, p3, :cond_2

    iget v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMapState:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 130
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMapState:I

    .line 132
    :cond_2
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mSourceBitmap:Landroid/graphics/Bitmap;

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 134
    .local v5, "ret":Landroid/graphics/Bitmap;
    iput-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mSourceBitmap:Landroid/graphics/Bitmap;

    move-object p1, v5

    .line 136
    goto :goto_0
.end method

.method protected bindScriptValues()V
    .locals 5

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    .line 142
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 143
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_inputWidth(J)V

    .line 144
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_inputHeight(J)V

    .line 145
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMap:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_wmap(Landroid/support/v8/renderscript/Allocation;)V

    .line 146
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->createFilter(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V

    .line 85
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I
    .param p4, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v4, 0x2

    .line 90
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 92
    .local v0, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    new-instance v1, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 93
    .local v1, "tb_float":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 94
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 95
    if-eq v4, p3, :cond_0

    .line 96
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMapState:I

    .line 97
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMap:Landroid/support/v8/renderscript/Allocation;

    .line 100
    :cond_0
    new-instance v2, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    const v3, 0x7f08001b

    invoke-direct {v2, v0, p1, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    .line 101
    if-eq v4, p3, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMap:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_wmap(Landroid/support/v8/renderscript/Allocation;)V

    .line 104
    :cond_1
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMap:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMap:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMapState:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMap:Landroid/support/v8/renderscript/Allocation;

    .line 72
    :cond_0
    return-void
.end method

.method protected resetScripts()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->destroy()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    .line 80
    :cond_0
    return-void
.end method

.method protected runFilter()V
    .locals 19

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getXPos()[I

    move-result-object v15

    .line 160
    .local v15, "x":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getYPos()[I

    move-result-object v16

    .line 161
    .local v16, "y":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getSize()[I

    move-result-object v13

    .line 162
    .local v13, "s":[I
    const/16 v17, 0x10

    move/from16 v0, v17

    new-array v11, v0, [I

    .line 163
    .local v11, "refRed":[I
    const/16 v17, 0x10

    move/from16 v0, v17

    new-array v10, v0, [I

    .line 164
    .local v10, "refGreen":[I
    const/16 v17, 0x10

    move/from16 v0, v17

    new-array v9, v0, [I

    .line 166
    .local v9, "refBlue":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    .line 167
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v6

    .line 168
    .local v6, "height":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object v8

    .line 169
    .local v8, "m":Landroid/graphics/Matrix;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v3, v0, [F

    .line 172
    .local v3, "cord":[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    .line 173
    const/16 v17, 0x0

    aget v18, v15, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v3, v17

    .line 174
    const/16 v17, 0x1

    aget v18, v16, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v3, v17

    .line 175
    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 176
    const/16 v17, 0x0

    aget v17, v3, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v15, v7

    .line 177
    const/16 v17, 0x1

    aget v17, v3, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v16, v7

    .line 178
    aget v17, v13, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xa0

    move/from16 v17, v0

    aput v17, v13, v7

    .line 180
    aget v17, v15, v7

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 181
    .local v4, "goodx":I
    aget v17, v16, v7

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 182
    .local v5, "goody":I
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getSourceBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    .line 183
    .local v12, "rgb":I
    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v17

    aput v17, v11, v7

    .line 184
    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v17

    aput v17, v10, v7

    .line 185
    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    aput v17, v9, v7

    .line 172
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 187
    .end local v4    # "goodx":I
    .end local v5    # "goody":I
    .end local v12    # "rgb":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getMask()[Z

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_mask([Z)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getActive()[Z

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_active([Z)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_xPos([I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_yPos([I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_size([I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getBrightness()[I

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_brightness([I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getContrast()[I

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_contrast([I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getSaturation()[I

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_saturation([I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;->getInking()[Z

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_inking([Z)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_refColorRed([I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_refColorGreen([I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->set_refColorBlue([I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mScript:Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/filtershow/filters/ScriptC_upoint;->invoke_setupUPointParams()V

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMapState:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 227
    :goto_1
    return-void

    .line 203
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->runSelectiveAdjust(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_1

    .line 206
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->hasInk()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->runSelectiveAdjustWMap(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 209
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMapState:I

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->runSelectiveAdjust(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_1

    .line 216
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->hasInk()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->runSelectiveAdjustInkOnly(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_1

    .line 220
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mWMapState:I

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->runSelectiveAdjust(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_1

    .line 201
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 62
    check-cast p1, Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterUPoint;->mParameters:Lcom/android/gallery3d/filtershow/upoint/FilterUPointRepresentation;

    .line 63
    return-void
.end method
