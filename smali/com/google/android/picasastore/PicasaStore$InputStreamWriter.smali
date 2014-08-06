.class Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputStreamWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mId:J

.field private mInputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/google/android/picasastore/PicasaStore;


# direct methods
.method public constructor <init>(Lcom/google/android/picasastore/PicasaStore;JLjava/io/InputStream;)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;->this$0:Lcom/google/android/picasastore/PicasaStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-wide p2, p0, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;->mId:J

    .line 615
    iput-object p4, p0, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;->mInputStream:Ljava/io/InputStream;

    .line 616
    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .locals 10
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 621
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PicasaStore.download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v5

    .line 623
    .local v5, "statsId":I
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;->mInputStream:Ljava/io/InputStream;

    .line 624
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 626
    .local v3, "os":Ljava/io/OutputStream;
    const/16 v7, 0x800

    :try_start_0
    new-array v0, v7, [B

    .line 627
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 628
    .local v4, "rc":I
    :goto_0
    if-lez v4, :cond_0

    .line 629
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 630
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    goto :goto_0

    .line 641
    :cond_0
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 642
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 643
    invoke-static {v5}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    .line 645
    .end local v0    # "buffer":[B
    .end local v4    # "rc":I
    :goto_1
    return-void

    .line 632
    :catch_0
    move-exception v1

    .line 637
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v7, "PicasaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pipe closed early by caller? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 642
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 643
    invoke-static {v5}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_1

    .line 638
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 639
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v7, "PicasaStore"

    const-string v8, "fail to write to pipe"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 641
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 642
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 643
    invoke-static {v5}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_1

    .line 641
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 642
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 643
    invoke-static {v5}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v7
.end method
