.class public abstract Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterRS.java"


# static fields
.field public static PERF_LOGGING:Z

.field private static mGreyConvert:Lcom/android/gallery3d/filtershow/filters/ScriptC_grey;

.field private static mRScache:Landroid/support/v8/renderscript/RenderScript;


# instance fields
.field private DEBUG:Z

.field private mLastInputHeight:I

.field private mLastInputWidth:I

.field private volatile mResourcesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->PERF_LOGGING:Z

    .line 35
    sput-object v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mGreyConvert:Lcom/android/gallery3d/filtershow/filters/ScriptC_grey;

    .line 36
    sput-object v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mRScache:Landroid/support/v8/renderscript/RenderScript;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->DEBUG:Z

    .line 30
    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mLastInputWidth:I

    .line 31
    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mLastInputHeight:I

    .line 38
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mResourcesLoaded:Z

    return-void
.end method

.method protected static convertBitmap(Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 145
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    sget-object v1, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v2, 0x3

    invoke-static {v0, p0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method private static convertRGBAtoA(Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 151
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 152
    .local v0, "RS":Landroid/support/v8/renderscript/RenderScript;
    sget-object v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mRScache:Landroid/support/v8/renderscript/RenderScript;

    if-ne v0, v4, :cond_0

    sget-object v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mGreyConvert:Lcom/android/gallery3d/filtershow/filters/ScriptC_grey;

    if-nez v4, :cond_1

    .line 153
    :cond_0
    new-instance v4, Lcom/android/gallery3d/filtershow/filters/ScriptC_grey;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080012

    invoke-direct {v4, v0, v5, v6}, Lcom/android/gallery3d/filtershow/filters/ScriptC_grey;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    sput-object v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mGreyConvert:Lcom/android/gallery3d/filtershow/filters/ScriptC_grey;

    .line 155
    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mRScache:Landroid/support/v8/renderscript/RenderScript;

    .line 158
    :cond_1
    new-instance v3, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 160
    .local v3, "tb_a8":Landroid/support/v8/renderscript/Type$Builder;
    invoke-static {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->convertBitmap(Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    .line 161
    .local v2, "bitmapTemp":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    .end local v2    # "bitmapTemp":Landroid/support/v8/renderscript/Allocation;
    :goto_0
    return-object v2

    .line 165
    .restart local v2    # "bitmapTemp":Landroid/support/v8/renderscript/Allocation;
    :cond_2
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 166
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 167
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    sget-object v5, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x3

    invoke-static {v0, v4, v5, v6}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    .line 170
    .local v1, "bitmapAlloc":Landroid/support/v8/renderscript/Allocation;
    sget-object v4, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mGreyConvert:Lcom/android/gallery3d/filtershow/filters/ScriptC_grey;

    invoke-virtual {v4, v2, v1}, Lcom/android/gallery3d/filtershow/filters/ScriptC_grey;->forEach_RGBAtoA(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 171
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    move-object v2, v1

    .line 172
    goto :goto_0
.end method

.method private isResourcesLoaded()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mResourcesLoaded:Z

    return v0
.end method

.method private setResourcesLoaded(Z)V
    .locals 0
    .param p1, "resourcesLoaded"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mResourcesLoaded:Z

    .line 225
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-nez v4, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object p1

    .line 105
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    move-result-object v1

    .line 106
    .local v1, "pipeline":Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 107
    const-string v4, "ImageFilterRS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apply filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in pipeline "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 110
    .local v2, "rsc":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 111
    .local v3, "sizeChanged":Z
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mLastInputWidth:I

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mLastInputHeight:I

    if-eq v4, v5, :cond_4

    .line 114
    :cond_3
    const/4 v3, 0x1

    .line 116
    :cond_4
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->prepareRenderscriptAllocations(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->isResourcesLoaded()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_6

    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->freeResources()V

    .line 119
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->createFilter(Landroid/content/res/Resources;FI)V

    .line 120
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->setResourcesLoaded(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mLastInputWidth:I

    .line 122
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->mLastInputHeight:I

    .line 124
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->bindScriptValues()V

    .line 125
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->runFilter()V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->update(Landroid/graphics/Bitmap;)V

    .line 127
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 128
    const-string v4, "ImageFilterRS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DONE apply filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in pipeline "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/renderscript/RSIllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 130
    .end local v1    # "pipeline":Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
    .end local v2    # "rsc":Landroid/content/res/Resources;
    .end local v3    # "sizeChanged":Z
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/renderscript/RSIllegalArgumentException;
    const-string v4, "ImageFilterRS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal argument? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    .end local v0    # "e":Landroid/renderscript/RSIllegalArgumentException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    const-string v4, "ImageFilterRS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RS runtime exception ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 134
    .end local v0    # "e":Landroid/renderscript/RSRuntimeException;
    :catch_2
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->displayLowMemoryToast()V

    .line 138
    const-string v4, "ImageFilterRS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not enough memory for filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method protected abstract bindScriptValues()V
.end method

.method protected bindScriptValues(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 45
    return-void
.end method

.method protected abstract createFilter(Landroid/content/res/Resources;FI)V
.end method

.method protected createFilter(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I
    .param p4, "in"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 44
    return-void
.end method

.method public freeResources()V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->isResourcesLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->resetAllocations()V

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->setResourcesLoaded(Z)V

    goto :goto_0
.end method

.method protected getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    move-result-object v0

    .line 59
    .local v0, "pipeline":Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    return-object v1
.end method

.method protected getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    move-result-object v0

    .line 64
    .local v0, "pipeline":Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    return-object v1
.end method

.method protected getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public loadResource(I)Landroid/support/v8/renderscript/Allocation;
    .locals 5
    .param p1, "resource"    # I

    .prologue
    .line 208
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 209
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 210
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 211
    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->convertBitmap(Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    .line 215
    .local v3, "ret":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    return-object v3
.end method

.method public loadResourceAlpha(I)Landroid/support/v8/renderscript/Allocation;
    .locals 1
    .param p1, "resource"    # I

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->loadScaledResourceAlpha(II)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public loadScaledResourceAlpha(II)Landroid/support/v8/renderscript/Allocation;
    .locals 5
    .param p1, "resource"    # I
    .param p2, "inSampleSize"    # I

    .prologue
    .line 176
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 177
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 178
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 179
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 180
    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->convertRGBAtoA(Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    .line 184
    .local v3, "ret":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 185
    return-object v3
.end method

.method protected abstract resetAllocations()V
.end method

.method protected abstract resetScripts()V
.end method

.method protected run(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 0
    .param p1, "in"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "out"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 97
    return-void
.end method

.method protected abstract runFilter()V
.end method

.method protected update(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterRS;->getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 51
    return-void
.end method
