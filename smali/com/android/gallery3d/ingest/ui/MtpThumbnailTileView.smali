.class public Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;
.super Lcom/android/gallery3d/ingest/ui/MtpImageView;
.source "MtpThumbnailTileView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mForegroundPaint:Landroid/graphics/Paint;

.field private mIsChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ingest/ui/MtpImageView;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ingest/ui/MtpImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ingest/ui/MtpImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0}, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->init()V

    .line 56
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->mForegroundPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected cancelLoadingAndClear()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->cancelLoadingAndClear()V

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/gallery3d/ingest/data/MtpBitmapFetch;->recycleThumbnail(Landroid/graphics/Bitmap;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->mBitmap:Landroid/graphics/Bitmap;

    .line 105
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->draw(Landroid/graphics/Canvas;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 81
    :cond_0
    return-void
.end method

.method protected fetchMtpImageDataFromDevice(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "device"    # Landroid/mtp/MtpDevice;
    .param p2, "info"    # Landroid/mtp/MtpObjectInfo;

    .prologue
    .line 66
    invoke-static {p1, p2}, Lcom/android/gallery3d/ingest/data/MtpBitmapFetch;->getThumbnail(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->mIsChecked:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p1}, Lcom/android/gallery3d/ingest/ui/MtpImageView;->onMeasure(II)V

    .line 62
    return-void
.end method

.method protected onMtpImageDataFetchedFromDevice(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 71
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "result":Ljava/lang/Object;
    iput-object p1, p0, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->mBitmap:Landroid/graphics/Bitmap;

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->mIsChecked:Z

    .line 91
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ingest/ui/MtpThumbnailTileView;->setChecked(Z)V

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
