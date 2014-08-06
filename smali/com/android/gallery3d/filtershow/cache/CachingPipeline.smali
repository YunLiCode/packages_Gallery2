.class public Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
.super Ljava/lang/Object;
.source "CachingPipeline.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static volatile sRS:Landroid/support/v8/renderscript/RenderScript;

.field private static volatile sResources:Landroid/content/res/Resources;


# instance fields
.field private DEBUG:Z

.field private mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

.field private mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

.field private volatile mFiltersOnlyOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

.field private mGeometry:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

.field private volatile mHeight:I

.field private volatile mHighResPreviewScaleFactor:F

.field protected volatile mInPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

.field private volatile mName:Ljava/lang/String;

.field private volatile mOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

.field private volatile mOriginalBitmap:Landroid/graphics/Bitmap;

.field protected volatile mOutPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

.field private volatile mPreviewScaleFactor:F

.field private volatile mPreviousGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

.field private volatile mResizedOriginalBitmap:Landroid/graphics/Bitmap;

.field private volatile mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 39
    sput-object v1, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->sRS:Landroid/support/v8/renderscript/RenderScript;

    .line 40
    sput-object v1, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->sResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/filters/FiltersManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "filtersManager"    # Lcom/android/gallery3d/filtershow/filters/FiltersManager;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->DEBUG:Z

    .line 42
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .line 43
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 44
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    .line 46
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    .line 48
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 49
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 53
    iput v2, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mWidth:I

    .line 54
    iput v2, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mHeight:I

    .line 56
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mPreviousGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 57
    iput v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mPreviewScaleFactor:F

    .line 58
    iput v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mHighResPreviewScaleFactor:F

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mName:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mGeometry:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    .line 64
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .line 65
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static declared-synchronized createRenderscriptContext(Landroid/app/Activity;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 85
    const-class v1, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->sRS:Landroid/support/v8/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "CachingPipeline"

    const-string v2, "A prior RS context exists when calling setRenderScriptContext"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->destroyRenderScriptContext()V

    .line 89
    :cond_0
    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->sRS:Landroid/support/v8/renderscript/RenderScript;

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->sResources:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v1

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized destroyPixelAllocations()V
    .locals 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "CachingPipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyPixelAllocations in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mInPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mInPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mInPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOutPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOutPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOutPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 143
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mWidth:I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized destroyRenderScriptContext()V
    .locals 2

    .prologue
    .line 94
    const-class v1, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->sRS:Landroid/support/v8/renderscript/RenderScript;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->sRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    .line 97
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->sRS:Landroid/support/v8/renderscript/RenderScript;

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->sResources:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit v1

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;
    .locals 2

    .prologue
    .line 77
    const-class v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->sRS:Landroid/support/v8/renderscript/RenderScript;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 69
    const-class v0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->sResources:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getType(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)Ljava/lang/String;
    .locals 2
    .param p1, "request"    # Lcom/android/gallery3d/filtershow/cache/RenderingRequest;

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 149
    const-string v0, "ICON_RENDERING"

    .line 166
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 152
    const-string v0, "FILTERS_RENDERING"

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 155
    const-string v0, "FULL_RENDERING"

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 158
    const-string v0, "GEOMETRY_RENDERING"

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 161
    const-string v0, "PARTIAL_RENDERING"

    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 164
    const-string v0, "HIGHRES_RENDERING"

    goto :goto_0

    .line 166
    :cond_5
    const-string v0, "UNKNOWN TYPE!"

    goto :goto_0
.end method

.method private setupEnvironment(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V
    .locals 2
    .param p1, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .param p2, "highResPreview"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setCachingPipeline(Lcom/android/gallery3d/filtershow/cache/CachingPipeline;)V

    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setFiltersManager(Lcom/android/gallery3d/filtershow/filters/FiltersManager;)V

    .line 172
    if-eqz p2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    iget v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mHighResPreviewScaleFactor:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setScaleFactor(F)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setQuality(I)V

    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setStop(Z)V

    .line 180
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    iget v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mPreviewScaleFactor:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setScaleFactor(F)V

    goto :goto_0
.end method

.method private declared-synchronized updateOriginalAllocation(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z
    .locals 9
    .param p1, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .local v4, "originalBitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_1

    .line 224
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 197
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getGeometry()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-result-object v2

    .line 198
    .local v2, "geometry":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    iget-object v7, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mPreviousGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mPreviousGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2, v7}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 202
    :cond_2
    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 203
    const-string v5, "CachingPipeline"

    const-string v7, "geometry has changed"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 208
    .local v0, "RS":Landroid/support/v8/renderscript/RenderScript;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 209
    .local v1, "filtersOnlyOriginalAllocation":Landroid/support/v8/renderscript/Allocation;
    sget-object v5, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v7, 0x1

    invoke-static {v0, v4, v5, v7}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 211
    if-eqz v1, :cond_4

    .line 212
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 215
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 216
    .local v3, "originalAllocation":Landroid/support/v8/renderscript/Allocation;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {p1, v4, v5}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->applyGeometry(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    .line 217
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x1

    invoke-static {v0, v5, v7, v8}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 219
    if-eqz v3, :cond_5

    .line 220
    invoke-virtual {v3}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 223
    :cond_5
    new-instance v5, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v5, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    iput-object v5, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mPreviousGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    .line 224
    goto :goto_0

    .line 191
    .end local v0    # "RS":Landroid/support/v8/renderscript/RenderScript;
    .end local v1    # "filtersOnlyOriginalAllocation":Landroid/support/v8/renderscript/Allocation;
    .end local v2    # "geometry":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    .end local v3    # "originalAllocation":Landroid/support/v8/renderscript/Allocation;
    .end local v4    # "originalBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public declared-synchronized compute(Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)V
    .locals 10

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    const-class v2, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 353
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    if-nez v0, :cond_0

    .line 354
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :goto_0
    monitor-exit p0

    return-void

    .line 356
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 357
    const-string v0, "CachingPipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compute preset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->showFilters()V

    .line 361
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setupEnvironment(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 366
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    .line 367
    invoke-direct {p0, p2}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->updateOriginalAllocation(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    .line 369
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->getProducer()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    .line 370
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->updateProducerBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    move-object v1, v0

    .line 372
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->getProducer()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 375
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v8, v9, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->getProducer()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    .line 378
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->updateProducerBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->getProducer()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 381
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 383
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {p2, v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 384
    if-eq v1, v0, :cond_5

    .line 385
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->getProducer()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->cache(Landroid/graphics/Bitmap;)V

    .line 386
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->setProducer(Landroid/graphics/Bitmap;)V

    .line 389
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    invoke-virtual {v1, p2}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 393
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 394
    const-string v1, "CachingPipeline"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Applying type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " filters to bitmap "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " x "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ") took "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ms, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ms for the filter, on thread "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_6
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 352
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInPixelsAllocation()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mInPixelsAllocation:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getOutPixelsAllocation()Landroid/support/v8/renderscript/Allocation;
    .locals 1

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOutPixelsAllocation:Landroid/support/v8/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public needsRepaint()Z
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getDoubleBuffer()Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;

    move-result-object v0

    .line 403
    .local v0, "buffer":Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->checkRepaintNeeded()Z

    move-result v1

    return v1
.end method

.method public prepareRenderscriptAllocations(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x1

    .line 419
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 420
    .local v0, "RS":Landroid/support/v8/renderscript/RenderScript;
    const/4 v2, 0x0

    .line 421
    .local v2, "needsUpdate":Z
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOutPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mInPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mWidth:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mHeight:I

    if-eq v3, v4, :cond_3

    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->destroyPixelAllocations()V

    .line 424
    move-object v1, p1

    .line 425
    .local v1, "bitmapBuffer":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_2

    .line 426
    :cond_1
    sget-object v3, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 428
    :cond_2
    sget-object v3, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    invoke-static {v0, v1, v3, v5}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOutPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 430
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOutPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mInPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 432
    const/4 v2, 0x1

    .line 434
    .end local v1    # "bitmapBuffer":Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v0, :cond_4

    .line 435
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mInPixelsAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 437
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mWidth:I

    if-ne v3, v4, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mHeight:I

    if-eq v3, v4, :cond_6

    .line 439
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mWidth:I

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mHeight:I

    .line 441
    const/4 v2, 0x1

    .line 443
    :cond_6
    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 444
    const-string v3, "CachingPipeline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareRenderscriptAllocations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_7
    return v2
.end method

.method public declared-synchronized render(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v2, 0x1

    .line 228
    monitor-enter p0

    :try_start_0
    const-class v3, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :goto_0
    monitor-exit p0

    return-void

    .line 232
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v0

    if-eq v0, v7, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    if-nez v0, :cond_3

    .line 236
    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :cond_3
    :try_start_4
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 240
    const-string v0, "CachingPipeline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "render image of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getType(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_4
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v4

    .line 245
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v5

    if-eq v5, v7, :cond_5

    move v1, v2

    :cond_5
    invoke-direct {p0, v4, v1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setupEnvironment(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 247
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 249
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-ne v1, v9, :cond_7

    .line 250
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v0

    .line 251
    if-nez v0, :cond_6

    .line 252
    const-string v0, "CachingPipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loader not yet setup, cannot handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getType(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    monitor-exit v3

    goto/16 :goto_0

    .line 255
    :cond_6
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getDestination()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getScaleOneImageForPreset(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    if-nez v0, :cond_7

    .line 258
    const-string v0, "CachingPipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not get bitmap for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getType(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit v3

    goto/16 :goto_0

    .line 263
    :cond_7
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-ne v1, v7, :cond_8

    .line 264
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapHighres()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {v4, v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->applyGeometry(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    :cond_8
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_9

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 272
    :cond_9
    invoke-direct {p0, v4}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->updateOriginalAllocation(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    .line 275
    :cond_a
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 276
    const-string v1, "CachingPipeline"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after update, req bitmap ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ? resizeOriginal ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_b
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_11

    .line 283
    :cond_c
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 288
    :cond_d
    :goto_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-eq v1, v2, :cond_e

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-eq v1, v8, :cond_e

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-eq v1, v9, :cond_e

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-eq v1, v7, :cond_e

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_10

    .line 295
    :cond_e
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-ne v1, v8, :cond_12

    .line 296
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setQuality(I)V

    .line 303
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {v4, v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->needsStop()Z

    move-result v1

    if-nez v1, :cond_f

    .line 305
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    :cond_f
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 309
    :cond_10
    monitor-exit v3

    goto/16 :goto_0

    .line 284
    :cond_11
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 285
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v1, v0}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 297
    :cond_12
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_13

    .line 298
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setQuality(I)V

    goto :goto_2

    .line 300
    :cond_13
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setQuality(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized renderFinalImage(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    const-class v1, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    if-nez v0, :cond_0

    .line 328
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :goto_0
    monitor-exit p0

    return-object p1

    .line 330
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p2, v0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setupEnvironment(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setQuality(I)V

    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setScaleFactor(F)V

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->freeFilterResources(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 334
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {p2, p1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->applyGeometry(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    invoke-virtual {p2, v0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 336
    monitor-exit v1

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 326
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public renderGeometryIcon(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mGeometry:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mGeometry:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mGeometry:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getGeometry()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mGeometry:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    iget v1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mPreviewScaleFactor:F

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    const-class v1, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->getRenderScriptContext()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mResizedOriginalBitmap:Landroid/graphics/Bitmap;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mFiltersOnlyOriginalAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 123
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mPreviousGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 124
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mPreviewScaleFactor:F

    .line 125
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mHighResPreviewScaleFactor:F

    .line 127
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->destroyPixelAllocations()V

    .line 128
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHighResPreviewScaleFactor(F)V
    .locals 0
    .param p1, "highResPreviewScaleFactor"    # F

    .prologue
    .line 411
    iput p1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mHighResPreviewScaleFactor:F

    .line 412
    return-void
.end method

.method public setOriginal(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 184
    const-string v1, "CachingPipeline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOriginal, size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    .line 186
    .local v0, "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->setupEnvironment(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 187
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->updateOriginalAllocation(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    .line 188
    return-void
.end method

.method public setPreviewScaleFactor(F)V
    .locals 0
    .param p1, "previewScaleFactor"    # F

    .prologue
    .line 407
    iput p1, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mPreviewScaleFactor:F

    .line 408
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->setStop(Z)V

    .line 103
    return-void
.end method
