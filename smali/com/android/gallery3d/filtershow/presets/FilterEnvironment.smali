.class public Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;
.super Ljava/lang/Object;
.source "FilterEnvironment.java"


# instance fields
.field private bitmapCach:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachingPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

.field private mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

.field private mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field private mQuality:I

.field private mScaleFactor:F

.field private volatile mStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mStop:Z

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->bitmapCach:Ljava/util/HashMap;

    return-void
.end method

.method private calcKey(JJ)Ljava/lang/Long;
    .locals 4
    .param p1, "w"    # J
    .param p3, "h"    # J

    .prologue
    const/16 v2, 0x20

    .line 74
    shl-long v0, p1, v2

    shl-long v2, p3, v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getFilterForRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 122
    .local v0, "filter":Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 123
    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setEnvironment(Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)V

    .line 124
    iget v2, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mScaleFactor:F

    iget v3, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mQuality:I

    invoke-virtual {v0, p2, v2, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    .local v1, "ret":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setEnvironment(Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)V

    .line 126
    return-object v1
.end method

.method public cache(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->calcKey(JJ)Ljava/lang/Long;

    move-result-object v0

    .line 56
    .local v0, "key":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->bitmapCach:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 60
    int-to-long v3, p1

    int-to-long v5, p2

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->calcKey(JJ)Ljava/lang/Long;

    move-result-object v1

    .line 61
    .local v1, "key":Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->bitmapCach:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 62
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 63
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 66
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-nez v0, :cond_1

    .line 67
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    :cond_1
    return-object v0
.end method

.method public getCachingPipeline()Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mCachingPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    return-object v0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mQuality:I

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mScaleFactor:F

    return v0
.end method

.method public declared-synchronized needsStop()Z
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCachingPipeline(Lcom/android/gallery3d/filtershow/cache/CachingPipeline;)V
    .locals 0
    .param p1, "cachingPipeline"    # Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mCachingPipeline:Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    .line 135
    return-void
.end method

.method public setFiltersManager(Lcom/android/gallery3d/filtershow/filters/FiltersManager;)V
    .locals 0
    .param p1, "filtersManager"    # Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mFiltersManager:Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    .line 103
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 0
    .param p1, "imagePreset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 79
    return-void
.end method

.method public setQuality(I)V
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mQuality:I

    .line 95
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mScaleFactor:F

    .line 87
    return-void
.end method

.method public declared-synchronized setStop(Z)V
    .locals 1
    .param p1, "stop"    # Z

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->mStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
