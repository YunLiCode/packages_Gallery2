.class public Lcom/google/android/picasastore/PicasaStoreFacade;
.super Ljava/lang/Object;
.source "PicasaStoreFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/PicasaStoreFacade$DummyService;,
        Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    }
.end annotation


# static fields
.field private static sCacheDir:Ljava/io/File;

.field private static sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;

.field private static sNetworkReceiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sPrefetchVersionChecked:Z


# instance fields
.field private mAlbumCoversUri:Landroid/net/Uri;

.field private mAuthority:Ljava/lang/String;

.field private mCachedFingerprintUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private mFingerprintUri:Landroid/net/Uri;

.field private mLocalInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

.field private mMasterInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

.field private mPhotosUri:Landroid/net/Uri;

.field private mRecalculateFingerprintUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mContext:Landroid/content/Context;

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->updatePicasaSyncInfo(Z)V

    .line 139
    return-void
.end method

.method public static broadcastOperationReport(Ljava/lang/String;JJIJJ)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "totalTime"    # J
    .param p3, "netTime"    # J
    .param p5, "transactionCount"    # I
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J

    .prologue
    .line 288
    sget-object v2, Lcom/google/android/picasastore/PicasaStoreFacade;->sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/picasastore/PicasaStoreFacade;->sNetworkReceiver:Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    sget-object v2, Lcom/google/android/picasastore/PicasaStoreFacade;->sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;

    iget-object v0, v2, Lcom/google/android/picasastore/PicasaStoreFacade;->mContext:Landroid/content/Context;

    .line 291
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/google/android/picasastore/PicasaStoreFacade;->sNetworkReceiver:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.google.android.picasastore.op_report"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v2, "op_name"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v2, "total_time"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 295
    const-string v2, "net_duration"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 296
    const-string v2, "transaction_count"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v2, "sent_bytes"

    invoke-virtual {v1, v2, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 298
    const-string v2, "received_bytes"

    invoke-virtual {v1, v2, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static declared-synchronized checkPrefetchVersion()V
    .locals 18

    .prologue
    .line 365
    const-class v16, Lcom/google/android/picasastore/PicasaStoreFacade;

    monitor-enter v16

    :try_start_0
    sget-boolean v15, Lcom/google/android/picasastore/PicasaStoreFacade;->sPrefetchVersionChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_1

    .line 392
    .local v13, "root":Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v16

    return-void

    .line 367
    .end local v13    # "root":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheDirectory()Ljava/io/File;

    move-result-object v13

    .line 368
    .restart local v13    # "root":Ljava/io/File;
    if-eqz v13, :cond_0

    .line 370
    const-string v7, "picasa-prefetch-cache-version"

    .line 371
    .local v7, "key":Ljava/lang/String;
    const/4 v11, 0x1

    .line 372
    .local v11, "prefetchVersion":I
    new-instance v6, Lcom/google/android/picasastore/VersionInfo;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "prefetch_version.info"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Lcom/google/android/picasastore/VersionInfo;-><init>(Ljava/lang/String;)V

    .line 374
    .local v6, "info":Lcom/google/android/picasastore/VersionInfo;
    const-string v15, "picasa-prefetch-cache-version"

    invoke-virtual {v6, v15}, Lcom/google/android/picasastore/VersionInfo;->getVersion(Ljava/lang/String;)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    .line 377
    const-string v12, "picasa--"

    .line 378
    .local v12, "prefix":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v1    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v8, :cond_4

    aget-object v3, v1, v5

    .line 379
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_3

    .line 378
    .end local v5    # "i$":I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 380
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 381
    .local v10, "name":Ljava/lang/String;
    const-string v15, "picasa--"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 382
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "arr$":[Ljava/io/File;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v9, :cond_2

    aget-object v14, v2, v4

    .line 383
    .local v14, "t":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 382
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 387
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v14    # "t":Ljava/io/File;
    .restart local v5    # "i$":I
    :cond_4
    const-string v15, "picasa-prefetch-cache-version"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v15, v0}, Lcom/google/android/picasastore/VersionInfo;->setVersion(Ljava/lang/String;I)V

    .line 388
    invoke-virtual {v6}, Lcom/google/android/picasastore/VersionInfo;->sync()V

    .line 391
    .end local v5    # "i$":I
    .end local v12    # "prefix":Ljava/lang/String;
    :cond_5
    const/4 v15, 0x1

    sput-boolean v15, Lcom/google/android/picasastore/PicasaStoreFacade;->sPrefetchVersionChecked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    .end local v6    # "info":Lcom/google/android/picasastore/VersionInfo;
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "prefetchVersion":I
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method public static convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "maxSide"    # I
    .param p2, "centerCropped"    # Z

    .prologue
    .line 434
    invoke-static {p0}, Lcom/google/android/picasastore/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    invoke-static {p0}, Lcom/google/android/picasastore/FIFEUtil;->getImageUrlOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 436
    .local v1, "hasI":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x73

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    if-eqz p2, :cond_0

    const-string v2, "-c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "-I"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/android/picasastore/FIFEUtil;->setImageUrlOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "hasI":Z
    :goto_0
    return-object v2

    .line 442
    :cond_2
    if-eqz p2, :cond_3

    .line 443
    const-string v2, "PicasaStore"

    const-string v3, "not a FIFE url, ignore the crop option"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_3
    invoke-static {p1, p0}, Lcom/google/android/picasastore/ImageProxyUtil;->setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static createCacheFile(JLjava/lang/String;)Ljava/io/File;
    .locals 12
    .param p0, "photoId"    # J
    .param p2, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 332
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheDirectory()Ljava/io/File;

    move-result-object v7

    .line 333
    .local v7, "root":Ljava/io/File;
    if-nez v7, :cond_1

    move-object v0, v8

    .line 361
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "cacheFileName":Ljava/lang/String;
    const-wide/16 v9, 0xa

    rem-long v9, p0, v9

    long-to-int v2, v9

    .line 339
    .local v2, "dirIndex":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "picasa--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "folderName":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v9, 0x5

    if-ge v6, v9, :cond_4

    .line 348
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 349
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 350
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    .local v0, "cacheFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 353
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_0

    .line 358
    .end local v0    # "cacheFile":Ljava/io/File;
    :cond_3
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "e"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 347
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 354
    .restart local v0    # "cacheFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 355
    .local v3, "e":Ljava/io/IOException;
    const-string v9, "PicasaStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is full: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "folder":Ljava/io/File;
    :cond_4
    move-object v0, v8

    .line 361
    goto/16 :goto_0
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const-class v1, Lcom/google/android/picasastore/PicasaStoreFacade;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/picasastore/PicasaStoreFacade;->sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/google/android/picasastore/PicasaStoreFacade;

    invoke-direct {v0, p0}, Lcom/google/android/picasastore/PicasaStoreFacade;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasastore/PicasaStoreFacade;->sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;

    .line 129
    :cond_0
    sget-object v0, Lcom/google/android/picasastore/PicasaStoreFacade;->sInstance:Lcom/google/android/picasastore/PicasaStoreFacade;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "albumId"    # J
    .param p2, "thumbnailUrl"    # Ljava/lang/String;
    .param p3, "ext"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 420
    .local v0, "root":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 421
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "picasa_covers/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAlbumCoverKey(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAlbumCoverKey(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "albumId"    # J
    .param p2, "thumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getCacheDirectory()Ljava/io/File;
    .locals 7

    .prologue
    .line 311
    const-class v4, Lcom/google/android/picasastore/PicasaStoreFacade;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    if-nez v3, :cond_1

    .line 312
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 314
    .local v2, "root":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v5, "cache/com.google.android.googlephotos"

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    .line 315
    sget-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    .local v1, "nomedia":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v1    # "nomedia":Ljava/io/File;
    :cond_1
    :goto_0
    :try_start_2
    sget-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v3

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "PicasaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to create \'.nomedia\' in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v3, 0x0

    sput-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 324
    :cond_2
    :try_start_4
    const-string v3, "PicasaStore"

    const-string v5, "fail to create cache dir in external storage"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v3, 0x0

    sput-object v3, Lcom/google/android/picasastore/PicasaStoreFacade;->sCacheDir:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static getCacheFile(JLjava/lang/String;)Ljava/io/File;
    .locals 10
    .param p0, "photoId"    # J
    .param p2, "ext"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 395
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheDirectory()Ljava/io/File;

    move-result-object v6

    .line 396
    .local v6, "root":Ljava/io/File;
    if-nez v6, :cond_1

    move-object v0, v7

    .line 415
    :cond_0
    :goto_0
    return-object v0

    .line 399
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "cacheFileName":Ljava/lang/String;
    const-wide/16 v8, 0xa

    rem-long v8, p0, v8

    long-to-int v2, v8

    .line 401
    .local v2, "dirIndex":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "picasa--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "folderName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v8, 0x5

    if-ge v5, v8, :cond_4

    .line 404
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 405
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v0, v7

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 407
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 408
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 412
    .end local v0    # "cacheFile":Ljava/io/File;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v3    # "folder":Ljava/io/File;
    :cond_4
    move-object v0, v7

    .line 415
    goto :goto_0
.end method

.method private getPicasaStoreInfo(Landroid/content/pm/ServiceInfo;)Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    .locals 7
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 179
    iget-boolean v4, p1, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    .line 180
    :cond_0
    const-string v4, "PicasaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore disabled picasa sync adapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-object v3

    .line 184
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 185
    .local v1, "metadata":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 186
    const-string v4, "PicasaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing metadata: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_2
    const-string v4, "com.google.android.picasastore.priority"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 191
    .local v2, "priority":I
    const-string v4, "com.google.android.picasastore.authority"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "authority":Ljava/lang/String;
    if-eq v2, v5, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 194
    :cond_3
    const-string v4, "PicasaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing required metadata info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_4
    new-instance v3, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v2}, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateAuthority(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "initialize"    # Z

    .prologue
    .line 242
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 244
    :cond_0
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mAuthority:Ljava/lang/String;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 246
    .local v0, "baseUri":Landroid/net/Uri;
    const-string v1, "photos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mPhotosUri:Landroid/net/Uri;

    .line 248
    const-string v1, "fingerprint"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mFingerprintUri:Landroid/net/Uri;

    .line 250
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mFingerprintUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "force_recalculate"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mRecalculateFingerprintUri:Landroid/net/Uri;

    .line 252
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mFingerprintUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "cache_only"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mCachedFingerprintUri:Landroid/net/Uri;

    .line 254
    const-string v1, "albumcovers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mAlbumCoversUri:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public getAlbumCoverUri(JLjava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # J
    .param p3, "thumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mAlbumCoversUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "content_url"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUri(JLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # J
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mPhotosUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "content_url"

    invoke-virtual {v0, v1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isMaster()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mMasterInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mLocalInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->updatePicasaSyncInfo(Z)V

    .line 260
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->updatePicasaSyncInfo(Z)V

    .line 268
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->updatePicasaSyncInfo(Z)V

    .line 264
    return-void
.end method

.method declared-synchronized updatePicasaSyncInfo(Z)V
    .locals 9
    .param p1, "initialize"    # Z

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 152
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.google.android.picasastore.PACKAGE_METADATA_LOOKUP"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x84

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 156
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "localPackageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 158
    .local v5, "result":Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 159
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v7}, Lcom/google/android/picasastore/PicasaStoreFacade;->getPicasaStoreInfo(Landroid/content/pm/ServiceInfo;)Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    move-result-object v6

    .line 160
    .local v6, "storeInfo":Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    if-eqz v6, :cond_0

    .line 161
    if-eqz v5, :cond_1

    iget v7, v5, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;->priority:I

    iget v8, v6, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;->priority:I

    if-ge v7, v8, :cond_2

    .line 162
    :cond_1
    move-object v5, v6

    .line 164
    :cond_2
    iget-object v7, v6, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    iput-object v6, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mLocalInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "localPackageName":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "result":Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    .end local v6    # "storeInfo":Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 170
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "localPackageName":Ljava/lang/String;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "result":Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;
    :cond_3
    :try_start_1
    iput-object v5, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mMasterInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    .line 172
    iget-object v7, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mLocalInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v7, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mMasterInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v7, p0, Lcom/google/android/picasastore/PicasaStoreFacade;->mMasterInfo:Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;

    iget-object v7, v7, Lcom/google/android/picasastore/PicasaStoreFacade$PicasaStoreInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v7, p1}, Lcom/google/android/picasastore/PicasaStoreFacade;->updateAuthority(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit p0

    return-void
.end method
