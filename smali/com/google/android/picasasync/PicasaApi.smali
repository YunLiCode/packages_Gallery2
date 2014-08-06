.class public final Lcom/google/android/picasasync/PicasaApi;
.super Ljava/lang/Object;
.source "PicasaApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaApi$EntryHandler;
    }
.end annotation


# instance fields
.field private final mBaseUrl:Ljava/lang/String;

.field private final mClient:Lcom/google/android/picasasync/GDataClient;

.field private final mOperation:Lcom/google/android/picasasync/GDataClient$Operation;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Lcom/google/android/picasasync/GDataClient$Operation;

    invoke-direct {v1}, Lcom/google/android/picasasync/GDataClient$Operation;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mOperation:Lcom/google/android/picasasync/GDataClient$Operation;

    .line 92
    new-instance v1, Lcom/google/android/picasasync/GDataClient;

    invoke-direct {v1}, Lcom/google/android/picasasync/GDataClient;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    .line 93
    const-string v1, "picasa_gdata_base_url"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "baseUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "https://picasaweb.google.com/data/feed/api/"

    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/google/android/picasasync/PicasaApi;->mBaseUrl:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "maxSide"    # I
    .param p2, "centerCropped"    # Z

    .prologue
    .line 400
    invoke-static {p0}, Lcom/google/android/picasastore/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 401
    invoke-static {p0}, Lcom/google/android/picasastore/FIFEUtil;->getImageUrlOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 402
    .local v1, "hasI":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x73

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    if-eqz p2, :cond_0

    const-string v2, "-c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "-I"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/android/picasastore/FIFEUtil;->setImageUrlOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "hasI":Z
    :goto_0
    return-object v2

    .line 408
    :cond_2
    if-eqz p2, :cond_3

    .line 409
    const-string v2, "PicasaAPI"

    const-string v3, "not a FIFE url, ignore the crop option"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_3
    invoke-static {p1, p0}, Lcom/google/android/picasastore/ImageProxyUtil;->setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static encodeUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 391
    const-string v0, "@gmail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@googlemail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 396
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAlbumPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/picasasync/PhotoCollectorJson;)I
    .locals 9
    .param p1, "album"    # Lcom/google/android/picasasync/AlbumEntry;
    .param p2, "handler"    # Lcom/google/android/picasasync/PicasaApi$EntryHandler;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "apiName"    # Ljava/lang/String;
    .param p5, "parser"    # Lcom/google/android/picasasync/PhotoCollectorJson;

    .prologue
    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PicasaApi."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 242
    .local v2, "statsId":I
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/support/v4/net/TrafficStatsCompat;->setThreadStatsTag(I)V

    .line 244
    :try_start_0
    const-string v3, "PicasaAPI"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    const-string v3, "PicasaAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for %s / %s, etag: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/google/android/picasasync/AlbumEntry;->user:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v7, p1, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mOperation:Lcom/google/android/picasasync/GDataClient$Operation;

    .line 252
    .local v1, "operation":Lcom/google/android/picasasync/GDataClient$Operation;
    iget-object v3, p1, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 253
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v3, p3, v1}, Lcom/google/android/picasasync/GDataClient;->get(Ljava/lang/String;Lcom/google/android/picasasync/GDataClient$Operation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 255
    :try_start_1
    iget v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    sparse-switch v3, :sswitch_data_0

    .line 272
    const-string v3, "PicasaAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    const/4 v3, 0x3

    .line 276
    :try_start_2
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 289
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    .end local v1    # "operation":Lcom/google/android/picasasync/GDataClient$Operation;
    :goto_0
    return v3

    .line 258
    .restart local v1    # "operation":Lcom/google/android/picasasync/GDataClient$Operation;
    :sswitch_0
    :try_start_3
    iget-object v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    iput-object v3, p1, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    .line 260
    iget-object v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-virtual {p5, v3}, Lcom/google/android/picasasync/PhotoCollectorJson;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    const/4 v3, 0x0

    .line 276
    :try_start_4
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 288
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 289
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_0

    .line 264
    :sswitch_1
    const/4 v3, 0x1

    .line 276
    :try_start_5
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 288
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 289
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_0

    .line 267
    :sswitch_2
    const/4 v3, 0x2

    .line 276
    :try_start_6
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 288
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 289
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_0

    .line 269
    :sswitch_3
    :try_start_7
    const-string v3, "PicasaAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 270
    const/4 v3, 0x5

    .line 276
    :try_start_8
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 288
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 289
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v3

    :try_start_9
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 278
    .end local v1    # "operation":Lcom/google/android/picasasync/GDataClient$Operation;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->handleInterrruptedException(Ljava/lang/Throwable;)Z

    .line 280
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v3}, Lcom/google/android/picasasync/GDataClient;->isOperationAborted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    const-string v3, "PicasaAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " aborted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 282
    const/4 v3, 0x4

    .line 288
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 289
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto/16 :goto_0

    .line 284
    :cond_1
    :try_start_b
    const-string v3, "PicasaAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 285
    const/4 v3, 0x3

    .line 288
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 289
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto/16 :goto_0

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 289
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v3

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x130 -> :sswitch_1
        0x191 -> :sswitch_2
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public abortCurrentOperation()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v0}, Lcom/google/android/picasasync/GDataClient;->abortCurrentOperation()V

    .line 104
    return-void
.end method

.method public getAlbumPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I
    .locals 6
    .param p1, "album"    # Lcom/google/android/picasasync/AlbumEntry;
    .param p2, "handler"    # Lcom/google/android/picasasync/PicasaApi$EntryHandler;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/picasasync/AlbumEntry;->user:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaApi;->encodeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/albumid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?max-results=1000&imgmax=d&thumbsize=640u&visibility=visible&v=4&alt=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&fd=shapes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&kind=photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "url":Ljava/lang/String;
    const-string v4, "getAlbumPhotos"

    new-instance v5, Lcom/google/android/picasasync/PhotoCollectorJson;

    invoke-direct {v5, p2}, Lcom/google/android/picasasync/PhotoCollectorJson;-><init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/picasasync/PicasaApi;->getAlbumPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/picasasync/PhotoCollectorJson;)I

    move-result v0

    return v0
.end method

.method public getAlbums(Lcom/google/android/picasasync/UserEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I
    .locals 13
    .param p1, "user"    # Lcom/google/android/picasasync/UserEntry;
    .param p2, "handler"    # Lcom/google/android/picasasync/PicasaApi$EntryHandler;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 108
    const-string v8, "PicasaApi.getAlbums"

    invoke-static {v8}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v3

    .line 109
    .local v3, "statsId":I
    invoke-static {v5}, Landroid/support/v4/net/TrafficStatsCompat;->setThreadStatsTag(I)V

    .line 112
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/google/android/picasasync/PicasaApi;->mBaseUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "user/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/picasasync/PicasaApi;->encodeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?max-results=1000&imgmax=d&thumbsize=640u&visibility=visible&v=4&alt=json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&fd=shapes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&kind=album"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaApi;->mOperation:Lcom/google/android/picasasync/GDataClient$Operation;

    .line 120
    .local v2, "operation":Lcom/google/android/picasasync/GDataClient$Operation;
    iget-object v8, p1, Lcom/google/android/picasasync/UserEntry;->albumsEtag:Ljava/lang/String;

    iput-object v8, v2, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 121
    const-string v8, "PicasaAPI"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 122
    const-string v8, "PicasaAPI"

    const-string v9, "getAlbums for %s, etag = %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/google/android/picasasync/UserEntry;->albumsEtag:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lcom/google/android/picasasync/GDataClient;->get(Ljava/lang/String;Lcom/google/android/picasasync/GDataClient$Operation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    iget v8, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    sparse-switch v8, :sswitch_data_0

    .line 141
    const-string v4, "PicasaAPI"

    const-string v5, "    getAlbums fail - uri: %s, status code: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    iget v9, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :try_start_2
    iget-object v4, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 160
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    move v4, v7

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "operation":Lcom/google/android/picasasync/GDataClient$Operation;
    :goto_0
    return v4

    .line 129
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "operation":Lcom/google/android/picasasync/GDataClient$Operation;
    :sswitch_0
    :try_start_3
    iget-object v5, v2, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    iput-object v5, p1, Lcom/google/android/picasasync/UserEntry;->albumsEtag:Ljava/lang/String;

    .line 130
    new-instance v5, Lcom/google/android/picasasync/AlbumCollectorJson;

    invoke-direct {v5, p2}, Lcom/google/android/picasasync/AlbumCollectorJson;-><init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V

    iget-object v6, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-virtual {v5, v6}, Lcom/google/android/picasasync/AlbumCollectorJson;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    :try_start_4
    iget-object v5, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 160
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_0

    .line 146
    :sswitch_1
    :try_start_5
    iget-object v4, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 159
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 160
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    move v4, v5

    goto :goto_0

    .line 137
    :sswitch_2
    :try_start_6
    const-string v4, "PicasaAPI"

    const-string v5, "    getAlbums fail - uri: %s, status code: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    :try_start_7
    iget-object v4, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 159
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 160
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    move v4, v6

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v4

    :try_start_8
    iget-object v5, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 149
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "operation":Lcom/google/android/picasasync/GDataClient$Operation;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_9
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->handleInterrruptedException(Ljava/lang/Throwable;)Z

    .line 151
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v4}, Lcom/google/android/picasasync/GDataClient;->isOperationAborted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    const-string v4, "PicasaAPI"

    const-string v5, "getAlbums aborted"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 153
    const/4 v4, 0x4

    .line 159
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 160
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_0

    .line 155
    :cond_1
    :try_start_a
    const-string v4, "PicasaAPI"

    const-string v5, "getAlbums fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 159
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 160
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    move v4, v7

    goto/16 :goto_0

    .line 159
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompat;->clearThreadStatsTag()V

    .line 160
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v4

    .line 127
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x130 -> :sswitch_1
        0x191 -> :sswitch_2
        0x193 -> :sswitch_2
    .end sparse-switch
.end method

.method public getUploadedPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I
    .locals 10
    .param p1, "pseudoAlbum"    # Lcom/google/android/picasasync/AlbumEntry;
    .param p2, "handler"    # Lcom/google/android/picasasync/PicasaApi$EntryHandler;

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/picasasync/AlbumEntry;->user:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaApi;->encodeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?max-results=1000&imgmax=d&thumbsize=640u&visibility=visible&v=4&alt=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&kind=photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&streamid=camera_sync_created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "baseUrl":Ljava/lang/String;
    new-instance v5, Lcom/google/android/picasasync/PhotoCollectorJson;

    invoke-direct {v5, p2}, Lcom/google/android/picasasync/PhotoCollectorJson;-><init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V

    .line 205
    .local v5, "parser":Lcom/google/android/picasasync/PhotoCollectorJson;
    const/4 v8, 0x1

    .line 206
    .local v8, "startIndex":I
    move v9, v8

    .line 207
    .local v9, "totalCount":I
    :cond_0
    :goto_0
    if-gt v8, v9, :cond_3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&start-index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "url":Ljava/lang/String;
    const-string v4, "getUploadedPhotos"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/picasasync/PicasaApi;->getAlbumPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/picasasync/PhotoCollectorJson;)I

    move-result v7

    .line 210
    .local v7, "result":I
    if-eqz v7, :cond_1

    .line 228
    .end local v3    # "url":Ljava/lang/String;
    .end local v7    # "result":I
    :goto_1
    return v7

    .line 212
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v7    # "result":I
    :cond_1
    iget v0, v5, Lcom/google/android/picasasync/PicasaJsonReaderParser;->entryCount:I

    if-gtz v0, :cond_2

    .line 214
    const-string v0, "PicasaAPI"

    const-string v1, "getUploadedPhotos: server return zero entry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v7, 0x3

    goto :goto_1

    .line 217
    :cond_2
    iget v0, v5, Lcom/google/android/picasasync/PicasaJsonReaderParser;->entryCount:I

    add-int/2addr v8, v0

    .line 218
    iget v9, v5, Lcom/google/android/picasasync/PicasaJsonReaderParser;->totalCount:I

    .line 220
    if-gt v8, v9, :cond_0

    .line 222
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    .line 223
    const-string v0, "PicasaAPI"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "PicasaAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Lcom/google/android/picasasync/PicasaJsonReaderParser;->totalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    .end local v3    # "url":Ljava/lang/String;
    .end local v7    # "result":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v0, p1}, Lcom/google/android/picasasync/GDataClient;->setAuthToken(Ljava/lang/String;)V

    .line 100
    return-void
.end method
