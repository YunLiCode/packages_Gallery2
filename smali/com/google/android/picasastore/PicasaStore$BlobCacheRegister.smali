.class Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasastore/PicasaStore$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlobCacheRegister"
.end annotation


# instance fields
.field private final mAuxKey:[B

.field private mBaos:Ljava/io/ByteArrayOutputStream;

.field private final mFlags:I

.field private final mKey:[B

.field final synthetic this$0:Lcom/google/android/picasastore/PicasaStore;


# direct methods
.method public constructor <init>(Lcom/google/android/picasastore/PicasaStore;JIILjava/lang/String;)V
    .locals 1
    .param p2, "id"    # J
    .param p4, "cacheType"    # I
    .param p5, "flags"    # I
    .param p6, "url"    # Ljava/lang/String;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->this$0:Lcom/google/android/picasastore/PicasaStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 520
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    .line 523
    # invokes: Lcom/google/android/picasastore/PicasaStore;->makeKey(JI)[B
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/picasastore/PicasaStore;->access$100(Lcom/google/android/picasastore/PicasaStore;JI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mKey:[B

    .line 524
    if-nez p6, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mAuxKey:[B

    .line 525
    iput p5, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mFlags:I

    .line 526
    return-void

    .line 524
    :cond_0
    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onDataAvailable([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/high16 v1, 0x80000

    if-ge v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 533
    :cond_0
    return-void
.end method

.method public onDownloadAbort()V
    .locals 0

    .prologue
    .line 544
    return-void
.end method

.method public onDownloadComplete()V
    .locals 5

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/high16 v1, 0x80000

    if-ge v0, v1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->this$0:Lcom/google/android/picasastore/PicasaStore;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mKey:[B

    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mAuxKey:[B

    iget v3, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mFlags:I

    iget-object v4, p0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;->mBaos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    # invokes: Lcom/google/android/picasastore/PicasaStore;->putBlobCache([B[BI[B)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/picasastore/PicasaStore;->access$200(Lcom/google/android/picasastore/PicasaStore;[B[BI[B)V

    .line 540
    :cond_0
    return-void
.end method
