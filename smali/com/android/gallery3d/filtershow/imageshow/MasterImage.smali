.class public Lcom/android/gallery3d/filtershow/imageshow/MasterImage;
.super Ljava/lang/Object;
.source "MasterImage.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;


# static fields
.field private static sHistoryPreviewSize:F

.field private static sIconSeedSize:I

.field private static sMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;


# instance fields
.field private DEBUG:Z

.field private mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

.field private mCurrentFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

.field private mFilteredPreview:Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;

.field private mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

.field private mFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field private mGeometryListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/GeometryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

.field private mGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field private final mHandler:Landroid/os/Handler;

.field private mHighresBitmap:Landroid/graphics/Bitmap;

.field private mHistory:Lcom/android/gallery3d/filtershow/HistoryAdapter;

.field private mImageShowSize:Landroid/graphics/Point;

.field private mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field private mMaxScaleFactor:F

.field private mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalTranslation:Landroid/graphics/Point;

.field private mPartialBitmap:Landroid/graphics/Bitmap;

.field private mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field private mPreviousGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

.field private mScaleFactor:F

.field private mShowsOriginal:Z

.field private mState:Lcom/android/gallery3d/filtershow/state/StateAdapter;

.field private mSupportsHighRes:Z

.field private mTranslation:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    .line 39
    const/16 v0, 0x80

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->sIconSeedSize:I

    .line 40
    const/high16 v0, 0x43000000

    sput v0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->sHistoryPreviewSize:F

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->DEBUG:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mSupportsHighRes:Z

    .line 44
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 45
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 46
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 47
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 49
    new-instance v0, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFilteredPreview:Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;

    .line 51
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

    .line 52
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

    .line 53
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    .line 54
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    .line 56
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 57
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHistory:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 58
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mState:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    .line 60
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mObservers:Ljava/util/Vector;

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryListeners:Ljava/util/Vector;

    .line 66
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreviousGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 68
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mScaleFactor:F

    .line 69
    const/high16 v0, 0x40400000

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mMaxScaleFactor:F

    .line 70
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    .line 71
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mOriginalTranslation:Landroid/graphics/Point;

    .line 73
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    .line 79
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage$1;-><init>(Lcom/android/gallery3d/filtershow/imageshow/MasterImage;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHandler:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method public static getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;-><init>()V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    .line 103
    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    return-object v0
.end method

.method private getImageToScreenMatrix(Z)Landroid/graphics/Matrix;
    .locals 10
    .param p1, "reflectRotation"    # Z

    .prologue
    const/high16 v9, 0x40000000

    .line 348
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v0, v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 349
    .local v0, "geo":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_1

    .line 352
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 361
    :goto_0
    return-object v6

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v1

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getOriginalToScreen(ZFFFF)Landroid/graphics/Matrix;

    move-result-object v6

    .line 357
    .local v6, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getTranslation()Landroid/graphics/Point;

    move-result-object v8

    .line 358
    .local v8, "translate":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v7

    .line 359
    .local v7, "scaleFactor":F
    iget v1, v8, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 360
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v1, v9

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {v6, v7, v7, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0
.end method

.method private getScreenToImageMatrix(Z)Landroid/graphics/Matrix;
    .locals 2
    .param p1, "reflectRotation"    # Z

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImageToScreenMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v1

    .line 366
    .local v1, "m":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 367
    .local v0, "invert":Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 368
    return-object v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    .line 426
    return-void
.end method

.method private setGeometry()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 175
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    .local v2, "image":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v5, v6

    .line 180
    .local v5, "w":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v1, v6

    .line 181
    .local v1, "h":F
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v0, v6, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 182
    .local v0, "geo":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v3

    .line 183
    .local v3, "pb":Landroid/graphics/RectF;
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v6, v5, v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_0

    .line 186
    :cond_2
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v7, v7, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 187
    .local v4, "r":Landroid/graphics/RectF;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 188
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public static setMaster(Lcom/android/gallery3d/filtershow/imageshow/MasterImage;)V
    .locals 0
    .param p0, "master"    # Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    .prologue
    .line 96
    sput-object p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->sMasterImage:Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    .line 97
    return-void
.end method


# virtual methods
.method public addGeometryListener(Lcom/android/gallery3d/filtershow/imageshow/GeometryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/gallery3d/filtershow/imageshow/GeometryListener;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method public addObserver(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public available(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/android/gallery3d/filtershow/cache/RenderingRequest;

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 401
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

    .line 403
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 404
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

    .line 406
    :cond_3
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getScaleFactor()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    .line 408
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    .line 409
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->notifyObservers()V

    .line 411
    :cond_4
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 412
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    .line 413
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->notifyObservers()V

    .line 416
    :cond_5
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 418
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getOriginalImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    .line 419
    .local v0, "preset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setPreviewImage(Landroid/graphics/Bitmap;)V

    .line 420
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHistory:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCurrentFilter()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    return-object v0
.end method

.method public getCurrentFilterRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    return-object v0
.end method

.method public getDoubleBuffer()Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFilteredPreview:Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;

    return-object v0
.end method

.method public getFilteredImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFilteredPreview:Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->getConsumer()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFiltersOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFiltersOnlyBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGeometryOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryOnlyBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHighresImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHistory()Lcom/android/gallery3d/filtershow/HistoryAdapter;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHistory:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    return-object v0
.end method

.method public getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    return-object v0
.end method

.method public getLargeThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScaleFactor()F
    .locals 1

    .prologue
    .line 505
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getOriginalTranslation()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mOriginalTranslation:Landroid/graphics/Point;

    return-object v0
.end method

.method public getPartialImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public declared-synchronized getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mScaleFactor:F

    return v0
.end method

.method public getState()Lcom/android/gallery3d/filtershow/state/StateAdapter;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mState:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTranslation()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    return-object v0
.end method

.method public declared-synchronized hasModifications()Z
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->hasModifications()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasNewGeometry()V
    .locals 3

    .prologue
    .line 440
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->updatePresets(Z)V

    .line 441
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/GeometryListener;

    .line 442
    .local v1, "listener":Lcom/android/gallery3d/filtershow/imageshow/GeometryListener;
    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryListener;->geometryChanged()V

    goto :goto_0

    .line 444
    .end local v1    # "listener":Lcom/android/gallery3d/filtershow/imageshow/GeometryListener;
    :cond_0
    return-void
.end method

.method public invalidateFiltersOnly()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->updatePresets(Z)V

    .line 314
    return-void
.end method

.method public invalidateHighresPreview()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHighresBitmap:Landroid/graphics/Bitmap;

    .line 326
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->notifyObservers()V

    .line 328
    :cond_0
    return-void
.end method

.method public invalidatePartialPreview()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPartialBitmap:Landroid/graphics/Bitmap;

    .line 319
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->notifyObservers()V

    .line 321
    :cond_0
    return-void
.end method

.method public invalidatePreview()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFilteredPreview:Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/TripleBufferBitmap;->invalidate()V

    .line 332
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->invalidatePartialPreview()V

    .line 333
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->invalidateHighresPreview()V

    .line 334
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->needsUpdatePartialPreview()V

    .line 335
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->needsUpdateHighResPreview()V

    .line 336
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->getPipeline()Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->updatePreviewBuffer()V

    .line 337
    return-void
.end method

.method public needsUpdateHighResPreview()V
    .locals 3

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mSupportsHighRes:Z

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p0}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->post(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;ILcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->invalidateHighresPreview()V

    goto :goto_0
.end method

.method public needsUpdatePartialPreview()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->canDoPartialRendering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->invalidatePartialPreview()V

    .line 393
    :goto_0
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScreenToImageMatrix(Z)Landroid/graphics/Matrix;

    move-result-object v7

    .line 385
    .local v7, "m":Landroid/graphics/Matrix;
    new-instance v8, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {v8, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 386
    .local v8, "r":Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 387
    .local v6, "dest":Landroid/graphics/RectF;
    invoke-virtual {v7, v6, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 388
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 389
    .local v4, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6, v4}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 390
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v2, 0x4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v10, v10, v3, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->post(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;ILcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->invalidatePartialPreview()V

    goto :goto_0
.end method

.method public notifyGeometryChange()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 433
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public notifyObservers()V
    .locals 3

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mObservers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    .line 272
    .local v1, "observer":Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->invalidate()V

    goto :goto_0

    .line 274
    .end local v1    # "observer":Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method

.method public onHistoryItemClick(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 192
    new-instance v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHistory:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHistory:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->setCurrentPreset(I)V

    .line 195
    return-void
.end method

.method public resetTranslation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 491
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 492
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->needsUpdatePartialPreview()V

    .line 493
    return-void
.end method

.method public setActivity(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 123
    return-void
.end method

.method public setCurrentFilter(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mCurrentFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 223
    return-void
.end method

.method public setCurrentFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "currentFilterRepresentation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mCurrentFilterRepresentation:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 309
    return-void
.end method

.method public setHistoryAdapter(Lcom/android/gallery3d/filtershow/HistoryAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHistory:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    .line 207
    return-void
.end method

.method public setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V
    .locals 0
    .param p1, "loader"    # Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 215
    return-void
.end method

.method public setImageShowSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v0, p2, :cond_1

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mImageShowSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 342
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->needsUpdatePartialPreview()V

    .line 343
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->needsUpdateHighResPreview()V

    .line 345
    :cond_1
    return-void
.end method

.method public setOriginalGeometry(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "originalBitmapLarge"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v4

    iget-object v0, v4, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 242
    .local v0, "geo":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 243
    .local v3, "w":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v1, v4

    .line 244
    .local v1, "h":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5, v5, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 245
    .local v2, "r":Landroid/graphics/RectF;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 246
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getPreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 248
    return-void
.end method

.method public setOriginalTranslation(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "originalTranslation"    # Landroid/graphics/Point;

    .prologue
    .line 483
    return-void
.end method

.method public declared-synchronized setPreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Z)V
    .locals 3
    .param p1, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .param p2, "addToHistory"    # Z

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 143
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 144
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->setGeometry()V

    .line 145
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mState:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->fillImageStateAdapter(Lcom/android/gallery3d/filtershow/state/StateAdapter;)V

    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mHistory:Lcom/android/gallery3d/filtershow/HistoryAdapter;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->addHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 149
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->updatePresets(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v0, v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 151
    .local v0, "geo":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreviousGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->notifyGeometryChange()V

    .line 154
    :cond_1
    new-instance v1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreviousGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 142
    .end local v0    # "geo":Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setScaleFactor(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 453
    return-void
.end method

.method public setShowsOriginal(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 519
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mShowsOriginal:Z

    .line 520
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->notifyObservers()V

    .line 521
    return-void
.end method

.method public setStateAdapter(Lcom/android/gallery3d/filtershow/state/StateAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/gallery3d/filtershow/state/StateAdapter;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mState:Lcom/android/gallery3d/filtershow/state/StateAdapter;

    .line 211
    return-void
.end method

.method public setSupportsHighRes(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mSupportsHighRes:Z

    .line 108
    return-void
.end method

.method public setTranslation(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "translation"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 469
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mTranslation:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 470
    return-void
.end method

.method public showsOriginal()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mShowsOriginal:Z

    return v0
.end method

.method public supportsHighRes()Z
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mSupportsHighRes:Z

    return v0
.end method

.method public updatePresets(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 277
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-nez v1, :cond_2

    .line 278
    :cond_0
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 279
    .local v0, "newPreset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, v5}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setDoApplyFilters(Z)V

    .line 280
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setDoApplyGeometry(Z)V

    .line 281
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 283
    :cond_1
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 284
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mGeometryOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, p0}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->post(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;ILcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;)V

    .line 288
    .end local v0    # "newPreset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-nez v1, :cond_5

    .line 289
    :cond_3
    new-instance v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 290
    .restart local v0    # "newPreset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setDoApplyFilters(Z)V

    .line 291
    invoke-virtual {v0, v5}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setDoApplyGeometry(Z)V

    .line 292
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 294
    :cond_4
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 295
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mFiltersOnlyPreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-static {v1, v2, v4, p0}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->post(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;ILcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;)V

    .line 299
    .end local v0    # "newPreset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->invalidatePreview()V

    .line 300
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->mActivity:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->hasModifications()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->enableSave(Z)V

    .line 301
    return-void
.end method
