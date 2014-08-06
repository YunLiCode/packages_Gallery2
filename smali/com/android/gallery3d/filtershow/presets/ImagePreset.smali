.class public Lcom/android/gallery3d/filtershow/presets/ImagePreset;
.super Ljava/lang/Object;
.source "ImagePreset.java"


# instance fields
.field private mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

.field private mDoApplyFilters:Z

.field private mDoApplyGeometry:Z

.field private mFilters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field public final mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

.field private mHistoryName:Ljava/lang/String;

.field private mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

.field protected mIsFxPreset:Z

.field protected mName:Ljava/lang/String;

.field private mPartialRendering:Z

.field private mPartialRenderingBounds:Landroid/graphics/Rect;

.field private mPreviewImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 47
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 51
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 52
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 56
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 58
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 59
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mPartialRendering:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setup()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 6
    .param p1, "source"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 47
    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 49
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 51
    const-string v3, "Original"

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 52
    const-string v3, "Original"

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 53
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 55
    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 56
    iput-boolean v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 58
    new-instance v3, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 59
    iput-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mPartialRendering:Z

    .line 82
    :try_start_0
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 85
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 86
    iget-object v3, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 87
    .local v2, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->addFilter(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    .end local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const-string v3, "ImagePreset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception trying to clone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isFx()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 95
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 96
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getPreviewImage()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 98
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "historyName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 47
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 51
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 52
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 56
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 58
    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 59
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mPartialRendering:Z

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setup()V

    .line 71
    return-void
.end method

.method private setBorder(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 231
    return-void
.end method


# virtual methods
.method public addFilter(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 6
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v5, 0x2

    .line 389
    instance-of v3, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    if-eqz v3, :cond_1

    .line 390
    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 393
    .restart local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getPriority()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 394
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setBorder(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getPriority()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 399
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getPriority()I

    move-result v2

    .line 400
    .local v2, "type":I
    if-eqz v0, :cond_4

    .line 401
    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    .line 402
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 398
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    :cond_4
    if-ne v2, v5, :cond_3

    .line 407
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 408
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 409
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x1

    goto :goto_2

    .line 413
    .end local v2    # "type":I
    :cond_5
    if-nez v0, :cond_0

    .line 414
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    .end local v0    # "found":Z
    .end local v1    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public apply(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "environment"    # Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    .prologue
    const/4 v1, -0x1

    .line 444
    move-object v0, p1

    .line 445
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, v1, v1, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->applyFilters(Landroid/graphics/Bitmap;IILcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    invoke-virtual {p0, v0, p2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->applyBorder(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public applyBorder(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "environment"    # Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->synchronizeRepresentation()V

    .line 462
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {p2, v0, p1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->applyRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 463
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getQuality()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 464
    const-string v0, "Editor"

    const-string v1, "SaveBorder"

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 468
    :cond_0
    return-object p1
.end method

.method public applyFilters(Landroid/graphics/Bitmap;IILcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "environment"    # Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    .prologue
    .line 472
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v4, :cond_4

    .line 473
    if-gez p2, :cond_0

    .line 474
    const/4 p2, 0x0

    .line 476
    :cond_0
    const/4 v4, -0x1

    if-ne p3, v4, :cond_1

    .line 477
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result p3

    .line 479
    :cond_1
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_4

    .line 480
    const/4 v3, 0x0

    .line 481
    .local v3, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    monitor-enter v5

    .line 482
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-object v3, v0

    .line 483
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->synchronizeRepresentation()V

    .line 484
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-virtual {p4, v3, p1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->applyRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 486
    invoke-virtual {p4}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->getQuality()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 487
    const-string v4, "Editor"

    const-string v5, "SaveFilter"

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 490
    :cond_2
    invoke-virtual {p4}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->needsStop()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, p1

    .line 496
    .end local v2    # "i":I
    .end local v3    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 484
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "i":I
    .restart local v3    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 479
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    .end local v3    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_4
    move-object v1, p1

    .line 496
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public applyGeometry(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "environment"    # Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->synchronizeRepresentation()V

    .line 454
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {p2, v0, p1}, Lcom/android/gallery3d/filtershow/presets/FilterEnvironment;->applyRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 456
    :cond_0
    return-object p1
.end method

.method public canDoPartialRendering()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 532
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 550
    :goto_0
    return v3

    .line 535
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->supportsPartialRendering()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 536
    goto :goto_0

    .line 538
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getZoomOrientation()I

    move-result v3

    if-eq v3, v5, :cond_2

    move v3, v4

    .line 539
    goto :goto_0

    .line 541
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    monitor-enter v6

    .line 544
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    move-object v2, v0

    .line 545
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->supportsPartialRendering()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 547
    goto :goto_0

    .line 545
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 541
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_4
    move v3, v5

    .line 550
    goto :goto_0
.end method

.method public fillImageStateAdapter(Lcom/android/gallery3d/filtershow/state/StateAdapter;)V
    .locals 6
    .param p1, "imageStateAdapter"    # Lcom/android/gallery3d/filtershow/state/StateAdapter;

    .prologue
    .line 554
    if-nez p1, :cond_0

    .line 575
    :goto_0
    return-void

    .line 557
    :cond_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 564
    .local v4, "states":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/state/State;>;"
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 565
    .local v1, "filter":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    new-instance v3, Lcom/android/gallery3d/filtershow/state/State;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/gallery3d/filtershow/state/State;-><init>(Ljava/lang/String;)V

    .line 566
    .local v3, "state":Lcom/android/gallery3d/filtershow/state/State;
    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/state/State;->setFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 567
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 569
    .end local v1    # "filter":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .end local v3    # "state":Lcom/android/gallery3d/filtershow/state/State;
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v5, :cond_2

    .line 570
    new-instance v0, Lcom/android/gallery3d/filtershow/state/State;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/gallery3d/filtershow/state/State;-><init>(Ljava/lang/String;)V

    .line 571
    .local v0, "border":Lcom/android/gallery3d/filtershow/state/State;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/filtershow/state/State;->setFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 572
    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 574
    .end local v0    # "border":Lcom/android/gallery3d/filtershow/state/State;
    :cond_2
    invoke-virtual {p1, v4}, Lcom/android/gallery3d/filtershow/state/StateAdapter;->fill(Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public getFilterRepresentationCopyFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 6
    .param p1, "filterRepresentation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    const/4 v3, 0x0

    .line 122
    if-nez p1, :cond_1

    move-object v2, v3

    .line 144
    :cond_0
    :goto_0
    return-object v2

    .line 125
    :cond_1
    const/4 v2, 0x0

    .line 126
    .local v2, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 129
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 137
    :goto_1
    if-eqz v2, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->clone()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getPositionForRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)I

    move-result v1

    .line 132
    .local v1, "position":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    move-object v2, v3

    .line 133
    goto :goto_0

    .line 135
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    check-cast v2, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .restart local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    goto :goto_1

    .line 140
    .end local v1    # "position":I
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized getGeometry()Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    return-object v0
.end method

.method public getLastRepresentation()Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 370
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionForRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)I
    .locals 3
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 117
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 112
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getPreviewImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .locals 4
    .param p1, "filterRepresentation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 424
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    if-eqz v2, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 436
    :cond_0
    :goto_0
    return-object v1

    .line 427
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 429
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 434
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    goto :goto_0

    .line 436
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsedFilters(Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;)Ljava/util/Vector;
    .locals 5
    .param p1, "filtersManager"    # Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/filtershow/filters/ImageFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 600
    .local v3, "usedFilters":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/gallery3d/filtershow/filters/ImageFilter;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 601
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 602
    .local v2, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/filters/BaseFiltersManager;->getFilterForRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 603
    .local v0, "filter":Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v0    # "filter":Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .end local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_0
    return-object v3
.end method

.method public hasModifications()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 189
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v3

    if-nez v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v2

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 196
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 197
    .local v0, "filter":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    .end local v0    # "filter":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public historyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    return-object v0
.end method

.method public isFx()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    return v0
.end method

.method public isPanoramaSafe()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v2

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 212
    .local v1, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getPriority()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    :cond_3
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getPriority()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->isNil()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 221
    .end local v1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public removeFilter(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 3
    .param p1, "filterRepresentation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getPriority()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 375
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setBorder(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    .line 376
    const-string v1, "Remove"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 381
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 382
    const-string v1, "Remove"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z
    .locals 6
    .param p1, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    const/4 v3, 0x0

    .line 279
    if-nez p1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v3

    .line 283
    :cond_1
    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 287
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    iget-boolean v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-ne v4, v5, :cond_0

    .line 295
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    iget-object v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    :cond_2
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    iget-object v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-ne v4, v5, :cond_0

    .line 303
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    iget-object v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->equals(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    :cond_4
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    iget-boolean v5, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eq v4, v5, :cond_5

    .line 308
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 313
    :cond_5
    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v4, :cond_6

    .line 314
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 315
    iget-object v4, p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 316
    .local v0, "a":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 317
    .local v1, "b":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->same(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    .end local v0    # "a":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .end local v1    # "b":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    .end local v2    # "i":I
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public setDoApplyFilters(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 178
    return-void
.end method

.method public setDoApplyGeometry(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 174
    return-void
.end method

.method public declared-synchronized setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V
    .locals 1
    .param p1, "m"    # Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mGeoData:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->set(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 226
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->notifyGeometryChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHistoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V
    .locals 0
    .param p1, "mImageLoader"    # Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mImageLoader:Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    .line 260
    return-void
.end method

.method public setIsFx(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 243
    return-void
.end method

.method public setPartialRendering(ZLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "partialRendering"    # Z
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 578
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mPartialRendering:Z

    .line 579
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mPartialRenderingBounds:Landroid/graphics/Rect;

    .line 580
    return-void
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "previewImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 596
    return-void
.end method

.method public setup()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public showFilters()V
    .locals 6

    .prologue
    .line 357
    const-string v3, "ImagePreset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\\\\\ showFilters -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " filters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, "n":I
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 360
    .local v2, "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    const-string v3, "ImagePreset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " filter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v2    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_0
    const-string v3, "ImagePreset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/// showFilters -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " filters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method public updateFilterRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    .locals 5
    .param p1, "representation"    # Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 170
    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :goto_0
    return-void

    .line 151
    .restart local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    monitor-enter v3

    .line 152
    :try_start_0
    instance-of v2, p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    if-eqz v2, :cond_1

    .line 153
    check-cast p1, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setGeometry(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V

    .line 167
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->invalidatePreview()V

    .line 169
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getState()Lcom/android/gallery3d/filtershow/state/StateAdapter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->fillImageStateAdapter(Lcom/android/gallery3d/filtershow/state/StateAdapter;)V

    goto :goto_0

    .line 155
    .restart local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v2, v4, :cond_2

    .line 157
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mBorder:Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->updateTempParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V

    goto :goto_1

    .line 167
    .end local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 159
    .restart local p1    # "representation":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getPositionForRepresentation(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)I

    move-result v1

    .line 160
    .local v1, "position":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 161
    monitor-exit v3

    goto :goto_0

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;

    .line 164
    .local v0, "old":Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;->updateTempParametersFrom(Lcom/android/gallery3d/filtershow/filters/FilterRepresentation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
