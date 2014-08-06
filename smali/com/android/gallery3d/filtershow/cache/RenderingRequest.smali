.class public Lcom/android/gallery3d/filtershow/cache/RenderingRequest;
.super Ljava/lang/Object;
.source "RenderingRequest.java"


# static fields
.field private static final mConfig:Landroid/graphics/Bitmap$Config;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBounds:Landroid/graphics/Rect;

.field private mCaller:Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;

.field private mDestination:Landroid/graphics/Rect;

.field private mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field private mIsDirect:Z

.field private mOriginalImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field private mScaleFactor:F

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mIsDirect:Z

    .line 30
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 32
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mOriginalImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 33
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mCaller:Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;

    .line 34
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mScaleFactor:F

    .line 35
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mBounds:Landroid/graphics/Rect;

    .line 36
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mDestination:Landroid/graphics/Rect;

    .line 37
    iput v2, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mType:I

    return-void
.end method

.method public static post(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;ILcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;)V
    .locals 6
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .param p2, "type"    # I
    .param p3, "caller"    # Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;

    .prologue
    const/4 v4, 0x0

    .line 49
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->post(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;ILcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 50
    return-void
.end method

.method public static post(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;ILcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "preset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .param p2, "type"    # I
    .param p3, "caller"    # Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "destination"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x5

    const/4 v7, 0x4

    .line 54
    if-eq p2, v7, :cond_0

    if-eq p2, v5, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_2

    .line 56
    :cond_1
    const-string v4, "RenderingRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "something null: source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or preset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void

    .line 60
    :cond_2
    new-instance v3, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;

    invoke-direct {v3}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;-><init>()V

    .line 61
    .local v3, "request":Lcom/android/gallery3d/filtershow/cache/RenderingRequest;
    const/4 v0, 0x0

    .line 62
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_3

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3

    const/4 v4, 0x3

    if-eq p2, v4, :cond_3

    const/4 v4, 0x6

    if-ne p2, v4, :cond_6

    .line 66
    :cond_3
    new-instance v2, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/FiltersManager;->getManager()Lcom/android/gallery3d/filtershow/filters/FiltersManager;

    move-result-object v4

    const-string v5, "Icon"

    invoke-direct {v2, v4, v5}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;-><init>(Lcom/android/gallery3d/filtershow/filters/FiltersManager;Ljava/lang/String;)V

    .line 68
    .local v2, "pipeline":Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
    invoke-virtual {v2, p0, p1}, Lcom/android/gallery3d/filtershow/cache/CachingPipeline;->renderGeometryIcon(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .end local v2    # "pipeline":Lcom/android/gallery3d/filtershow/cache/CachingPipeline;
    :cond_4
    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    new-instance v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 75
    .local v1, "passedPreset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setImageLoader(Lcom/android/gallery3d/filtershow/cache/ImageLoader;)V

    .line 76
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->setOriginalImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 77
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getImage()Lcom/android/gallery3d/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/MasterImage;->getScaleFactor()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->setScaleFactor(F)V

    .line 79
    if-ne p2, v7, :cond_5

    .line 80
    invoke-virtual {v3, p4}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->setBounds(Landroid/graphics/Rect;)V

    .line 81
    invoke-virtual {v3, p5}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->setDestination(Landroid/graphics/Rect;)V

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v1, v4, p4}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->setPartialRendering(ZLandroid/graphics/Rect;)V

    .line 85
    :cond_5
    invoke-virtual {v3, v1}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 86
    invoke-virtual {v3, p2}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->setType(I)V

    .line 87
    invoke-virtual {v3, p3}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->setCaller(Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;)V

    .line 88
    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->post()V

    goto :goto_0

    .line 69
    .end local v1    # "passedPreset":Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    :cond_6
    if-eq p2, v7, :cond_4

    if-eq p2, v5, :cond_4

    .line 70
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDestination()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mDestination:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public getOriginalImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mOriginalImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mScaleFactor:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mType:I

    return v0
.end method

.method public markAvailable()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mCaller:Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mCaller:Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;->available(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)V

    goto :goto_0
.end method

.method public post()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->getPipeline()Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/cache/FilteringPipeline;->postRenderingRequest(Lcom/android/gallery3d/filtershow/cache/RenderingRequest;)V

    .line 93
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 117
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mBounds:Landroid/graphics/Rect;

    .line 145
    return-void
.end method

.method public setCaller(Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;)V
    .locals 0
    .param p1, "caller"    # Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mCaller:Lcom/android/gallery3d/filtershow/cache/RenderingRequestCaller;

    .line 137
    return-void
.end method

.method public setDestination(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "destination"    # Landroid/graphics/Rect;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mDestination:Landroid/graphics/Rect;

    .line 161
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 0
    .param p1, "imagePreset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 125
    return-void
.end method

.method public setOriginalImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 0
    .param p1, "originalImagePreset"    # Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mOriginalImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 169
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mScaleFactor:F

    .line 149
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/android/gallery3d/filtershow/cache/RenderingRequest;->mType:I

    .line 133
    return-void
.end method
