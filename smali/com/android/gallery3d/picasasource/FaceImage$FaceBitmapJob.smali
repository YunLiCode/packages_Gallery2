.class Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;
.super Ljava/lang/Object;
.source "FaceImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/picasasource/FaceImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceBitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/picasasource/FaceImage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/picasasource/FaceImage;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;->this$0:Lcom/android/gallery3d/picasasource/FaceImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/picasasource/FaceImage;Lcom/android/gallery3d/picasasource/FaceImage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/picasasource/FaceImage;
    .param p2, "x1"    # Lcom/android/gallery3d/picasasource/FaceImage$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;-><init>(Lcom/android/gallery3d/picasasource/FaceImage;)V

    return-void
.end method

.method private findSquareRegion(Landroid/graphics/Rect;II)V
    .locals 7
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 72
    .local v4, "w":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 73
    .local v1, "h":I
    if-eq v4, v1, :cond_0

    .line 74
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 75
    .local v2, "maxSide":I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 78
    .local v3, "side":I
    sub-int v5, v3, v4

    div-int/lit8 v0, v5, 0x2

    .line 79
    .local v0, "delta":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-ge v5, v0, :cond_1

    .line 80
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 81
    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 91
    :goto_0
    sub-int v5, v3, v1

    div-int/lit8 v0, v5, 0x2

    .line 92
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-ge v5, v0, :cond_3

    .line 93
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 94
    iput v6, p1, Landroid/graphics/Rect;->top:I

    .line 103
    .end local v0    # "delta":I
    .end local v2    # "maxSide":I
    .end local v3    # "side":I
    :cond_0
    :goto_1
    return-void

    .line 82
    .restart local v0    # "delta":I
    .restart local v2    # "maxSide":I
    .restart local v3    # "side":I
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    if-le v5, p2, :cond_2

    .line 83
    sub-int v5, p2, v3

    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 84
    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 86
    :cond_2
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 87
    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 95
    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    if-le v5, p3, :cond_4

    .line 96
    sub-int v5, p3, v3

    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 97
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 99
    :cond_4
    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 100
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v9, 0x0

    .line 112
    iget-object v10, p0, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;->this$0:Lcom/android/gallery3d/picasasource/FaceImage;

    # getter for: Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;
    invoke-static {v10}, Lcom/android/gallery3d/picasasource/FaceImage;->access$100(Lcom/android/gallery3d/picasasource/FaceImage;)Lcom/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v5

    .line 113
    .local v5, "key":J
    const/4 v1, 0x0

    .line 115
    .local v1, "content":[B
    :try_start_0
    iget-object v10, p0, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;->this$0:Lcom/android/gallery3d/picasasource/FaceImage;

    # getter for: Lcom/android/gallery3d/picasasource/FaceImage;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    invoke-static {v10}, Lcom/android/gallery3d/picasasource/FaceImage;->access$200(Lcom/android/gallery3d/picasasource/FaceImage;)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :try_start_1
    iget-object v10, p0, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;->this$0:Lcom/android/gallery3d/picasasource/FaceImage;

    # getter for: Lcom/android/gallery3d/picasasource/FaceImage;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    invoke-static {v10}, Lcom/android/gallery3d/picasasource/FaceImage;->access$200(Lcom/android/gallery3d/picasasource/FaceImage;)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v1

    .line 117
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    if-nez v1, :cond_2

    .line 119
    :try_start_2
    iget-object v10, p0, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;->this$0:Lcom/android/gallery3d/picasasource/FaceImage;

    # getter for: Lcom/android/gallery3d/picasasource/FaceImage;->mImage:Lcom/android/gallery3d/picasasource/PicasaImage;
    invoke-static {v10}, Lcom/android/gallery3d/picasasource/FaceImage;->access$300(Lcom/android/gallery3d/picasasource/FaceImage;)Lcom/android/gallery3d/picasasource/PicasaImage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/picasasource/PicasaImage;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v10

    invoke-interface {v10, p1}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapRegionDecoder;

    .line 120
    .local v2, "decoder":Landroid/graphics/BitmapRegionDecoder;
    iget-object v10, p0, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;->this$0:Lcom/android/gallery3d/picasasource/FaceImage;

    # getter for: Lcom/android/gallery3d/picasasource/FaceImage;->mImage:Lcom/android/gallery3d/picasasource/PicasaImage;
    invoke-static {v10}, Lcom/android/gallery3d/picasasource/FaceImage;->access$300(Lcom/android/gallery3d/picasasource/FaceImage;)Lcom/android/gallery3d/picasasource/PicasaImage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/picasasource/PicasaImage;->getFaces()[Lcom/android/gallery3d/data/Face;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;->this$0:Lcom/android/gallery3d/picasasource/FaceImage;

    # getter for: Lcom/android/gallery3d/picasasource/FaceImage;->mIndex:I
    invoke-static {v11}, Lcom/android/gallery3d/picasasource/FaceImage;->access$400(Lcom/android/gallery3d/picasasource/FaceImage;)I

    move-result v11

    aget-object v4, v10, v11

    .line 121
    .local v4, "face":Lcom/android/gallery3d/data/Face;
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 122
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 123
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Face;->getPosition()Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 124
    .local v8, "region":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v11

    invoke-direct {p0, v8, v10, v11}, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;->findSquareRegion(Landroid/graphics/Rect;II)V

    .line 125
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v12}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v10, v11, v12, v13}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v10

    iput v10, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 128
    invoke-static {v7}, Lcom/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 130
    invoke-virtual {v2, v8, v7}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v10, 0x5f

    invoke-static {v0, v10}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v1

    .line 132
    if-eqz v0, :cond_0

    .line 133
    iget-object v10, p0, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;->this$0:Lcom/android/gallery3d/picasasource/FaceImage;

    # getter for: Lcom/android/gallery3d/picasasource/FaceImage;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    invoke-static {v10}, Lcom/android/gallery3d/picasasource/FaceImage;->access$200(Lcom/android/gallery3d/picasasource/FaceImage;)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v11

    monitor-enter v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :try_start_3
    iget-object v10, p0, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;->this$0:Lcom/android/gallery3d/picasasource/FaceImage;

    # getter for: Lcom/android/gallery3d/picasasource/FaceImage;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    invoke-static {v10}, Lcom/android/gallery3d/picasasource/FaceImage;->access$200(Lcom/android/gallery3d/picasasource/FaceImage;)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v10

    invoke-virtual {v10, v5, v6, v1}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V

    .line 135
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v4    # "face":Lcom/android/gallery3d/data/Face;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "region":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :catchall_0
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 142
    :catch_0
    move-exception v3

    .line 143
    .local v3, "ex":Ljava/io/IOException;
    const-string v10, "FaceImage"

    const-string v11, ""

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "ex":Ljava/io/IOException;
    :cond_1
    move-object v0, v9

    .line 145
    goto :goto_0

    .line 135
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .restart local v4    # "face":Lcom/android/gallery3d/data/Face;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "region":Landroid/graphics/Rect;
    :catchall_1
    move-exception v10

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v10

    .line 140
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v4    # "face":Lcom/android/gallery3d/data/Face;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "region":Landroid/graphics/Rect;
    :cond_2
    const/4 v10, 0x0

    array-length v11, v1

    const/4 v12, 0x0

    invoke-static {p1, v1, v10, v11, v12}, Lcom/android/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/picasasource/FaceImage$FaceBitmapJob;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
