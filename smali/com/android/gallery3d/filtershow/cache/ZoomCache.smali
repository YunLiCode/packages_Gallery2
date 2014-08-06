.class public Lcom/android/gallery3d/filtershow/cache/ZoomCache;
.super Ljava/lang/Object;
.source "ZoomCache.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBounds:Landroid/graphics/Rect;

.field private mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 27
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mBounds:Landroid/graphics/Rect;

    return-void
.end method
