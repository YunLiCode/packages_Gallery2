.class Lcom/google/android/picasastore/UrlDownloader$DownloadTask;
.super Ljava/lang/Object;
.source "UrlDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/UrlDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation


# instance fields
.field public cancelTimeout:J

.field public downloadFile:Ljava/io/File;

.field public downloadSize:J

.field public final downloadUrl:Ljava/lang/String;

.field public randomAccessFile:Ljava/io/RandomAccessFile;

.field public requestCount:I

.field public state:I

.field final synthetic this$0:Lcom/google/android/picasastore/UrlDownloader;


# direct methods
.method public constructor <init>(Lcom/google/android/picasastore/UrlDownloader;Ljava/lang/String;)V
    .locals 2
    .param p2, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadSize:J

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    .line 101
    iput-object p2, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 102
    return-void
.end method

.method private setFinalState(I)V
    .locals 2
    .param p1, "finalState"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    .line 125
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    # getter for: Lcom/google/android/picasastore/UrlDownloader;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/picasastore/UrlDownloader;->access$100(Lcom/google/android/picasastore/UrlDownloader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    return-void
.end method


# virtual methods
.method public releaseReadRequest()V
    .locals 6

    .prologue
    .line 111
    iget-object v1, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v1

    .line 112
    :try_start_0
    iget v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    .line 113
    iget v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->cancelTimeout:J

    .line 115
    iget v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    and-int/lit8 v0, v0, 0x1c

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 117
    iget v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    # invokes: Lcom/google/android/picasastore/UrlDownloader;->deleteSilently(Ljava/io/File;)V
    invoke-static {v0}, Lcom/google/android/picasastore/UrlDownloader;->access$000(Ljava/io/File;)V

    .line 120
    :cond_0
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestRead()V
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v1

    .line 106
    :try_start_0
    iget v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x4

    .line 132
    iget-object v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v9

    .line 133
    :try_start_0
    iget v10, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-ne v10, v7, :cond_0

    :goto_0
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 134
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v7, :cond_1

    .line 135
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->setFinalState(I)V

    .line 136
    monitor-exit v9

    .line 214
    :goto_1
    return-void

    :cond_0
    move v7, v8

    .line 133
    goto :goto_0

    .line 138
    :cond_1
    const/4 v7, 0x2

    iput v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    .line 139
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PicasaStore.download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadUrl:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v5

    .line 143
    .local v5, "statsId":I
    const/4 v1, 0x0

    .line 145
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    # getter for: Lcom/google/android/picasastore/UrlDownloader;->mController:Lcom/google/android/picasastore/UrlDownloader$Controller;
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$200(Lcom/google/android/picasastore/UrlDownloader;)Lcom/google/android/picasastore/UrlDownloader$Controller;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/picasastore/UrlDownloader$Controller;->createTempFile()Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    .line 146
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    const-string v9, "rw"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 147
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/picasastore/HttpUtils;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 148
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 151
    .local v0, "buffer":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-wide v3

    .line 153
    .local v3, "startTime":J
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 154
    .local v2, "rc":I
    :goto_2
    if-lez v2, :cond_8

    .line 155
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 156
    :try_start_3
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadSize:J

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 157
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 158
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    :try_start_4
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 165
    :try_start_5
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    # getter for: Lcom/google/android/picasastore/UrlDownloader;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$300(Lcom/google/android/picasastore/UrlDownloader;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->cancelTimeout:J

    cmp-long v7, v9, v11

    if-lez v7, :cond_7

    .line 167
    :cond_2
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->setFinalState(I)V

    .line 168
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 177
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 201
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_3

    invoke-static {v1}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 202
    :cond_3
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8

    .line 204
    :try_start_7
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v7, :cond_4

    .line 205
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_4

    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    # invokes: Lcom/google/android/picasastore/UrlDownloader;->deleteSilently(Ljava/io/File;)V
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$000(Ljava/io/File;)V

    .line 208
    :cond_4
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 211
    const-string v7, "picasa.download.photo_video"

    invoke-static {v5, v7}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 139
    .end local v0    # "buffer":[B
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "rc":I
    .end local v3    # "startTime":J
    .end local v5    # "statsId":I
    :catchall_0
    move-exception v7

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v7

    .line 158
    .restart local v0    # "buffer":[B
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "rc":I
    .restart local v3    # "startTime":J
    .restart local v5    # "statsId":I
    :catchall_1
    move-exception v7

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 177
    .end local v2    # "rc":I
    :catchall_2
    move-exception v7

    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-static {v8, v9}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    throw v7
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 192
    .end local v0    # "buffer":[B
    .end local v3    # "startTime":J
    :catch_0
    move-exception v6

    .line 193
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_c
    const-string v7, "PicasaDownloader"

    const-string v8, "download fail!"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 195
    const/16 v7, 0x8

    :try_start_d
    invoke-direct {p0, v7}, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->setFinalState(I)V

    .line 196
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 201
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_5

    invoke-static {v1}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 202
    :cond_5
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8

    .line 204
    :try_start_e
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v7, :cond_6

    .line 205
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_6

    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    # invokes: Lcom/google/android/picasastore/UrlDownloader;->deleteSilently(Ljava/io/File;)V
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$000(Ljava/io/File;)V

    .line 208
    :cond_6
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 211
    const-string v7, "picasa.download.photo_video"

    invoke-static {v5, v7}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 208
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v0    # "buffer":[B
    .restart local v2    # "rc":I
    .restart local v3    # "startTime":J
    :catchall_3
    move-exception v7

    :try_start_f
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v7

    .line 171
    :cond_7
    :try_start_10
    iget-wide v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadSize:J

    int-to-long v11, v2

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadSize:J

    .line 172
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 174
    :try_start_11
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-result v2

    goto/16 :goto_2

    .line 173
    :catchall_4
    move-exception v7

    :try_start_12
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    throw v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 177
    :cond_8
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 182
    :try_start_15
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 183
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    # getter for: Lcom/google/android/picasastore/UrlDownloader;->mController:Lcom/google/android/picasastore/UrlDownloader$Controller;
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$200(Lcom/google/android/picasastore/UrlDownloader;)Lcom/google/android/picasastore/UrlDownloader$Controller;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadUrl:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    invoke-interface {v7, v8, v9}, Lcom/google/android/picasastore/UrlDownloader$Controller;->onDownloadComplete(Ljava/lang/String;Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 189
    :goto_3
    :try_start_16
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 190
    const/4 v7, 0x4

    :try_start_17
    invoke-direct {p0, v7}, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->setFinalState(I)V

    .line 191
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 201
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_9

    invoke-static {v1}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 202
    :cond_9
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8

    .line 204
    :try_start_18
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v7, :cond_a

    .line 205
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_a

    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    # invokes: Lcom/google/android/picasastore/UrlDownloader;->deleteSilently(Ljava/io/File;)V
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$000(Ljava/io/File;)V

    .line 208
    :cond_a
    monitor-exit v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 211
    const-string v7, "picasa.download.photo_video"

    invoke-static {v5, v7}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 184
    :catch_1
    move-exception v6

    .line 186
    .restart local v6    # "t":Ljava/lang/Throwable;
    :try_start_19
    const-string v7, "PicasaDownloader"

    const-string v8, "ignore call back fail"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto :goto_3

    .line 201
    .end local v0    # "buffer":[B
    .end local v2    # "rc":I
    .end local v3    # "startTime":J
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_5
    move-exception v7

    iget v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v8, v13, :cond_b

    invoke-static {v1}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 202
    :cond_b
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8

    .line 204
    :try_start_1a
    iget v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v9, :cond_c

    .line 205
    iget-object v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    iget v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v9, v13, :cond_c

    iget-object v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    # invokes: Lcom/google/android/picasastore/UrlDownloader;->deleteSilently(Ljava/io/File;)V
    invoke-static {v9}, Lcom/google/android/picasastore/UrlDownloader;->access$000(Ljava/io/File;)V

    .line 208
    :cond_c
    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 211
    const-string v8, "picasa.download.photo_video"

    invoke-static {v5, v8}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v7

    .line 191
    .restart local v0    # "buffer":[B
    .restart local v2    # "rc":I
    .restart local v3    # "startTime":J
    :catchall_6
    move-exception v7

    :try_start_1b
    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :try_start_1c
    throw v7
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 208
    :catchall_7
    move-exception v7

    :try_start_1d
    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    throw v7

    .line 196
    .end local v0    # "buffer":[B
    .end local v2    # "rc":I
    .end local v3    # "startTime":J
    .restart local v6    # "t":Ljava/lang/Throwable;
    :catchall_8
    move-exception v7

    :try_start_1e
    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :try_start_1f
    throw v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 208
    :catchall_9
    move-exception v7

    :try_start_20
    monitor-exit v8
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    throw v7

    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_a
    move-exception v7

    :try_start_21
    monitor-exit v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    throw v7
.end method
