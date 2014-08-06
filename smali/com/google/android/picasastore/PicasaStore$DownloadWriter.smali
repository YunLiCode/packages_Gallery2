.class Lcom/google/android/picasastore/PicasaStore$DownloadWriter;
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
    name = "DownloadWriter"
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
.field private mDownloadListener:Lcom/google/android/picasastore/PicasaStore$DownloadListener;

.field private mDownloadUrl:Ljava/lang/String;

.field private mId:J

.field final synthetic this$0:Lcom/google/android/picasastore/PicasaStore;


# direct methods
.method public constructor <init>(Lcom/google/android/picasastore/PicasaStore;JLjava/lang/String;Lcom/google/android/picasastore/PicasaStore$DownloadListener;)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "downloadUrl"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/google/android/picasastore/PicasaStore$DownloadListener;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->this$0:Lcom/google/android/picasastore/PicasaStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-wide p2, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mId:J

    .line 554
    iput-object p4, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mDownloadUrl:Ljava/lang/String;

    .line 555
    iput-object p5, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mDownloadListener:Lcom/google/android/picasastore/PicasaStore$DownloadListener;

    .line 556
    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .locals 13
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 561
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PicasaStore.download "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v8

    .line 562
    .local v8, "statsId":I
    const/4 v2, 0x0

    .line 563
    .local v2, "is":Ljava/io/InputStream;
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 564
    .local v4, "os":Ljava/io/OutputStream;
    iget-object v3, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mDownloadListener:Lcom/google/android/picasastore/PicasaStore$DownloadListener;

    .line 566
    .local v3, "listener":Lcom/google/android/picasastore/PicasaStore$DownloadListener;
    const/16 v10, 0x800

    :try_start_0
    new-array v0, v10, [B

    .line 567
    .local v0, "buffer":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v6

    .line 569
    .local v6, "startTime":J
    :try_start_1
    iget-object v10, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/picasastore/HttpUtils;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 570
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 571
    .local v5, "rc":I
    :goto_0
    if-lez v5, :cond_1

    .line 572
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 573
    if-eqz v3, :cond_0

    .line 574
    const/4 v10, 0x0

    invoke-interface {v3, v0, v10, v5}, Lcom/google/android/picasastore/PicasaStore$DownloadListener;->onDataAvailable([BII)V

    .line 576
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_0

    .line 579
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    .line 582
    if-eqz v3, :cond_2

    .line 583
    invoke-interface {v3}, Lcom/google/android/picasastore/PicasaStore$DownloadListener;->onDownloadComplete()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 599
    :cond_2
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 600
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 603
    const-string v10, "picasa.download.photo_video"

    invoke-static {v8, v10}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    .line 606
    .end local v0    # "buffer":[B
    .end local v5    # "rc":I
    .end local v6    # "startTime":J
    :goto_1
    return-void

    .line 579
    .restart local v0    # "buffer":[B
    .restart local v6    # "startTime":J
    :catchall_0
    move-exception v10

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-static {v11, v12}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 585
    .end local v0    # "buffer":[B
    .end local v6    # "startTime":J
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {v2}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 592
    const-string v10, "PicasaStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pipe closed early by caller? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/google/android/picasastore/PicasaStore$DownloadListener;->onDownloadAbort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 599
    :cond_3
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 600
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 603
    const-string v10, "picasa.download.photo_video"

    invoke-static {v8, v10}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto :goto_1

    .line 594
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 595
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {v2}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 596
    const-string v10, "PicasaStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to write to pipe: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/google/android/picasastore/PicasaStore$DownloadListener;->onDownloadAbort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 599
    :cond_4
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 600
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 603
    const-string v10, "picasa.download.photo_video"

    invoke-static {v8, v10}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto :goto_1

    .line 599
    .end local v9    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v10

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 600
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 603
    const-string v11, "picasa.download.photo_video"

    invoke-static {v8, v11}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v10
.end method
