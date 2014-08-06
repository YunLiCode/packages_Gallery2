.class public abstract Lcom/android/photos/drawables/AutoThumbnailDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AutoThumbnailDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/graphics/drawable/Drawable;"
    }
.end annotation


# static fields
.field private static sBitmapPool:Lcom/android/photos/data/GalleryBitmapPool;

.field private static sTempStorage:[B

.field private static sThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBounds:Landroid/graphics/Rect;

.field protected mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mIsQueued:Z

.field private final mLoadBitmap:Ljava/lang/Runnable;

.field private mLock:Ljava/lang/Object;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mPaint:Landroid/graphics/Paint;

.field private mSampleSize:I

.field private final mUpdateBitmap:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 41
    invoke-static {}, Lcom/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    sput-object v0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->sBitmapPool:Lcom/android/photos/data/GalleryBitmapPool;

    .line 42
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->sTempStorage:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBounds:Landroid/graphics/Rect;

    .line 58
    iput v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mSampleSize:I

    .line 225
    new-instance v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable$1;-><init>(Lcom/android/photos/drawables/AutoThumbnailDrawable;)V

    iput-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mLoadBitmap:Ljava/lang/Runnable;

    .line 299
    new-instance v0, Lcom/android/photos/drawables/AutoThumbnailDrawable$2;

    invoke-direct {v0, p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable$2;-><init>(Lcom/android/photos/drawables/AutoThumbnailDrawable;)V

    iput-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mUpdateBitmap:Ljava/lang/Runnable;

    .line 61
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 64
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Lcom/android/photos/drawables/AutoThumbnailDrawable;->sTempStorage:[B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/drawables/AutoThumbnailDrawable;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/drawables/AutoThumbnailDrawable;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/photos/drawables/AutoThumbnailDrawable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/drawables/AutoThumbnailDrawable;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mImageWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/photos/drawables/AutoThumbnailDrawable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/drawables/AutoThumbnailDrawable;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mImageHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/photos/drawables/AutoThumbnailDrawable;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/drawables/AutoThumbnailDrawable;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->calculateSampleSizeLocked(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/photos/drawables/AutoThumbnailDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/photos/drawables/AutoThumbnailDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mIsQueued:Z

    return p1
.end method

.method static synthetic access$600()Lcom/android/photos/data/GalleryBitmapPool;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->sBitmapPool:Lcom/android/photos/data/GalleryBitmapPool;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/photos/drawables/AutoThumbnailDrawable;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/photos/drawables/AutoThumbnailDrawable;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->setBitmapLocked(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/drawables/AutoThumbnailDrawable;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mUpdateBitmap:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/photos/drawables/AutoThumbnailDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/photos/drawables/AutoThumbnailDrawable;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->updateDrawMatrixLocked()V

    return-void
.end method

.method private calculateSampleSizeLocked(II)I
    .locals 6
    .param p1, "dwidth"    # I
    .param p2, "dheight"    # I

    .prologue
    .line 156
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    iget-object v4, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 157
    .local v3, "vwidth":I
    iget-object v4, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 160
    .local v2, "vheight":I
    mul-int v4, p1, v2

    mul-int v5, v3, p2

    if-le v4, v5, :cond_0

    .line 161
    int-to-float v4, p2

    int-to-float v5, v2

    div-float v1, v4, v5

    .line 165
    .local v1, "scale":F
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 166
    .local v0, "result":I
    if-lez v0, :cond_1

    .end local v0    # "result":I
    :goto_1
    return v0

    .line 163
    .end local v1    # "scale":F
    :cond_0
    int-to-float v4, p1

    int-to-float v5, v3

    div-float v1, v4, v5

    .restart local v1    # "scale":F
    goto :goto_0

    .line 166
    .restart local v0    # "result":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private loadBitmapLocked()V
    .locals 2

    .prologue
    .line 182
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    iget-boolean v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mIsQueued:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mUpdateBitmap:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 184
    sget-object v0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->sThreadPool:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mLoadBitmap:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mIsQueued:Z

    .line 187
    :cond_0
    return-void
.end method

.method private refreshSampleSizeLocked()V
    .locals 3

    .prologue
    .line 170
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    iget-object v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mImageWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mImageHeight:I

    if-nez v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mImageWidth:I

    iget v2, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mImageHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->calculateSampleSizeLocked(II)I

    move-result v0

    .line 175
    .local v0, "sampleSize":I
    iget v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mSampleSize:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 176
    :cond_2
    iput v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mSampleSize:I

    .line 177
    invoke-direct {p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->loadBitmapLocked()V

    goto :goto_0
.end method

.method private setBitmapLocked(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 84
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-ne p1, v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->sBitmapPool:Lcom/android/photos/data/GalleryBitmapPool;

    iget-object v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 90
    :cond_1
    iput-object p1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private updateDrawMatrixLocked()V
    .locals 11

    .prologue
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    const/high16 v10, 0x3f000000

    .line 122
    iget-object v7, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    :cond_0
    iget-object v7, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 151
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 130
    .local v3, "dy":F
    iget-object v7, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 131
    .local v1, "dwidth":I
    iget-object v7, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 132
    .local v0, "dheight":I
    iget-object v7, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 133
    .local v6, "vwidth":I
    iget-object v7, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 136
    .local v5, "vheight":I
    mul-int v7, v1, v5

    mul-int v8, v6, v0

    if-le v7, v8, :cond_3

    .line 137
    int-to-float v7, v5

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 138
    .local v4, "scale":F
    int-to-float v7, v6

    int-to-float v8, v1

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    mul-float v2, v7, v10

    .line 143
    :goto_1
    const v7, 0x3f4ccccd

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .line 144
    const-string v7, "AutoThumbnailDrawable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sample size was too small! Overdrawing! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mSampleSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 150
    iget-object v7, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    add-float v8, v2, v10

    float-to-int v8, v8

    int-to-float v8, v8

    add-float v9, v3, v10

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 140
    .end local v4    # "scale":F
    :cond_3
    int-to-float v7, v6

    int-to-float v8, v1

    div-float v4, v7, v8

    .line 141
    .restart local v4    # "scale":F
    int-to-float v7, v5

    int-to-float v8, v0

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    mul-float v3, v7, v10

    goto :goto_1

    .line 145
    :cond_4
    const/high16 v7, 0x3fc00000

    cmpl-float v7, v4, v7

    if-lez v7, :cond_2

    .line 146
    const-string v7, "AutoThumbnailDrawable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Potential quality loss! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mSampleSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method protected abstract dataChangedLocked(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 113
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 114
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 119
    :cond_0
    return-void
.end method

.method protected abstract getFallbackImageStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/io/InputStream;"
        }
    .end annotation
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 200
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 195
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    .line 205
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 206
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected abstract getPreferredImageBytes(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 95
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 96
    iget-object v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 98
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->invalidateSelf()V

    .line 106
    return-void

    .line 101
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->refreshSampleSizeLocked()V

    .line 102
    invoke-direct {p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->updateDrawMatrixLocked()V

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 212
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    iget-object v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 213
    .local v0, "oldAlpha":I
    if-eq p1, v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->invalidateSelf()V

    .line 217
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 221
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    iget-object v0, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 222
    invoke-virtual {p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->invalidateSelf()V

    .line 223
    return-void
.end method

.method public setImage(Ljava/lang/Object;II)V
    .locals 2
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/android/photos/drawables/AutoThumbnailDrawable;, "Lcom/android/photos/drawables/AutoThumbnailDrawable<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->dataChangedLocked(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iput p2, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mImageWidth:I

    .line 75
    iput p3, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mImageHeight:I

    .line 76
    iput-object p1, p0, Lcom/android/photos/drawables/AutoThumbnailDrawable;->mData:Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->setBitmapLocked(Landroid/graphics/Bitmap;)V

    .line 78
    invoke-direct {p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->refreshSampleSizeLocked()V

    .line 79
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p0}, Lcom/android/photos/drawables/AutoThumbnailDrawable;->invalidateSelf()V

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
