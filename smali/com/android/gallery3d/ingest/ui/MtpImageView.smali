.class public Lcom/android/gallery3d/ingest/ui/MtpImageView;
.super Landroid/widget/ImageView;
.source "MtpImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ingest/ui/MtpImageView$1;,
        Lcom/android/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;,
        Lcom/android/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;
    }
.end annotation


# static fields
.field private static final sFetchCompleteHandler:Lcom/android/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;

.field private static final sFetchHandler:Lcom/android/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;


# instance fields
.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mFetchDevice:Landroid/mtp/MtpDevice;

.field private mFetchLock:Ljava/lang/Object;

.field private mFetchObjectInfo:Landroid/mtp/MtpObjectInfo;

.field private mFetchPending:Z

.field private mFetchResult:Ljava/lang/Object;

.field private mGeneration:I

.field private mLastBitmapHeight:F

.field private mLastBitmapWidth:F

.field private mLastRotationDegrees:I

.field private mObjectHandle:I

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery3d/ingest/ui/MtpImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/android/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;->createOnNewThread()Lcom/android/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->sFetchHandler:Lcom/android/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;

    .line 47
    new-instance v0, Lcom/android/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;-><init>(Lcom/android/gallery3d/ingest/ui/MtpImageView$1;)V

    sput-object v0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->sFetchCompleteHandler:Lcom/android/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchPending:Z

    .line 98
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 55
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchPending:Z

    .line 98
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 60
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchPending:Z

    .line 98
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 65
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->init()V

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ingest/ui/MtpImageView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ingest/ui/MtpImageView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/ingest/ui/MtpImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ingest/ui/MtpImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchPending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ingest/ui/MtpImageView;)Landroid/mtp/MtpDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ingest/ui/MtpImageView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchDevice:Landroid/mtp/MtpDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/ingest/ui/MtpImageView;Landroid/mtp/MtpDevice;)Landroid/mtp/MtpDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ingest/ui/MtpImageView;
    .param p1, "x1"    # Landroid/mtp/MtpDevice;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchDevice:Landroid/mtp/MtpDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ingest/ui/MtpImageView;)Landroid/mtp/MtpObjectInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ingest/ui/MtpImageView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchObjectInfo:Landroid/mtp/MtpObjectInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/ingest/ui/MtpImageView;Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ingest/ui/MtpImageView;
    .param p1, "x1"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchObjectInfo:Landroid/mtp/MtpObjectInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ingest/ui/MtpImageView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ingest/ui/MtpImageView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchResult:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/ingest/ui/MtpImageView;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/ingest/ui/MtpImageView;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchResult:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ingest/ui/MtpImageView;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/ingest/ui/MtpImageView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->sFetchCompleteHandler:Lcom/android/gallery3d/ingest/ui/MtpImageView$ShowImageHandler;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->showPlaceholder()V

    .line 51
    return-void
.end method

.method private showPlaceholder()V
    .locals 1

    .prologue
    .line 69
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->setImageResource(I)V

    .line 70
    return-void
.end method

.method private updateDrawMatrix()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000

    const/high16 v9, 0x3f000000

    .line 101
    iget-object v6, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 104
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->getHeight()I

    move-result v6

    int-to-float v4, v6

    .line 105
    .local v4, "vheight":F
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->getWidth()I

    move-result v6

    int-to-float v5, v6

    .line 107
    .local v5, "vwidth":F
    iget v6, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mLastRotationDegrees:I

    rem-int/lit16 v6, v6, 0xb4

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    .line 108
    .local v2, "rotated90":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 109
    iget v1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mLastBitmapHeight:F

    .line 110
    .local v1, "dwidth":F
    iget v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mLastBitmapWidth:F

    .line 115
    .local v0, "dheight":F
    :goto_1
    cmpg-float v6, v1, v5

    if-gtz v6, :cond_4

    cmpg-float v6, v0, v4

    if-gtz v6, :cond_4

    .line 116
    const/high16 v3, 0x3f800000

    .line 120
    .local v3, "scale":F
    :goto_2
    iget-object v6, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 121
    if-eqz v2, :cond_0

    .line 122
    iget-object v6, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    neg-float v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v9

    neg-float v8, v1

    mul-float/2addr v8, v3

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 124
    iget-object v6, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mLastRotationDegrees:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 125
    iget-object v6, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    mul-float v7, v1, v3

    mul-float/2addr v7, v9

    mul-float v8, v0, v3

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 128
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    mul-float v7, v1, v3

    sub-float v7, v5, v7

    mul-float/2addr v7, v9

    mul-float v8, v0, v3

    sub-float v8, v4, v8

    mul-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 130
    if-nez v2, :cond_1

    iget v6, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mLastRotationDegrees:I

    if-lez v6, :cond_1

    .line 132
    iget-object v6, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mLastRotationDegrees:I

    int-to-float v7, v7

    div-float v8, v5, v10

    div-float v9, v4, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 134
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 135
    return-void

    .line 107
    .end local v0    # "dheight":F
    .end local v1    # "dwidth":F
    .end local v2    # "rotated90":Z
    .end local v3    # "scale":F
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 112
    .restart local v2    # "rotated90":Z
    :cond_3
    iget v1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mLastBitmapWidth:F

    .line 113
    .restart local v1    # "dwidth":F
    iget v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mLastBitmapHeight:F

    .restart local v0    # "dheight":F
    goto :goto_1

    .line 118
    :cond_4
    div-float v6, v5, v1

    div-float v7, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .restart local v3    # "scale":F
    goto :goto_2
.end method


# virtual methods
.method protected cancelLoadingAndClear()V
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchDevice:Landroid/mtp/MtpDevice;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchResult:Ljava/lang/Object;

    .line 165
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 167
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->setImageResource(I)V

    .line 168
    return-void

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected fetchMtpImageDataFromDevice(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "device"    # Landroid/mtp/MtpDevice;
    .param p2, "info"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    .line 92
    invoke-static {p1, p2}, Lcom/android/gallery3d/ingest/data/MtpBitmapFetch;->getFullsize(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->cancelLoadingAndClear()V

    .line 173
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 174
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 139
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->updateDrawMatrix()V

    .line 143
    :cond_0
    return-void
.end method

.method protected onMtpImageDataFetchedFromDevice(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 146
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;

    .line 147
    .local v0, "bitmapWithMetadata":Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    .line 148
    iget-object v1, v0, Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mLastBitmapHeight:F

    .line 149
    iget-object v1, v0, Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mLastBitmapWidth:F

    .line 150
    iget v1, v0, Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;->rotationDegrees:I

    iput v1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mLastRotationDegrees:I

    .line 151
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->updateDrawMatrix()V

    .line 155
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->setAlpha(F)V

    .line 156
    iget-object v1, v0, Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 158
    return-void

    .line 153
    :cond_0
    iget v1, v0, Lcom/android/gallery3d/ingest/data/BitmapWithMetadata;->rotationDegrees:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->setRotation(F)V

    goto :goto_0
.end method

.method public setMtpDeviceAndObjectInfo(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;I)V
    .locals 6
    .param p1, "device"    # Landroid/mtp/MtpDevice;
    .param p2, "object"    # Landroid/mtp/MtpObjectInfo;
    .param p3, "gen"    # I

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v0

    .line 74
    .local v0, "handle":I
    iget v1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mObjectHandle:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mGeneration:I

    if-ne p3, v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->cancelLoadingAndClear()V

    .line 78
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->showPlaceholder()V

    .line 79
    iput p3, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mGeneration:I

    .line 80
    iput v0, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mObjectHandle:I

    .line 81
    iget-object v2, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchLock:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_0
    iput-object p2, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchObjectInfo:Landroid/mtp/MtpObjectInfo;

    .line 83
    iput-object p1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchDevice:Landroid/mtp/MtpDevice;

    .line 84
    iget-boolean v1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchPending:Z

    if-eqz v1, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 85
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mFetchPending:Z

    .line 86
    sget-object v1, Lcom/android/gallery3d/ingest/ui/MtpImageView;->sFetchHandler:Lcom/android/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;

    sget-object v3, Lcom/android/gallery3d/ingest/ui/MtpImageView;->sFetchHandler:Lcom/android/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/ingest/ui/MtpImageView;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ingest/ui/MtpImageView$FetchImageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
