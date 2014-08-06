.class public Lcom/android/photos/data/MediaCache;
.super Ljava/lang/Object;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/data/MediaCache$ProcessingJob;,
        Lcom/android/photos/data/MediaCache$NotifyImageReady;,
        Lcom/android/photos/data/MediaCache$NotifyOriginalReady;,
        Lcom/android/photos/data/MediaCache$NotifyReady;,
        Lcom/android/photos/data/MediaCache$ProcessQueue;,
        Lcom/android/photos/data/MediaCache$OriginalReady;,
        Lcom/android/photos/data/MediaCache$ImageReady;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/photos/data/MediaCache;


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private mCacheSize:J

.field private mCacheSizeLock:Ljava/lang/Object;

.field private mCallbacks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/photos/data/MediaCache$NotifyReady;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/android/photos/data/MediaCacheDatabase;

.field private mDeleteFile:Lcom/android/photos/data/MediaCacheDatabase$Action;

.field private mMaxCacheSize:J

.field private mMinThumbCacheSize:J

.field private mMoveTempToCache:Lcom/android/photos/data/MediaCacheDatabase$Action;

.field private mNotifyCachedLowResolution:Lcom/android/photos/data/MediaCacheDatabase$Action;

.field private mProcessNotifications:Ljava/lang/Thread;

.field private mProcessingThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/photos/data/MediaCache$ProcessQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mRetrievers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/photos/data/MediaRetriever;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/photos/data/MediaCache$ProcessingJob;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTempImageNumber:J

.field private mTempImageNumberLock:Ljava/lang/Object;

.field private mThumbCacheSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/photos/data/MediaCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/MediaCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, -0x1

    .line 283
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/photos/data/MediaCache;->mRunning:Z

    .line 189
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache;->mRetrievers:Ljava/util/Map;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache;->mTasks:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache;->mProcessingThreads:Ljava/util/List;

    .line 194
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/photos/data/MediaCache;->mTempImageNumber:J

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache;->mTempImageNumberLock:Ljava/lang/Object;

    .line 197
    const-wide/32 v0, 0x2800000

    iput-wide v0, p0, Lcom/android/photos/data/MediaCache;->mMaxCacheSize:J

    .line 198
    const-wide/32 v0, 0x400000

    iput-wide v0, p0, Lcom/android/photos/data/MediaCache;->mMinThumbCacheSize:J

    .line 199
    iput-wide v2, p0, Lcom/android/photos/data/MediaCache;->mCacheSize:J

    .line 200
    iput-wide v2, p0, Lcom/android/photos/data/MediaCache;->mThumbCacheSize:J

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache;->mCacheSizeLock:Ljava/lang/Object;

    .line 203
    new-instance v0, Lcom/android/photos/data/MediaCache$1;

    invoke-direct {v0, p0}, Lcom/android/photos/data/MediaCache$1;-><init>(Lcom/android/photos/data/MediaCache;)V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache;->mNotifyCachedLowResolution:Lcom/android/photos/data/MediaCacheDatabase$Action;

    .line 212
    new-instance v0, Lcom/android/photos/data/MediaCache$2;

    invoke-direct {v0, p0}, Lcom/android/photos/data/MediaCache$2;-><init>(Lcom/android/photos/data/MediaCache;)V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache;->mMoveTempToCache:Lcom/android/photos/data/MediaCacheDatabase$Action;

    .line 221
    new-instance v0, Lcom/android/photos/data/MediaCache$3;

    invoke-direct {v0, p0}, Lcom/android/photos/data/MediaCache$3;-><init>(Lcom/android/photos/data/MediaCache;)V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache;->mDeleteFile:Lcom/android/photos/data/MediaCacheDatabase$Action;

    .line 239
    new-instance v0, Lcom/android/photos/data/MediaCache$4;

    invoke-direct {v0, p0}, Lcom/android/photos/data/MediaCache$4;-><init>(Lcom/android/photos/data/MediaCache;)V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache;->mProcessNotifications:Ljava/lang/Thread;

    .line 284
    new-instance v0, Lcom/android/photos/data/MediaCacheDatabase;

    invoke-direct {v0, p1}, Lcom/android/photos/data/MediaCacheDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/photos/data/MediaCache;->mDatabaseHelper:Lcom/android/photos/data/MediaCacheDatabase;

    .line 285
    iget-object v0, p0, Lcom/android/photos/data/MediaCache;->mProcessNotifications:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 286
    iput-object p1, p0, Lcom/android/photos/data/MediaCache;->mContext:Landroid/content/Context;

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/android/photos/data/MediaCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/data/MediaCache;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/photos/data/MediaCache;->mRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/photos/data/MediaCache;Lcom/android/photos/data/MediaCache$ProcessingJob;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/photos/data/MediaCache;
    .param p1, "x1"    # Lcom/android/photos/data/MediaCache$ProcessingJob;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/photos/data/MediaCache;->processTask(Lcom/android/photos/data/MediaCache$ProcessingJob;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/photos/data/MediaCache;J)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/data/MediaCache;
    .param p1, "x1"    # J

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/photos/data/MediaCache;Lcom/android/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/photos/data/MediaCache;
    .param p1, "x1"    # Lcom/android/photos/data/MediaCache$NotifyReady;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/photos/data/MediaCache;->addNotification(Lcom/android/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/photos/data/MediaCache;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/data/MediaCache;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/photos/data/MediaCache;->mCacheSizeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/photos/data/MediaCache;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/photos/data/MediaCache;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/photos/data/MediaCache;->mCacheSize:J

    return-wide v0
.end method

.method static synthetic access$522(Lcom/android/photos/data/MediaCache;J)J
    .locals 2
    .param p0, "x0"    # Lcom/android/photos/data/MediaCache;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/photos/data/MediaCache;->mCacheSize:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/photos/data/MediaCache;->mCacheSize:J

    return-wide v0
.end method

.method static synthetic access$622(Lcom/android/photos/data/MediaCache;J)J
    .locals 2
    .param p0, "x0"    # Lcom/android/photos/data/MediaCache;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/photos/data/MediaCache;->mThumbCacheSize:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/photos/data/MediaCache;->mThumbCacheSize:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/photos/data/MediaCache;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/android/photos/data/MediaCache;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    return-object v0
.end method

.method private addNotification(Lcom/android/photos/data/MediaCache$NotifyImageReady;[B)V
    .locals 2
    .param p1, "callback"    # Lcom/android/photos/data/MediaCache$NotifyImageReady;
    .param p2, "bytes"    # [B

    .prologue
    .line 617
    invoke-virtual {p1, p2}, Lcom/android/photos/data/MediaCache$NotifyImageReady;->setBytes([B)V

    .line 618
    iget-object v1, p0, Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    monitor-enter v1

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, p0, Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 621
    monitor-exit v1

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addNotification(Lcom/android/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/photos/data/MediaCache$NotifyReady;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 606
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/photos/data/MediaCache$NotifyReady;->setFile(Ljava/io/File;)V

    .line 607
    iget-object v2, p0, Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :try_start_1
    iget-object v1, p0, Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v1, p0, Lcom/android/photos/data/MediaCache;->mCallbacks:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 610
    monitor-exit v2

    .line 614
    :goto_0
    return-void

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/photos/data/MediaCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addTask(Landroid/net/Uri;Lcom/android/photos/data/MediaCache$NotifyReady;Lcom/android/photos/data/MediaCache$NotifyImageReady;Lcom/android/photos/data/MediaRetriever$MediaSize;)V
    .locals 11
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "complete"    # Lcom/android/photos/data/MediaCache$NotifyReady;
    .param p3, "lowResolution"    # Lcom/android/photos/data/MediaCache$NotifyImageReady;
    .param p4, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/android/photos/data/MediaCache;->getMediaRetriever(Landroid/net/Uri;)Lcom/android/photos/data/MediaRetriever;

    move-result-object v4

    .line 496
    .local v4, "retriever":Lcom/android/photos/data/MediaRetriever;
    invoke-interface {v4, p1, p4}, Lcom/android/photos/data/MediaRetriever;->normalizeUri(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Landroid/net/Uri;

    move-result-object v6

    .line 497
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_0

    .line 498
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No MediaRetriever for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 500
    :cond_0
    invoke-interface {v4, v6, p4}, Lcom/android/photos/data/MediaRetriever;->normalizeMediaSize(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Lcom/android/photos/data/MediaRetriever$MediaSize;

    move-result-object p4

    .line 502
    invoke-virtual {p0, v6, p4}, Lcom/android/photos/data/MediaCache;->getCachedFile(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;

    move-result-object v0

    .line 503
    .local v0, "cachedFile":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 504
    invoke-direct {p0, p2, v0}, Lcom/android/photos/data/MediaCache;->addNotification(Lcom/android/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    .line 527
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/photos/data/MediaCache;->getDifferentiator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "differentiator":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/photos/data/MediaCache;->mTasks:Ljava/util/Map;

    monitor-enter v8

    .line 509
    :try_start_0
    iget-object v7, p0, Lcom/android/photos/data/MediaCache;->mTasks:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 510
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/photos/data/MediaCache$ProcessingJob;>;"
    if-nez v5, :cond_2

    .line 511
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find retriever for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 526
    .end local v5    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/photos/data/MediaCache$ProcessingJob;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 513
    .restart local v5    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/photos/data/MediaCache$ProcessingJob;>;"
    :cond_2
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    :try_start_2
    new-instance v3, Lcom/android/photos/data/MediaCache$ProcessingJob;

    invoke-direct {v3, v6, p4, p2, p3}, Lcom/android/photos/data/MediaCache$ProcessingJob;-><init>(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Lcom/android/photos/data/MediaCache$NotifyReady;Lcom/android/photos/data/MediaCache$NotifyImageReady;)V

    .line 515
    .local v3, "job":Lcom/android/photos/data/MediaCache$ProcessingJob;
    invoke-interface {p2}, Lcom/android/photos/data/MediaCache$NotifyReady;->isPrefetch()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 516
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 525
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 526
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 518
    :cond_3
    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 519
    .local v2, "index":I
    :goto_2
    if-ltz v2, :cond_4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/photos/data/MediaCache$ProcessingJob;

    iget-object v7, v7, Lcom/android/photos/data/MediaCache$ProcessingJob;->complete:Lcom/android/photos/data/MediaCache$NotifyReady;

    invoke-interface {v7}, Lcom/android/photos/data/MediaCache$NotifyReady;->isPrefetch()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 520
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 522
    :cond_4
    add-int/lit8 v7, v2, 0x1

    invoke-interface {v5, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 525
    .end local v2    # "index":I
    .end local v3    # "job":Lcom/android/photos/data/MediaCache$ProcessingJob;
    :catchall_1
    move-exception v7

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private createCacheImagePath(J)Ljava/io/File;
    .locals 4
    .param p1, "id"    # J

    .prologue
    .line 480
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/photos/data/MediaCache;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private ensureFreeCacheSpace(JLcom/android/photos/data/MediaRetriever$MediaSize;)V
    .locals 6
    .param p1, "size"    # J
    .param p3, "mediaSize"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    const-wide/16 v4, -0x1

    .line 652
    iget-object v1, p0, Lcom/android/photos/data/MediaCache;->mCacheSizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    :try_start_0
    iget-wide v2, p0, Lcom/android/photos/data/MediaCache;->mCacheSize:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/photos/data/MediaCache;->mThumbCacheSize:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/photos/data/MediaCache;->mDatabaseHelper:Lcom/android/photos/data/MediaCacheDatabase;

    invoke-virtual {v0}, Lcom/android/photos/data/MediaCacheDatabase;->getCacheSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/photos/data/MediaCache;->mCacheSize:J

    .line 655
    iget-object v0, p0, Lcom/android/photos/data/MediaCache;->mDatabaseHelper:Lcom/android/photos/data/MediaCacheDatabase;

    invoke-virtual {v0}, Lcom/android/photos/data/MediaCacheDatabase;->getThumbnailCacheSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/photos/data/MediaCache;->mThumbCacheSize:J

    .line 656
    iget-wide v2, p0, Lcom/android/photos/data/MediaCache;->mCacheSize:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/android/photos/data/MediaCache;->mThumbCacheSize:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 657
    :cond_1
    sget-object v0, Lcom/android/photos/data/MediaCache;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t determine size of the image cache"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    monitor-exit v1

    .line 669
    :goto_0
    return-void

    .line 661
    :cond_2
    iget-wide v2, p0, Lcom/android/photos/data/MediaCache;->mCacheSize:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/photos/data/MediaCache;->mCacheSize:J

    .line 662
    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    if-ne p3, v0, :cond_3

    .line 663
    iget-wide v2, p0, Lcom/android/photos/data/MediaCache;->mThumbCacheSize:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/photos/data/MediaCache;->mThumbCacheSize:J

    .line 665
    :cond_3
    iget-wide v2, p0, Lcom/android/photos/data/MediaCache;->mCacheSize:J

    iget-wide v4, p0, Lcom/android/photos/data/MediaCache;->mMaxCacheSize:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 666
    invoke-direct {p0}, Lcom/android/photos/data/MediaCache;->shrinkCacheLocked()V

    .line 668
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getDifferentiator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 642
    if-nez p1, :cond_0

    .line 648
    .end local p0    # "scheme":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 645
    .restart local p0    # "scheme":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, "differentiator":Ljava/lang/StringBuilder;
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getFastImageSize(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Lcom/android/photos/data/MediaRetriever$MediaSize;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/android/photos/data/MediaCache;->getMediaRetriever(Landroid/net/Uri;)Lcom/android/photos/data/MediaRetriever;

    move-result-object v0

    .line 552
    .local v0, "retriever":Lcom/android/photos/data/MediaRetriever;
    invoke-interface {v0, p1, p2}, Lcom/android/photos/data/MediaRetriever;->getFastImageSize(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Lcom/android/photos/data/MediaRetriever$MediaSize;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/android/photos/data/MediaCache;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/android/photos/data/MediaCache;->sInstance:Lcom/android/photos/data/MediaCache;

    return-object v0
.end method

.method private getLocalFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/android/photos/data/MediaCache;->getMediaRetriever(Landroid/net/Uri;)Lcom/android/photos/data/MediaRetriever;

    move-result-object v1

    .line 543
    .local v1, "retriever":Lcom/android/photos/data/MediaRetriever;
    const/4 v0, 0x0

    .line 544
    .local v0, "localFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 545
    invoke-interface {v1, p1}, Lcom/android/photos/data/MediaRetriever;->getLocalFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 547
    :cond_0
    return-object v0
.end method

.method private getMedia(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 626
    iget-object v9, p0, Lcom/android/photos/data/MediaCache;->mTempImageNumberLock:Ljava/lang/Object;

    monitor-enter v9

    .line 627
    :try_start_0
    iget-wide v3, p0, Lcom/android/photos/data/MediaCache;->mTempImageNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v3

    iput-wide v10, p0, Lcom/android/photos/data/MediaCache;->mTempImageNumber:J

    .line 628
    .local v3, "imageNumber":J
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/photos/data/MediaCache;->getCacheDir()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 630
    .local v7, "tempFile":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/photos/data/MediaCache;->getMediaRetriever(Landroid/net/Uri;)Lcom/android/photos/data/MediaRetriever;

    move-result-object v6

    .line 631
    .local v6, "retriever":Lcom/android/photos/data/MediaRetriever;
    invoke-interface {v6, p1, p2, v7}, Lcom/android/photos/data/MediaRetriever;->getMedia(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Z

    move-result v5

    .line 632
    .local v5, "retrieved":Z
    const/4 v0, 0x0

    .line 633
    .local v0, "cachedFile":Ljava/io/File;
    if-eqz v5, :cond_0

    .line 634
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {p0, v8, v9, p2}, Lcom/android/photos/data/MediaCache;->ensureFreeCacheSpace(JLcom/android/photos/data/MediaRetriever$MediaSize;)V

    .line 635
    iget-object v8, p0, Lcom/android/photos/data/MediaCache;->mDatabaseHelper:Lcom/android/photos/data/MediaCacheDatabase;

    iget-object v9, p0, Lcom/android/photos/data/MediaCache;->mMoveTempToCache:Lcom/android/photos/data/MediaCacheDatabase$Action;

    invoke-virtual {v8, p1, p2, v9, v7}, Lcom/android/photos/data/MediaCacheDatabase;->insert(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Lcom/android/photos/data/MediaCacheDatabase$Action;Ljava/io/File;)J

    move-result-wide v1

    .line 636
    .local v1, "id":J
    invoke-direct {p0, v1, v2}, Lcom/android/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;

    move-result-object v0

    .line 638
    .end local v1    # "id":J
    :cond_0
    return-object v0

    .line 628
    .end local v0    # "cachedFile":Ljava/io/File;
    .end local v3    # "imageNumber":J
    .end local v5    # "retrieved":Z
    .end local v6    # "retriever":Lcom/android/photos/data/MediaRetriever;
    .end local v7    # "tempFile":Ljava/io/File;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method private getMediaRetriever(Landroid/net/Uri;)Lcom/android/photos/data/MediaRetriever;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 530
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/photos/data/MediaCache;->getDifferentiator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "differentiator":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/photos/data/MediaCache;->mRetrievers:Ljava/util/Map;

    monitor-enter v3

    .line 533
    :try_start_0
    iget-object v2, p0, Lcom/android/photos/data/MediaCache;->mRetrievers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/photos/data/MediaRetriever;

    .line 534
    .local v1, "retriever":Lcom/android/photos/data/MediaRetriever;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    if-nez v1, :cond_0

    .line 536
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No MediaRetriever for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    .end local v1    # "retriever":Lcom/android/photos/data/MediaRetriever;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 538
    .restart local v1    # "retriever":Lcom/android/photos/data/MediaRetriever;
    :cond_0
    return-object v1
.end method

.method private getTemporaryImage(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)[B
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fastImageType"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/android/photos/data/MediaCache;->getMediaRetriever(Landroid/net/Uri;)Lcom/android/photos/data/MediaRetriever;

    move-result-object v0

    .line 567
    .local v0, "retriever":Lcom/android/photos/data/MediaRetriever;
    invoke-interface {v0, p1, p2}, Lcom/android/photos/data/MediaRetriever;->getTemporaryImage(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)[B

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    const-class v1, Lcom/android/photos/data/MediaCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/photos/data/MediaCache;->sInstance:Lcom/android/photos/data/MediaCache;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/android/photos/data/MediaCache;

    invoke-direct {v0, p0}, Lcom/android/photos/data/MediaCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/photos/data/MediaCache;->sInstance:Lcom/android/photos/data/MediaCache;

    .line 266
    invoke-static {p0}, Lcom/android/photos/data/MediaCacheUtils;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    monitor-exit v1

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isFastImageBetter(Lcom/android/photos/data/MediaRetriever$MediaSize;Lcom/android/photos/data/MediaRetriever$MediaSize;)Z
    .locals 1
    .param p1, "fastImageType"    # Lcom/android/photos/data/MediaRetriever$MediaSize;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 556
    if-nez p1, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 562
    :goto_0
    return v0

    .line 559
    :cond_0
    if-nez p2, :cond_1

    .line 560
    const/4 v0, 0x1

    goto :goto_0

    .line 562
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/photos/data/MediaRetriever$MediaSize;->isBetterThan(Lcom/android/photos/data/MediaRetriever$MediaSize;)Z

    move-result v0

    goto :goto_0
.end method

.method private processTask(Lcom/android/photos/data/MediaCache$ProcessingJob;)V
    .locals 11
    .param p1, "job"    # Lcom/android/photos/data/MediaCache$ProcessingJob;

    .prologue
    .line 571
    iget-object v7, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    iget-object v8, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->size:Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-virtual {p0, v7, v8}, Lcom/android/photos/data/MediaCache;->getCachedFile(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;

    move-result-object v1

    .line 572
    .local v1, "cachedFile":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 573
    iget-object v7, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->complete:Lcom/android/photos/data/MediaCache$NotifyReady;

    invoke-direct {p0, v7, v1}, Lcom/android/photos/data/MediaCache;->addNotification(Lcom/android/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v7, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->lowResolution:Lcom/android/photos/data/MediaCache$NotifyImageReady;

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    .line 578
    .local v5, "hasLowResolution":Z
    :goto_1
    if-eqz v5, :cond_2

    .line 579
    iget-object v7, p0, Lcom/android/photos/data/MediaCache;->mDatabaseHelper:Lcom/android/photos/data/MediaCacheDatabase;

    iget-object v8, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    iget-object v9, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->size:Lcom/android/photos/data/MediaRetriever$MediaSize;

    iget-object v10, p0, Lcom/android/photos/data/MediaCache;->mNotifyCachedLowResolution:Lcom/android/photos/data/MediaCacheDatabase$Action;

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/photos/data/MediaCacheDatabase;->executeOnBestCached(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Lcom/android/photos/data/MediaCacheDatabase$Action;)Lcom/android/photos/data/MediaRetriever$MediaSize;

    move-result-object v2

    .line 581
    .local v2, "cachedSize":Lcom/android/photos/data/MediaRetriever$MediaSize;
    iget-object v7, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    iget-object v8, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->size:Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-direct {p0, v7, v8}, Lcom/android/photos/data/MediaCache;->getFastImageSize(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Lcom/android/photos/data/MediaRetriever$MediaSize;

    move-result-object v3

    .line 582
    .local v3, "fastImageSize":Lcom/android/photos/data/MediaRetriever$MediaSize;
    invoke-direct {p0, v3, v2}, Lcom/android/photos/data/MediaCache;->isFastImageBetter(Lcom/android/photos/data/MediaRetriever$MediaSize;Lcom/android/photos/data/MediaRetriever$MediaSize;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 583
    invoke-virtual {v3}, Lcom/android/photos/data/MediaRetriever$MediaSize;->isTemporary()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 584
    iget-object v7, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    invoke-direct {p0, v7, v3}, Lcom/android/photos/data/MediaCache;->getTemporaryImage(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)[B

    move-result-object v0

    .line 585
    .local v0, "bytes":[B
    if-eqz v0, :cond_2

    .line 586
    iget-object v7, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->lowResolution:Lcom/android/photos/data/MediaCache$NotifyImageReady;

    invoke-direct {p0, v7, v0}, Lcom/android/photos/data/MediaCache;->addNotification(Lcom/android/photos/data/MediaCache$NotifyImageReady;[B)V

    .line 598
    .end local v0    # "bytes":[B
    .end local v2    # "cachedSize":Lcom/android/photos/data/MediaRetriever$MediaSize;
    .end local v3    # "fastImageSize":Lcom/android/photos/data/MediaRetriever$MediaSize;
    :cond_2
    :goto_2
    iget-object v7, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    iget-object v8, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->size:Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-direct {p0, v7, v8}, Lcom/android/photos/data/MediaCache;->getMedia(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;

    move-result-object v4

    .line 599
    .local v4, "fullSizeFile":Ljava/io/File;
    if-eqz v4, :cond_0

    .line 600
    iget-object v7, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->complete:Lcom/android/photos/data/MediaCache$NotifyReady;

    invoke-direct {p0, v7, v4}, Lcom/android/photos/data/MediaCache;->addNotification(Lcom/android/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    goto :goto_0

    .line 577
    .end local v4    # "fullSizeFile":Ljava/io/File;
    .end local v5    # "hasLowResolution":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 589
    .restart local v2    # "cachedSize":Lcom/android/photos/data/MediaRetriever$MediaSize;
    .restart local v3    # "fastImageSize":Lcom/android/photos/data/MediaRetriever$MediaSize;
    .restart local v5    # "hasLowResolution":Z
    :cond_4
    iget-object v7, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->contentUri:Landroid/net/Uri;

    invoke-direct {p0, v7, v3}, Lcom/android/photos/data/MediaCache;->getMedia(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;

    move-result-object v6

    .line 590
    .local v6, "lowFile":Ljava/io/File;
    if-eqz v6, :cond_2

    .line 591
    iget-object v7, p1, Lcom/android/photos/data/MediaCache$ProcessingJob;->lowResolution:Lcom/android/photos/data/MediaCache$NotifyImageReady;

    invoke-direct {p0, v7, v6}, Lcom/android/photos/data/MediaCache;->addNotification(Lcom/android/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    goto :goto_2
.end method

.method private shrinkCacheLocked()V
    .locals 7

    .prologue
    .line 672
    iget-wide v0, p0, Lcom/android/photos/data/MediaCache;->mMinThumbCacheSize:J

    .line 673
    .local v0, "deleteSize":J
    iget-wide v3, p0, Lcom/android/photos/data/MediaCache;->mThumbCacheSize:J

    sub-long/2addr v3, v0

    iget-wide v5, p0, Lcom/android/photos/data/MediaCache;->mMinThumbCacheSize:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 674
    .local v2, "includeThumbnails":Z
    :goto_0
    iget-object v3, p0, Lcom/android/photos/data/MediaCache;->mDatabaseHelper:Lcom/android/photos/data/MediaCacheDatabase;

    iget-object v4, p0, Lcom/android/photos/data/MediaCache;->mDeleteFile:Lcom/android/photos/data/MediaCacheDatabase$Action;

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/android/photos/data/MediaCacheDatabase;->deleteOldCached(ZJLcom/android/photos/data/MediaCacheDatabase$Action;)V

    .line 675
    return-void

    .line 673
    .end local v2    # "includeThumbnails":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addRetriever(Ljava/lang/String;Ljava/lang/String;Lcom/android/photos/data/MediaRetriever;)V
    .locals 4
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "retriever"    # Lcom/android/photos/data/MediaRetriever;

    .prologue
    .line 335
    invoke-static {p1, p2}, Lcom/android/photos/data/MediaCache;->getDifferentiator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "differentiator":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/photos/data/MediaCache;->mRetrievers:Ljava/util/Map;

    monitor-enter v3

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/android/photos/data/MediaCache;->mRetrievers:Ljava/util/Map;

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v3, p0, Lcom/android/photos/data/MediaCache;->mTasks:Ljava/util/Map;

    monitor-enter v3

    .line 340
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 341
    .local v1, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/photos/data/MediaCache$ProcessingJob;>;"
    iget-object v2, p0, Lcom/android/photos/data/MediaCache;->mTasks:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v2, Lcom/android/photos/data/MediaCache$ProcessQueue;

    invoke-direct {v2, p0, v1}, Lcom/android/photos/data/MediaCache$ProcessQueue;-><init>(Lcom/android/photos/data/MediaCache;Ljava/util/Queue;)V

    invoke-virtual {v2}, Lcom/android/photos/data/MediaCache$ProcessQueue;->start()V

    .line 343
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    return-void

    .line 338
    .end local v1    # "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/photos/data/MediaCache$ProcessingJob;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 343
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public clearCacheDir()V
    .locals 6

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/photos/data/MediaCache;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 323
    .local v2, "cachedFiles":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 324
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 325
    .local v1, "cachedFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "cachedFile":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 296
    iget-object v3, p0, Lcom/android/photos/data/MediaCache;->mContext:Landroid/content/Context;

    monitor-enter v3

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/android/photos/data/MediaCache;->mCacheDir:Ljava/io/File;

    if-nez v2, :cond_0

    .line 298
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/photos/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 306
    .local v0, "baseDir":Ljava/io/File;
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v4, "image_cache"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/photos/data/MediaCache;->mCacheDir:Ljava/io/File;

    .line 307
    iget-object v2, p0, Lcom/android/photos/data/MediaCache;->mCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 309
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v1    # "state":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/photos/data/MediaCache;->mCacheDir:Ljava/io/File;

    monitor-exit v3

    return-object v2

    .line 304
    .restart local v1    # "state":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/photos/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "baseDir":Ljava/io/File;
    goto :goto_0

    .line 310
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v1    # "state":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCachedFile(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 413
    iget-object v2, p0, Lcom/android/photos/data/MediaCache;->mDatabaseHelper:Lcom/android/photos/data/MediaCacheDatabase;

    invoke-virtual {v2, p1, p2}, Lcom/android/photos/data/MediaCacheDatabase;->getCached(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Ljava/lang/Long;

    move-result-object v0

    .line 414
    .local v0, "cachedId":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 415
    .local v1, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;

    move-result-object v1

    .line 417
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/photos/data/MediaCache;->mDatabaseHelper:Lcom/android/photos/data/MediaCacheDatabase;

    iget-object v3, p0, Lcom/android/photos/data/MediaCache;->mDeleteFile:Lcom/android/photos/data/MediaCacheDatabase$Action;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/photos/data/MediaCacheDatabase;->delete(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Lcom/android/photos/data/MediaCacheDatabase$Action;)V

    .line 419
    const/4 v1, 0x0

    .line 422
    :cond_0
    return-object v1
.end method

.method public invalidate(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/photos/data/MediaCache;->mDatabaseHelper:Lcom/android/photos/data/MediaCacheDatabase;

    iget-object v1, p0, Lcom/android/photos/data/MediaCache;->mDeleteFile:Lcom/android/photos/data/MediaCacheDatabase$Action;

    invoke-virtual {v0, p1, v1}, Lcom/android/photos/data/MediaCacheDatabase;->delete(Landroid/net/Uri;Lcom/android/photos/data/MediaCacheDatabase$Action;)V

    .line 319
    return-void
.end method

.method public retrieveOriginal(Landroid/net/Uri;Lcom/android/photos/data/MediaCache$OriginalReady;Lcom/android/photos/data/MediaCache$ImageReady;)V
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "complete"    # Lcom/android/photos/data/MediaCache$OriginalReady;
    .param p3, "lowResolution"    # Lcom/android/photos/data/MediaCache$ImageReady;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/android/photos/data/MediaCache;->getLocalFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 395
    .local v0, "localFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 396
    new-instance v2, Lcom/android/photos/data/MediaCache$NotifyOriginalReady;

    invoke-direct {v2, p2}, Lcom/android/photos/data/MediaCache$NotifyOriginalReady;-><init>(Lcom/android/photos/data/MediaCache$OriginalReady;)V

    invoke-direct {p0, v2, v0}, Lcom/android/photos/data/MediaCache;->addNotification(Lcom/android/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    .line 403
    :goto_0
    return-void

    .line 398
    :cond_0
    if-nez p3, :cond_1

    const/4 v1, 0x0

    .line 400
    .local v1, "notifyLowResolution":Lcom/android/photos/data/MediaCache$NotifyImageReady;
    :goto_1
    new-instance v2, Lcom/android/photos/data/MediaCache$NotifyOriginalReady;

    invoke-direct {v2, p2}, Lcom/android/photos/data/MediaCache$NotifyOriginalReady;-><init>(Lcom/android/photos/data/MediaCache$OriginalReady;)V

    sget-object v3, Lcom/android/photos/data/MediaRetriever$MediaSize;->Original:Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/photos/data/MediaCache;->addTask(Landroid/net/Uri;Lcom/android/photos/data/MediaCache$NotifyReady;Lcom/android/photos/data/MediaCache$NotifyImageReady;Lcom/android/photos/data/MediaRetriever$MediaSize;)V

    goto :goto_0

    .line 398
    .end local v1    # "notifyLowResolution":Lcom/android/photos/data/MediaCache$NotifyImageReady;
    :cond_1
    new-instance v1, Lcom/android/photos/data/MediaCache$NotifyImageReady;

    invoke-direct {v1, p3}, Lcom/android/photos/data/MediaCache$NotifyImageReady;-><init>(Lcom/android/photos/data/MediaCache$ImageReady;)V

    goto :goto_1
.end method
