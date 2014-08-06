.class public Lcom/android/photos/data/MediaCacheUtils;
.super Ljava/lang/Object;
.source "MediaCacheUtils.java"


# static fields
.field private static QUALITY:I

.field private static final TAG:Ljava/lang/String;

.field private static final mBufferPool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<[B>;"
        }
    .end annotation
.end field

.field private static mTargetPreviewSize:I

.field private static mTargetThumbnailSize:I

.field private static final sJobStub:Lcom/android/gallery3d/util/ThreadPool$JobContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/android/photos/data/MediaCacheUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/MediaCacheUtils;->TAG:Ljava/lang/String;

    .line 44
    const/16 v0, 0x50

    sput v0, Lcom/android/photos/data/MediaCacheUtils;->QUALITY:I

    .line 46
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/photos/data/MediaCacheUtils;->mBufferPool:Landroid/util/Pools$SimplePool;

    .line 48
    new-instance v0, Lcom/android/photos/data/MediaCacheUtils$1;

    invoke-direct {v0}, Lcom/android/photos/data/MediaCacheUtils$1;-><init>()V

    sput-object v0, Lcom/android/photos/data/MediaCacheUtils;->sJobStub:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    sget-object v3, Lcom/android/photos/data/MediaCacheUtils;->mBufferPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v3}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 150
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 151
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 154
    :cond_0
    const/4 v2, 0x0

    .line 156
    .local v2, "totalWritten":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_1

    .line 157
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    add-int/2addr v2, v1

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 164
    sget-object v3, Lcom/android/photos/data/MediaCacheUtils;->mBufferPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v3, v0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return v2

    .line 162
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v3

    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 164
    sget-object v4, Lcom/android/photos/data/MediaCacheUtils;->mBufferPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v4, v0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    throw v3
.end method

.method public static getTargetSize(Lcom/android/photos/data/MediaRetriever$MediaSize;)I
    .locals 1
    .param p0, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 75
    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    if-ne p0, v0, :cond_0

    sget v0, Lcom/android/photos/data/MediaCacheUtils;->mTargetThumbnailSize:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/photos/data/MediaCacheUtils;->mTargetPreviewSize:I

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0e00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/photos/data/MediaCacheUtils;->mTargetThumbnailSize:I

    .line 71
    const v1, 0x7f0e00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/photos/data/MediaCacheUtils;->mTargetPreviewSize:I

    .line 72
    return-void
.end method
