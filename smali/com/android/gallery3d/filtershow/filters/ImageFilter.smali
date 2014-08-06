.class public abstract Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.super Ljava/lang/Object;
.source "ImageFilter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

.field protected mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    .line 32
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 33
    const-string v0, "ImageFilter"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/gallery3d/filtershow/FilterShowActivity;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-object v0
.end method

.method public static resetStatics()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 46
    return-void
.end method

.method public static setActivityForMemoryToasts(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .param p0, "activity"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 41
    sput-object p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 42
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scaleFactor"    # F
    .param p3, "quality"    # I

    .prologue
    .line 76
    return-object p1
.end method

.method public displayLowMemoryToast()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->sActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilter$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter$1;-><init>(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 59
    :cond_0
    return-void
.end method

.method public freeResources()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    return-object v0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    iget-object v0, v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 94
    .local v0, "geo":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getOriginalToScreen(ZFFFF)Landroid/graphics/Matrix;

    move-result-object v6

    .line 98
    .local v6, "originalToScreen":Landroid/graphics/Matrix;
    return-object v6
.end method

.method protected native nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V
.end method

.method public setEnvironment(Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)V
    .locals 0
    .param p1, "environment"    # Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mEnvironment:Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    .line 103
    return-void
.end method

.method public abstract useRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
.end method
