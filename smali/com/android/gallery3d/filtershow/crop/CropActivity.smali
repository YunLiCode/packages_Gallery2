.class public Lcom/android/gallery3d/filtershow/crop/CropActivity;
.super Landroid/app/Activity;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;,
        Lcom/android/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;
    }
.end annotation


# instance fields
.field private finalIOGuard:Z

.field private mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

.field private mCropView:Lcom/android/gallery3d/filtershow/crop/CropView;

.field private mLoadBitmapTask:Lcom/android/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

.field private mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mOriginalBounds:Landroid/graphics/RectF;

.field private mOriginalRotation:I

.field private mOutputX:I

.field private mOutputY:I

.field private mSaveButton:Landroid/view/View;

.field private mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    .line 62
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    .line 64
    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    .line 65
    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    .line 66
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 67
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    .line 68
    iput v1, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalRotation:I

    .line 69
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 70
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/android/gallery3d/filtershow/crop/CropView;

    .line 71
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mSaveButton:Landroid/view/View;

    .line 72
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->finalIOGuard:Z

    .line 352
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/filtershow/crop/CropActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/crop/CropActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->startFinishOutput()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/filtershow/crop/CropActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/crop/CropActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->getScreenImageSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/filtershow/crop/CropActivity;Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/crop/CropActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/graphics/RectF;
    .param p3, "x3"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->doneLoadBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/filtershow/crop/CropActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/crop/CropActivity;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/filtershow/crop/CropActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/crop/CropActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/filtershow/crop/CropActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/crop/CropActivity;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/filtershow/crop/CropActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/crop/CropActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/filtershow/crop/CropActivity;ZLandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/filtershow/crop/CropActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->doneBitmapIO(ZLandroid/content/Intent;)V

    return-void
.end method

.method private cannotLoadImage()V
    .locals 3

    .prologue
    .line 237
    const v2, 0x7f0b0155

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "text":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 239
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 240
    return-void
.end method

.method protected static convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 672
    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method private done()V
    .locals 0

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->finish()V

    .line 612
    return-void
.end method

.method private doneBitmapIO(ZLandroid/content/Intent;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 342
    const v1, 0x7f0a009e

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "loading":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    if-eqz p1, :cond_0

    .line 345
    const/4 v1, -0x1

    invoke-virtual {p0, v1, p2}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 349
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->done()V

    .line 350
    return-void

    .line 347
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private doneLoadBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "orientation"    # I

    .prologue
    const/4 v9, 0x0

    .line 198
    const v6, 0x7f0a009e

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 199
    .local v3, "loading":Landroid/view/View;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 201
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    .line 202
    iput p3, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalRotation:I

    .line 203
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eqz v6, :cond_3

    .line 204
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v2, v9, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 205
    .local v2, "imgBounds":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/android/gallery3d/filtershow/crop/CropView;

    invoke-virtual {v6, p1, v2, v2, p3}, Lcom/android/gallery3d/filtershow/crop/CropView;->initialize(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    .line 206
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    if-eqz v6, :cond_2

    .line 207
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getAspectX()I

    move-result v0

    .line 208
    .local v0, "aspectX":I
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getAspectY()I

    move-result v1

    .line 209
    .local v1, "aspectY":I
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getOutputX()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    .line 210
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getOutputY()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    .line 211
    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    if-lez v6, :cond_0

    .line 212
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/android/gallery3d/filtershow/crop/CropView;

    iget v7, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/filtershow/crop/CropView;->applyAspect(FF)V

    .line 215
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getSpotlightX()F

    move-result v4

    .line 216
    .local v4, "spotX":F
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getSpotlightY()F

    move-result v5

    .line 217
    .local v5, "spotY":F
    cmpl-float v6, v4, v9

    if-lez v6, :cond_1

    cmpl-float v6, v5, v9

    if-lez v6, :cond_1

    .line 218
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/android/gallery3d/filtershow/crop/CropView;

    invoke-virtual {v6, v4, v5}, Lcom/android/gallery3d/filtershow/crop/CropView;->setWallpaperSpotlight(FF)V

    .line 220
    :cond_1
    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 221
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/android/gallery3d/filtershow/crop/CropView;

    int-to-float v7, v0

    int-to-float v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/filtershow/crop/CropView;->applyAspect(FF)V

    .line 224
    .end local v0    # "aspectX":I
    .end local v1    # "aspectY":I
    .end local v4    # "spotX":F
    .end local v5    # "spotY":F
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->enableSave(Z)V

    .line 231
    .end local v2    # "imgBounds":Landroid/graphics/RectF;
    :goto_0
    return-void

    .line 226
    :cond_3
    const-string v6, "CropActivity"

    const-string v7, "could not load image for cropping"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->cannotLoadImage()V

    .line 228
    const/4 v6, 0x0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v6, v7}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 229
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->done()V

    goto :goto_0
.end method

.method private enableSave(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mSaveButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method private getBitmapCrop(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "imageBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 686
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/android/gallery3d/filtershow/crop/CropView;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/crop/CropView;->getCrop()Landroid/graphics/RectF;

    move-result-object v0

    .line 687
    .local v0, "crop":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/android/gallery3d/filtershow/crop/CropView;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/crop/CropView;->getPhoto()Landroid/graphics/RectF;

    move-result-object v1

    .line 688
    .local v1, "photo":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 689
    :cond_0
    const-string v3, "CropActivity"

    const-string v4, "could not get crop"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v2, 0x0

    .line 693
    :goto_0
    return-object v2

    .line 692
    :cond_1
    invoke-static {v0, v1, p1}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 693
    .local v2, "scaledCrop":Landroid/graphics/RectF;
    goto :goto_0
.end method

.method protected static getCroppedImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "cropBounds"    # Landroid/graphics/RectF;
    .param p2, "photoBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v5, 0x0

    .line 615
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 616
    .local v1, "imageBounds":Landroid/graphics/RectF;
    invoke-static {p1, p2, v1}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 617
    .local v0, "crop":Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 618
    const/4 v3, 0x0

    .line 622
    :goto_0
    return-object v3

    .line 620
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 621
    .local v2, "intCrop":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 622
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {p0, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method protected static getDownsampledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "max_size"    # I

    .prologue
    const/4 v5, 0x1

    .line 627
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    if-ge p1, v3, :cond_1

    .line 628
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bad argument to getDownsampledBitmap()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 630
    :cond_1
    const/4 v1, 0x0

    .line 631
    .local v1, "shifts":I
    invoke-static {p0}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 632
    .local v2, "size":I
    :goto_0
    if-le v2, p1, :cond_2

    .line 633
    add-int/lit8 v1, v1, 0x1

    .line 634
    div-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 636
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    shr-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    shr-int/2addr v4, v1

    invoke-static {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 638
    .local v0, "ret":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 639
    const/4 v0, 0x0

    .line 645
    .end local v0    # "ret":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-object v0

    .line 642
    .restart local v0    # "ret":Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {v0}, Lcom/android/gallery3d/filtershow/crop/CropMath;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v3

    if-le v3, p1, :cond_3

    .line 643
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method protected static getExtrasFromIntent(Landroid/content/Intent;)Lcom/android/gallery3d/filtershow/crop/CropExtras;
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 652
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 653
    .local v13, "extras":Landroid/os/Bundle;
    if-eqz v13, :cond_1

    .line 654
    new-instance v0, Lcom/android/gallery3d/filtershow/crop/CropExtras;

    const-string v1, "outputX"

    invoke-virtual {v13, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "outputY"

    invoke-virtual {v13, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "scale"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "scaleUpIfNeeded"

    invoke-virtual {v13, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    const-string v4, "aspectX"

    invoke-virtual {v13, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "aspectY"

    invoke-virtual {v13, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "set-as-wallpaper"

    invoke-virtual {v13, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "return-data"

    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "output"

    invoke-virtual {v13, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    const-string v9, "outputFormat"

    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "showWhenLocked"

    invoke-virtual {v13, v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "spotlightX"

    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    const-string v12, "spotlightY"

    invoke-virtual {v13, v12}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    invoke-direct/range {v0 .. v12}, Lcom/android/gallery3d/filtershow/crop/CropExtras;-><init>(IIZIIZZLandroid/net/Uri;Ljava/lang/String;ZFF)V

    .line 668
    :goto_1
    return-object v0

    :cond_0
    move v3, v10

    .line 654
    goto :goto_0

    .line 668
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "requestFormat"    # Ljava/lang/String;

    .prologue
    .line 676
    if-nez p0, :cond_1

    const-string v0, "jpg"

    .line 679
    .local v0, "outputFormat":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 680
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "png"

    :goto_1
    return-object v1

    .end local v0    # "outputFormat":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    .line 676
    goto :goto_0

    .line 680
    .restart local v0    # "outputFormat":Ljava/lang/String;
    :cond_2
    const-string v1, "jpg"

    goto :goto_1
.end method

.method private getScreenImageSize()I
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 174
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 175
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private pickImage()V
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const v1, 0x7f0b01b4

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 156
    return-void
.end method

.method private startBitmapIO(ILandroid/graphics/Bitmap;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)V
    .locals 13
    .param p1, "flags"    # I
    .param p2, "currentBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "sourceUri"    # Landroid/net/Uri;
    .param p4, "destUri"    # Landroid/net/Uri;
    .param p5, "cropBounds"    # Landroid/graphics/RectF;
    .param p6, "photoBounds"    # Landroid/graphics/RectF;
    .param p7, "currentBitmapBounds"    # Landroid/graphics/RectF;
    .param p8, "format"    # Ljava/lang/String;
    .param p9, "rotation"    # I

    .prologue
    .line 321
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    and-int/lit8 v1, p1, 0x7

    if-eqz v1, :cond_0

    .line 330
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 331
    const v1, 0x7f0b0157

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 334
    :cond_2
    const v1, 0x7f0a009e

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 335
    .local v12, "loading":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    new-instance v0, Lcom/android/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;

    iget v10, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputX:I

    iget v11, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOutputY:I

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;-><init>(Lcom/android/gallery3d/filtershow/crop/CropActivity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;III)V

    .line 338
    .local v0, "ioTask":Lcom/android/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/CropActivity$BitmapIOTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startFinishOutput()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 277
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->finalIOGuard:Z

    if-eqz v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->finalIOGuard:Z

    .line 282
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->enableSave(Z)V

    .line 283
    const/4 v4, 0x0

    .line 284
    .local v4, "destinationUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 285
    .local v1, "flags":I
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getExtraOutput()Landroid/net/Uri;

    move-result-object v4

    .line 288
    if-eqz v4, :cond_1

    .line 289
    or-int/lit8 v1, v1, 0x4

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getSetAsWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    or-int/lit8 v1, v1, 0x1

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getReturnData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    or-int/lit8 v1, v1, 0x2

    .line 299
    :cond_3
    if-nez v1, :cond_4

    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/gallery3d/filtershow/crop/CropLoader;->makeAndInsertUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 301
    if-eqz v4, :cond_4

    .line 302
    or-int/lit8 v1, v1, 0x4

    .line 305
    :cond_4
    and-int/lit8 v0, v1, 0x7

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 306
    new-instance v6, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v6, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 307
    .local v6, "photo":Landroid/graphics/RectF;
    invoke-direct {p0, v6}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->getBitmapCrop(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    .line 308
    .local v5, "crop":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    if-nez v0, :cond_5

    const/4 v8, 0x0

    :goto_1
    iget v9, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mOriginalRotation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->startBitmapIO(ILandroid/graphics/Bitmap;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getOutputFormat()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 313
    .end local v5    # "crop":Landroid/graphics/RectF;
    .end local v6    # "photo":Landroid/graphics/RectF;
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2, v0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 314
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->done()V

    goto/16 :goto_0
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->enableSave(Z)V

    .line 184
    const v1, 0x7f0a009e

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "loading":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    new-instance v1, Lcom/android/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;-><init>(Lcom/android/gallery3d/filtershow/crop/CropActivity;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    .line 187
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    .end local v0    # "loading":Landroid/view/View;
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->cannotLoadImage()V

    .line 190
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->done()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 163
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 164
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 165
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/android/gallery3d/filtershow/crop/CropView;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/crop/CropView;->configChanged()V

    .line 144
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 97
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->getExtrasFromIntent(Landroid/content/Intent;)Lcom/android/gallery3d/filtershow/crop/CropExtras;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    .line 99
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropExtras:Lcom/android/gallery3d/filtershow/crop/CropExtras;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/crop/CropExtras;->getShowWhenLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 103
    :cond_0
    const v3, 0x7f04001a

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->setContentView(I)V

    .line 104
    const v3, 0x7f0a009d

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/crop/CropView;

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mCropView:Lcom/android/gallery3d/filtershow/crop/CropView;

    .line 106
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 107
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 108
    const v3, 0x7f040028

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 110
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, "mSaveButton":Landroid/view/View;
    new-instance v3, Lcom/android/gallery3d/filtershow/crop/CropActivity$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity$1;-><init>(Lcom/android/gallery3d/filtershow/crop/CropActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 119
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 120
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/crop/CropActivity;->pickImage()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/android/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/crop/CropActivity$LoadBitmapTask;->cancel(Z)Z

    .line 137
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 138
    return-void
.end method
