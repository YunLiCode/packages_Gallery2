.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.source "ImageFilterVintage.java"


# instance fields
.field private final BACKGROUND_TEXTURE_SIZE:I

.field private m256:Landroid/support/v8/renderscript/Allocation;

.field private mBrightness:Landroid/support/v8/renderscript/Allocation;

.field private mHeight:I

.field private mLastTextureIndex:I

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

.field private mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

.field private mRetroLuxLookup:Landroid/support/v8/renderscript/Allocation;

.field private mStyle:Landroid/support/v8/renderscript/Allocation;

.field private mTexture:Landroid/support/v8/renderscript/Allocation;

.field private mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;-><init>()V

    .line 32
    const/16 v0, 0x800

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->BACKGROUND_TEXTURE_SIZE:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mLastTextureIndex:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    .line 53
    const-string v0, "Vintage"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private setupScale()V
    .locals 8

    .prologue
    const/high16 v7, 0x45000000

    const/high16 v6, 0x3fa00000

    .line 182
    iget v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mWidth:I

    int-to-float v5, v5

    div-float v3, v5, v7

    .line 183
    .local v3, "scaleX":F
    iget v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mHeight:I

    int-to-float v5, v5

    div-float v4, v5, v7

    .line 186
    .local v4, "scaleY":F
    cmpl-float v5, v3, v6

    if-gtz v5, :cond_0

    cmpl-float v5, v4, v6

    if-lez v5, :cond_1

    .line 187
    :cond_0
    div-float v0, v6, v3

    .line 188
    .local v0, "facX":F
    div-float v1, v6, v4

    .line 189
    .local v1, "facY":F
    cmpg-float v5, v0, v1

    if-gtz v5, :cond_2

    move v2, v0

    .line 191
    .local v2, "min":F
    :goto_0
    mul-float/2addr v3, v2

    .line 192
    mul-float/2addr v4, v2

    .line 195
    .end local v0    # "facX":F
    .end local v1    # "facY":F
    .end local v2    # "min":F
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_scaleX(F)V

    .line 196
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_scaleY(F)V

    .line 197
    return-void

    .restart local v0    # "facX":F
    .restart local v1    # "facY":F
    :cond_2
    move v2, v1

    .line 189
    goto :goto_0
.end method

.method private textureGetIDforIdent(I)I
    .locals 1
    .param p1, "ident"    # I

    .prologue
    const v0, 0x7f0201de

    .line 155
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    return v0

    .line 156
    :pswitch_1
    const v0, 0x7f0201d4

    goto :goto_0

    .line 157
    :pswitch_2
    const v0, 0x7f0201dc

    goto :goto_0

    .line 158
    :pswitch_3
    const v0, 0x7f0201dd

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private updateTextures()V
    .locals 5

    .prologue
    const/16 v4, 0x800

    .line 165
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mLastTextureIndex:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getTexture()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 179
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getTexture()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mLastTextureIndex:I

    .line 168
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mWidth:I

    if-ge v1, v4, :cond_1

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mHeight:I

    if-ge v1, v4, :cond_1

    .line 169
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mWidth:I

    div-int v2, v4, v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mHeight:I

    div-int v3, v4, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 171
    .local v0, "inSampleSize":I
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getTexture()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->textureGetIDforIdent(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->loadScaledResourceAlpha(II)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mTexture:Landroid/support/v8/renderscript/Allocation;

    .line 176
    .end local v0    # "inSampleSize":I
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mTexture:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_texture(Landroid/support/v8/renderscript/Allocation;)V

    .line 177
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mTexture:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_textureSizeX(F)V

    .line 178
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mTexture:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_textureSizeY(F)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getTexture()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->textureGetIDforIdent(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->loadResourceAlpha(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mTexture:Landroid/support/v8/renderscript/Allocation;

    goto :goto_1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 105
    if-nez p3, :cond_1

    .line 106
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 108
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0201e0

    invoke-static {v3, v4}, Lcom/android/gallery3d/filtershow/filters/IconUtilities;->getFXBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 111
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 113
    .local v1, "dim":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .local v2, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v7, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 117
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "dim":I
    .end local v2    # "r":Landroid/graphics/Rect;
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method protected bindScriptValues()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mWidth:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_inputWidth(J)V

    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mHeight:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_inputHeight(J)V

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;->set_brightness(Landroid/support/v8/renderscript/Allocation;)V

    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mStyle:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;->set_style(Landroid/support/v8/renderscript/Allocation;)V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLuxLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;->set_lookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLuxLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_lookup(Landroid/support/v8/renderscript/Allocation;)V

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;->set_useContrastToo(Z)V

    .line 209
    return-void
.end method

.method protected createFilter(Landroid/content/res/Resources;FI)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 125
    .local v0, "rsCtx":Landroid/support/v8/renderscript/RenderScript;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mWidth:I

    .line 126
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mHeight:I

    .line 128
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    if-nez v3, :cond_0

    .line 129
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    const v4, 0x7f08001d

    invoke-direct {v3, v0, p1, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    if-nez v3, :cond_1

    .line 134
    new-instance v3, Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    const v4, 0x7f080018

    invoke-direct {v3, v0, p1, v4}, Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    .line 140
    :cond_1
    new-instance v1, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 141
    .local v1, "tb_bool":Landroid/support/v8/renderscript/Type$Builder;
    const/16 v3, 0x100

    invoke-virtual {v1, v3}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 142
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->m256:Landroid/support/v8/renderscript/Allocation;

    .line 144
    new-instance v2, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 145
    .local v2, "tb_lookup":Landroid/support/v8/renderscript/Type$Builder;
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 146
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLuxLookup:Landroid/support/v8/renderscript/Allocation;

    .line 149
    const v3, 0x7f02000f

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->loadResourceAlpha(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    .line 150
    const v3, 0x7f0201df

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->loadResource(I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mStyle:Landroid/support/v8/renderscript/Allocation;

    .line 152
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;-><init>()V

    return-object v0
.end method

.method protected resetAllocations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 72
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mStyle:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mStyle:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 76
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mStyle:Landroid/support/v8/renderscript/Allocation;

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->m256:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->m256:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 80
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->m256:Landroid/support/v8/renderscript/Allocation;

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLuxLookup:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLuxLookup:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 84
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLuxLookup:Landroid/support/v8/renderscript/Allocation;

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mTexture:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mTexture:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 88
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mTexture:Landroid/support/v8/renderscript/Allocation;

    .line 90
    :cond_4
    return-void
.end method

.method protected resetScripts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->destroy()V

    .line 96
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;->destroy()V

    .line 100
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    .line 102
    :cond_1
    return-void
.end method

.method protected runFilter()V
    .locals 12

    .prologue
    .line 213
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    if-nez v8, :cond_0

    .line 271
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->updateTextures()V

    .line 220
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getSaturation()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42480000

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000

    sub-float v4, v8, v9

    .line 221
    .local v4, "sat":F
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    const/high16 v9, 0x3f800000

    const/high16 v10, 0x40000000

    div-float v10, v4, v10

    add-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_saturation(F)V

    .line 224
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    const v9, 0x3ea3d70a

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    invoke-virtual {v10}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getTextureStrength()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_textureStrength(F)V

    .line 225
    const/4 v3, 0x0

    .line 226
    .local v3, "off":I
    const/4 v8, 0x0

    int-to-float v6, v8

    .line 227
    .local v6, "x":F
    const/4 v8, 0x0

    int-to-float v7, v8

    .line 228
    .local v7, "y":F
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    const/high16 v9, 0x45000000

    div-float v9, v6, v9

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_textureOffsetX(F)V

    .line 229
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    const/high16 v9, 0x45000000

    div-float v9, v7, v9

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_textureOffsetY(F)V

    .line 232
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    const/high16 v9, 0x40a00000

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    invoke-virtual {v10}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getCenterSize()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x64

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000

    div-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_vignetteStrength(F)V

    .line 235
    iget v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mWidth:I

    iget v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mHeight:I

    if-lt v8, v9, :cond_1

    iget v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mWidth:I

    int-to-float v2, v8

    .line 236
    .local v2, "m":F
    :goto_1
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    iget v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v2

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_vignetteStretchFacX(F)V

    .line 237
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    iget v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v2

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_vignetteStretchFacY(F)V

    .line 239
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    const/high16 v9, 0x3f000000

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_vignetteMidPointX(F)V

    .line 240
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    const/high16 v9, 0x3f000000

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->set_vignetteMidPointY(F)V

    .line 242
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->setupScale()V

    .line 245
    const/4 v5, 0x0

    .line 247
    .local v5, "styleY":I
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getStyle()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 258
    :goto_2
    mul-int/lit8 v8, v5, 0xa

    add-int/lit8 v5, v8, 0x5

    .line 261
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    invoke-virtual {v8}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getBrightness()I

    move-result v8

    add-int/lit8 v8, v8, 0x64

    int-to-float v8, v8

    const/high16 v9, 0x43480000

    div-float v0, v8, v9

    .line 262
    .local v0, "brightnessPos":F
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000

    sub-float/2addr v9, v0

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 263
    .local v1, "brightnessPosY":I
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mBrightness:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 265
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    invoke-virtual {v8, v5}, Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;->set_styleY(I)V

    .line 266
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    invoke-virtual {v8, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;->set_brightnessY(I)V

    .line 267
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    const/high16 v9, 0x3e800000

    const/high16 v10, 0x3f400000

    iget-object v11, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    invoke-virtual {v11}, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;->getStyleStrength()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c80000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;->set_styleStrength(F)V

    .line 269
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mRetroLux:Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->m256:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/filters/ScriptC_retrolux;->forEach_createLookupTable(Landroid/support/v8/renderscript/Allocation;)V

    .line 270
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mVintage:Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/filtershow/filters/ScriptC_vintage;->forEach_vintage(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    goto/16 :goto_0

    .line 235
    .end local v0    # "brightnessPos":F
    .end local v1    # "brightnessPosY":I
    .end local v2    # "m":F
    .end local v5    # "styleY":I
    :cond_1
    iget v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mHeight:I

    int-to-float v2, v8

    goto/16 :goto_1

    .line 248
    .restart local v2    # "m":F
    .restart local v5    # "styleY":I
    :pswitch_0
    const/4 v5, 0x0

    goto :goto_2

    .line 249
    :pswitch_1
    const/16 v5, 0x9

    goto :goto_2

    .line 250
    :pswitch_2
    const/16 v5, 0xc

    goto :goto_2

    .line 251
    :pswitch_3
    const/16 v5, 0xa

    goto :goto_2

    .line 252
    :pswitch_4
    const/16 v5, 0x10

    goto :goto_2

    .line 253
    :pswitch_5
    const/16 v5, 0xe

    goto :goto_2

    .line 254
    :pswitch_6
    const/4 v5, 0x2

    goto :goto_2

    .line 255
    :pswitch_7
    const/4 v5, 0x4

    goto/16 :goto_2

    .line 256
    :pswitch_8
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 65
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterVintage;->mParameters:Lcom/android/gallery3d/filtershow/filters/FilterVintageRepresentation;

    .line 66
    return-void
.end method
