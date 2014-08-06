.class Lcom/google/android/picasastore/PicasaStore;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasastore/UrlDownloader$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;,
        Lcom/google/android/picasastore/PicasaStore$ImagePack;,
        Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;,
        Lcom/google/android/picasastore/PicasaStore$DownloadWriter;,
        Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;,
        Lcom/google/android/picasastore/PicasaStore$DownloadListener;
    }
.end annotation


# instance fields
.field private mBlobCache:Lcom/android/gallery3d/common/BlobCache;

.field private mBytesWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCacheDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private final mCreatePipe:Ljava/lang/reflect/Method;

.field private mFileCache:Lcom/android/gallery3d/common/FileCache;

.field private mImagePackWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter",
            "<",
            "Lcom/google/android/picasastore/PicasaStore$ImagePack;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeepAlive:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final mMountListener:Landroid/content/BroadcastReceiver;

.field private final mServerSocket:Ljava/net/ServerSocket;

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private final mUrlDownloader:Lcom/google/android/picasastore/UrlDownloader;

.field private mUsingInternalStorage:Z

.field private mVersionInfo:Lcom/google/android/picasastore/VersionInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v1, p0, Lcom/google/android/picasastore/PicasaStore;->mUsingInternalStorage:Z

    .line 95
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mKeepAlive:Ljava/util/WeakHashMap;

    .line 103
    new-instance v1, Lcom/android/gallery3d/util/ThreadPool;

    invoke-direct {v1}, Lcom/android/gallery3d/util/ThreadPool;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 648
    new-instance v1, Lcom/google/android/picasastore/PicasaStore$2;

    invoke-direct {v1, p0}, Lcom/google/android/picasastore/PicasaStore$2;-><init>(Lcom/google/android/picasastore/PicasaStore;)V

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mImagePackWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    .line 664
    new-instance v1, Lcom/google/android/picasastore/PicasaStore$3;

    invoke-direct {v1, p0}, Lcom/google/android/picasastore/PicasaStore$3;-><init>(Lcom/google/android/picasastore/PicasaStore;)V

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mBytesWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    .line 107
    new-instance v1, Lcom/google/android/picasastore/UrlDownloader;

    invoke-direct {v1, p0}, Lcom/google/android/picasastore/UrlDownloader;-><init>(Lcom/google/android/picasastore/UrlDownloader$Controller;)V

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mUrlDownloader:Lcom/google/android/picasastore/UrlDownloader;

    .line 110
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    .line 111
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    const-class v1, Landroid/os/ParcelFileDescriptor;

    const-string v2, "createPipe"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 123
    :goto_0
    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mCreatePipe:Ljava/lang/reflect/Method;

    .line 135
    new-instance v0, Lcom/google/android/picasastore/PicasaStore$1;

    invoke-direct {v0, p0}, Lcom/google/android/picasastore/PicasaStore$1;-><init>(Lcom/google/android/picasastore/PicasaStore;)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mMountListener:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mMountListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot create server socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 119
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/picasastore/PicasaStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasastore/PicasaStore;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->onMediaMountOrUnmount()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/picasastore/PicasaStore;JI)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasastore/PicasaStore;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasastore/PicasaStore;->makeKey(JI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/picasastore/PicasaStore;[B[BI[B)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasastore/PicasaStore;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # [B

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/picasastore/PicasaStore;->putBlobCache([B[BI[B)V

    return-void
.end method

.method private checkCacheVersion(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "currentVersion"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/google/android/picasastore/VersionInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaStore;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cache_versions.info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/picasastore/VersionInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/picasastore/VersionInfo;->getVersion(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 177
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/picasastore/VersionInfo;->setVersion(Ljava/lang/String;I)V

    .line 178
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;

    invoke-virtual {v0}, Lcom/google/android/picasastore/VersionInfo;->sync()V

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createPipe()[Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mCreatePipe:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 857
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->createSocketPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 860
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mCreatePipe:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/ParcelFileDescriptor;

    check-cast v1, [Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "PicasaStore"

    const-string v2, "fail to create pipe"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/io/IOException;

    .end local v0    # "e":Ljava/lang/Throwable;
    throw v0

    .line 864
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createSocketPipe()[Landroid/os/ParcelFileDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 838
    new-array v1, v8, [Ljava/net/Socket;

    .line 839
    .local v1, "socket":[Ljava/net/Socket;
    monitor-enter p0

    .line 840
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/google/android/picasastore/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/picasastore/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    aput-object v3, v1, v2

    .line 842
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    aput-object v3, v1, v2

    .line 843
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    new-array v0, v8, [Landroid/os/ParcelFileDescriptor;

    aget-object v2, v1, v6

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aput-object v2, v0, v6

    aget-object v2, v1, v7

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aput-object v2, v0, v7

    .line 850
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mKeepAlive:Ljava/util/WeakHashMap;

    aget-object v3, v0, v6

    aget-object v4, v1, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mKeepAlive:Ljava/util/WeakHashMap;

    aget-object v3, v0, v7

    aget-object v4, v1, v7

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    return-object v0

    .line 843
    .end local v0    # "pipe":[Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized findInCacheOrDownload(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "id"    # J
    .param p3, "contentUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->getDownloadCache()Lcom/android/gallery3d/common/FileCache;

    move-result-object v0

    .line 372
    .local v0, "cache":Lcom/android/gallery3d/common/FileCache;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0, p3}, Lcom/android/gallery3d/common/FileCache;->lookup(Ljava/lang/String;)Lcom/android/gallery3d/common/FileCache$CacheEntry;

    move-result-object v1

    .line 375
    .local v1, "entry":Lcom/android/gallery3d/common/FileCache$CacheEntry;
    if-eqz v1, :cond_0

    .line 376
    iget-object v3, v1, Lcom/android/gallery3d/common/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    const/high16 v4, 0x10000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 386
    .end local v0    # "cache":Lcom/android/gallery3d/common/FileCache;
    .end local v1    # "entry":Lcom/android/gallery3d/common/FileCache$CacheEntry;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "PicasaStore"

    const-string v4, "open image from download cache"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v3, 0x0

    :try_start_2
    new-instance v4, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;

    iget-object v5, p0, Lcom/google/android/picasastore/PicasaStore;->mUrlDownloader:Lcom/google/android/picasastore/UrlDownloader;

    invoke-virtual {v5, p3}, Lcom/google/android/picasastore/UrlDownloader;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, p0, p1, p2, v5}, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;-><init>(Lcom/google/android/picasastore/PicasaStore;JLjava/io/InputStream;)V

    invoke-direct {p0, v3, v4}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 388
    :catch_1
    move-exception v2

    .line 389
    .restart local v2    # "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "PicasaStore"

    const-string v4, "download fail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 370
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAlbumCoverFile(JLjava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "albumId"    # J
    .param p3, "thumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v1, ".thumb"

    invoke-static {p1, p2, p3, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 232
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getBlobCache()Lcom/android/gallery3d/common/BlobCache;
    .locals 8

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaStore;->getCacheDirectory()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 188
    .local v6, "cacheDir":Ljava/io/File;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "picasa-cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "path":Ljava/lang/String;
    const-string v0, "picasa-image-cache-version"

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/google/android/picasastore/PicasaStore;->checkCacheVersion(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {v1}, Lcom/android/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 192
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/picasastore/PicasaStore;->mUsingInternalStorage:Z

    if-eqz v0, :cond_2

    .line 193
    new-instance v0, Lcom/android/gallery3d/common/BlobCache;

    const/16 v2, 0x4e2

    const/high16 v3, 0x3200000

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .end local v1    # "path":Ljava/lang/String;
    .end local v6    # "cacheDir":Ljava/io/File;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 197
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v6    # "cacheDir":Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v0, Lcom/android/gallery3d/common/BlobCache;

    const/16 v2, 0x1388

    const/high16 v3, 0xc800000

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 200
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 201
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string v0, "PicasaStore"

    const-string v2, "fail to create blob cache"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 185
    .end local v6    # "cacheDir":Ljava/io/File;
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getDownloadCache()Lcom/android/gallery3d/common/FileCache;
    .locals 7

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 210
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaStore;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "download-cache"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v2, "rootDir":Ljava/io/File;
    const-string v0, "picasa-download-cache-version"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/picasastore/PicasaStore;->checkCacheVersion(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    const-string v1, "picasa-downloads"

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/common/FileCache;->deleteFiles(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/picasastore/PicasaStore;->mUsingInternalStorage:Z

    if-nez v0, :cond_2

    .line 216
    new-instance v0, Lcom/android/gallery3d/common/FileCache;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    const-string v3, "picasa-downloads"

    const-wide/32 v4, 0x6400000

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/FileCache;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .end local v2    # "rootDir":Ljava/io/File;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 219
    .restart local v2    # "rootDir":Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v0, Lcom/android/gallery3d/common/FileCache;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    const-string v3, "picasa-downloads"

    const-wide/32 v4, 0x1400000

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/FileCache;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 222
    .end local v2    # "rootDir":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 223
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string v0, "PicasaStore"

    const-string v1, "fail to create file cache"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 208
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getItemIdFromUri(Landroid/net/Uri;)J
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 237
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 240
    :goto_0
    return-wide v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "PicasaStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get id from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private isKeyMatched([B[B[B)Z
    .locals 8
    .param p1, "key"    # [B
    .param p2, "auxKey"    # [B
    .param p3, "content"    # [B

    .prologue
    const/4 v5, 0x0

    .line 767
    if-nez p2, :cond_2

    .line 768
    array-length v6, p3

    array-length v7, p1

    if-ge v6, v7, :cond_1

    .line 795
    :cond_0
    :goto_0
    return v5

    .line 771
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 772
    aget-byte v6, p1, v1

    aget-byte v7, p3, v1

    if-ne v6, v7, :cond_0

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 775
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    array-length v6, p1

    array-length v7, p2

    add-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x3

    .line 776
    .local v0, "headerLength":I
    array-length v6, p3

    if-lt v6, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/picasastore/PicasaStore;->isKeyTooLong(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 779
    const/4 v1, 0x0

    .restart local v1    # "i":I
    array-length v2, p1

    .restart local v2    # "n":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 780
    aget-byte v6, p1, v1

    aget-byte v7, p3, v1

    if-ne v6, v7, :cond_0

    .line 779
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 783
    :cond_3
    array-length v3, p1

    .line 785
    .local v3, "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    aget-byte v6, p3, v3

    int-to-byte v7, v0

    if-ne v6, v7, :cond_0

    .line 786
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v6, p3, v4

    ushr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    if-ne v6, v7, :cond_0

    .line 788
    add-int/lit8 v3, v3, 0x1

    .line 791
    const/4 v1, 0x0

    array-length v2, p2

    :goto_3
    if-ge v1, v2, :cond_4

    .line 792
    aget-byte v6, p2, v1

    add-int v7, v1, v3

    aget-byte v7, p3, v7

    if-ne v6, v7, :cond_0

    .line 791
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 795
    .end local v0    # "headerLength":I
    .end local v3    # "offset":I
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private isKeyTooLong(I)Z
    .locals 1
    .param p1, "totalKeyLength"    # I

    .prologue
    .line 694
    const/16 v0, 0x7fff

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookupBlobCache(JILjava/lang/String;)Lcom/google/android/picasastore/PicasaStore$ImagePack;
    .locals 3
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 722
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasastore/PicasaStore;->makeKey(JI)[B

    move-result-object v1

    .line 723
    .local v1, "key":[B
    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 724
    .local v0, "auxKey":[B
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/picasastore/PicasaStore;->lookupBlobCache([B[B)Lcom/google/android/picasastore/PicasaStore$ImagePack;

    move-result-object v2

    return-object v2

    .line 723
    .end local v0    # "auxKey":[B
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private lookupBlobCache([B[B)Lcom/google/android/picasastore/PicasaStore$ImagePack;
    .locals 10
    .param p1, "key"    # [B
    .param p2, "auxKey"    # [B

    .prologue
    const/4 v7, 0x0

    .line 702
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->getBlobCache()Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    .line 703
    .local v0, "cache":Lcom/android/gallery3d/common/BlobCache;
    if-nez v0, :cond_1

    .line 717
    .end local v0    # "cache":Lcom/android/gallery3d/common/BlobCache;
    :cond_0
    :goto_0
    return-object v7

    .line 704
    .restart local v0    # "cache":Lcom/android/gallery3d/common/BlobCache;
    :cond_1
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v3

    .line 706
    .local v3, "hash":J
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :try_start_1
    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v1

    .line 708
    .local v1, "content":[B
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    if-eqz v1, :cond_0

    :try_start_2
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/picasastore/PicasaStore;->isKeyMatched([B[B[B)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 711
    array-length v8, p1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    array-length v9, p1

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int v5, v8, v9

    .line 713
    .local v5, "offset":I
    array-length v8, p1

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, v1, v8

    and-int/lit16 v2, v8, 0xff

    .line 714
    .local v2, "flags":I
    new-instance v8, Lcom/google/android/picasastore/PicasaStore$ImagePack;

    invoke-direct {v8, v5, v2, v1}, Lcom/google/android/picasastore/PicasaStore$ImagePack;-><init>(II[B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v8

    goto :goto_0

    .line 708
    .end local v1    # "content":[B
    .end local v2    # "flags":I
    .end local v5    # "offset":I
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 715
    .end local v0    # "cache":Lcom/android/gallery3d/common/BlobCache;
    .end local v3    # "hash":J
    :catch_0
    move-exception v6

    .line 716
    .local v6, "t":Ljava/lang/Throwable;
    const-string v8, "PicasaStore"

    const-string v9, "cache lookup fail"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private makeKey(JI)[B
    .locals 5
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    const/16 v4, 0x8

    .line 802
    const/16 v2, 0x9

    new-array v0, v2, [B

    .line 803
    .local v0, "array":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 804
    mul-int/lit8 v2, v1, 0x8

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 803
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    :cond_0
    int-to-byte v2, p3

    aput-byte v2, v0, v4

    .line 807
    return-object v0
.end method

.method private declared-synchronized onMediaMountOrUnmount()V
    .locals 1

    .prologue
    .line 869
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    .line 870
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 872
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 876
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;

    .line 878
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    monitor-exit p0

    return-void

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter",
            "<TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 814
    .local p1, "args":Ljava/lang/Object;, "TT;"
    .local p2, "func":Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;, "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 815
    .local v1, "pipe":[Landroid/os/ParcelFileDescriptor;
    new-instance v2, Lcom/google/android/picasastore/PicasaStore$4;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/google/android/picasastore/PicasaStore$4;-><init>(Lcom/google/android/picasastore/PicasaStore;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V

    .line 826
    .local v2, "task":Lcom/android/gallery3d/util/ThreadPool$Job;, "Lcom/android/gallery3d/util/ThreadPool$Job<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    .line 827
    const/4 v3, 0x0

    aget-object v3, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 828
    .end local v1    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v2    # "task":Lcom/android/gallery3d/util/ThreadPool$Job;, "Lcom/android/gallery3d/util/ThreadPool$Job<Ljava/lang/Void;>;"
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "failure making pipe"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private openUnknownImage(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "contentUrl"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 340
    const-string v0, "thumbnail"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    sget v0, Lcom/google/android/picasastore/Config;->sThumbNailSize:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 347
    :cond_0
    :goto_0
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/picasastore/PicasaStore;->findInCacheOrDownload(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 343
    :cond_1
    const-string v0, "screennail"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    sget v0, Lcom/google/android/picasastore/Config;->sScreenNailSize:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private putBlobCache(JILjava/lang/String;I[B)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "content"    # [B

    .prologue
    .line 757
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasastore/PicasaStore;->makeKey(JI)[B

    move-result-object v1

    .line 758
    .local v1, "key":[B
    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 759
    .local v0, "auxKey":[B
    :goto_0
    invoke-direct {p0, v1, v0, p5, p6}, Lcom/google/android/picasastore/PicasaStore;->putBlobCache([B[BI[B)V

    .line 760
    return-void

    .line 758
    .end local v0    # "auxKey":[B
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private putBlobCache([B[BI[B)V
    .locals 10
    .param p1, "key"    # [B
    .param p2, "auxKey"    # [B
    .param p3, "flags"    # I
    .param p4, "content"    # [B

    .prologue
    const/4 v0, 0x0

    .line 728
    if-nez p2, :cond_1

    .line 729
    .local v0, "auxKeyLength":I
    :goto_0
    array-length v7, p1

    add-int/2addr v7, v0

    add-int/lit8 v4, v7, 0x3

    .line 730
    .local v4, "headerLength":I
    invoke-direct {p0, v4}, Lcom/google/android/picasastore/PicasaStore;->isKeyTooLong(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 754
    :cond_0
    :goto_1
    return-void

    .line 728
    .end local v0    # "auxKeyLength":I
    .end local v4    # "headerLength":I
    :cond_1
    array-length v0, p2

    goto :goto_0

    .line 732
    .restart local v0    # "auxKeyLength":I
    .restart local v4    # "headerLength":I
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->getBlobCache()Lcom/android/gallery3d/common/BlobCache;

    move-result-object v1

    .line 733
    .local v1, "cache":Lcom/android/gallery3d/common/BlobCache;
    if-eqz v1, :cond_0

    .line 734
    array-length v7, p4

    add-int/2addr v7, v4

    new-array v5, v7, [B

    .line 738
    .local v5, "output":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p1, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    array-length v7, p1

    int-to-byte v8, v4

    aput-byte v8, v5, v7

    .line 740
    array-length v7, p1

    add-int/lit8 v7, v7, 0x1

    ushr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 741
    array-length v7, p1

    add-int/lit8 v7, v7, 0x2

    int-to-byte v8, p3

    aput-byte v8, v5, v7

    .line 742
    if-lez v0, :cond_3

    .line 743
    const/4 v7, 0x0

    array-length v8, p1

    add-int/lit8 v8, v8, 0x3

    invoke-static {p2, v7, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    :cond_3
    const/4 v7, 0x0

    array-length v8, p4

    invoke-static {p4, v7, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v2

    .line 748
    .local v2, "hash":J
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :try_start_1
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V

    .line 750
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 751
    .end local v1    # "cache":Lcom/android/gallery3d/common/BlobCache;
    .end local v2    # "hash":J
    .end local v5    # "output":[B
    :catch_0
    move-exception v6

    .line 752
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "PicasaStore"

    const-string v8, "cache insert fail"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public createTempFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 884
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->getDownloadCache()Lcom/android/gallery3d/common/FileCache;

    move-result-object v0

    .line 885
    .local v0, "cache":Lcom/android/gallery3d/common/FileCache;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/common/FileCache;->createFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 886
    .end local v0    # "cache":Lcom/android/gallery3d/common/FileCache;
    :catch_0
    move-exception v1

    .line 887
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public declared-synchronized getCacheDirectory()Ljava/io/File;
    .locals 5

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    monitor-exit p0

    return-object v2

    .line 153
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    .line 154
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/picasastore/PicasaStore;->mUsingInternalStorage:Z

    .line 157
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    if-nez v2, :cond_2

    .line 158
    const-string v2, "PicasaStore"

    const-string v3, "switch to internal storage for picasastore cache"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    .line 160
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/picasastore/PicasaStore;->mUsingInternalStorage:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v1, "nomedia":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .end local v1    # "nomedia":Ljava/io/File;
    :cond_1
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "PicasaStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to create \'.nomedia\' in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onDownloadComplete(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 893
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->getDownloadCache()Lcom/android/gallery3d/common/FileCache;

    move-result-object v0

    .line 894
    .local v0, "cache":Lcom/android/gallery3d/common/FileCache;
    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/common/FileCache;->store(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    :goto_0
    monitor-exit p0

    return-void

    .line 897
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 893
    .end local v0    # "cache":Lcom/android/gallery3d/common/FileCache;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public openAlbumCover(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 253
    const-string v2, "w"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid mode: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/picasastore/PicasaStore;->getItemIdFromUri(Landroid/net/Uri;)J

    move-result-wide v3

    .line 258
    .local v3, "id":J
    const-string v2, "content_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "thumbnailUrl":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2, v6}, Lcom/google/android/picasastore/PicasaStore;->lookupBlobCache(JILjava/lang/String;)Lcom/google/android/picasastore/PicasaStore$ImagePack;

    move-result-object v21

    .line 262
    .local v21, "pack":Lcom/google/android/picasastore/PicasaStore$ImagePack;
    if-eqz v21, :cond_1

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasastore/PicasaStore;->mImagePackWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 299
    :goto_0
    return-object v2

    .line 265
    :cond_1
    if-nez v6, :cond_2

    .line 266
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6}, Lcom/google/android/picasastore/PicasaStore;->getAlbumCoverFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 271
    .local v18, "file":Ljava/io/File;
    if-eqz v18, :cond_5

    .line 272
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x80000

    cmp-long v2, v10, v12

    if-gez v2, :cond_4

    .line 273
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v2, v10

    new-array v8, v2, [B

    .line 274
    .local v8, "content":[B
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 276
    .local v19, "fis":Ljava/io/FileInputStream;
    const/16 v20, 0x0

    .line 277
    .local v20, "offset":I
    :try_start_0
    array-length v2, v8

    sub-int v2, v2, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v22

    .line 278
    .local v22, "rc":I
    :goto_1
    if-ltz v22, :cond_3

    array-length v2, v8

    move/from16 v0, v20

    if-ge v0, v2, :cond_3

    .line 279
    add-int v20, v20, v22

    .line 280
    array-length v2, v8

    sub-int v2, v2, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v22

    goto :goto_1

    .line 282
    :cond_3
    const/4 v5, 0x2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/picasastore/PicasaStore;->putBlobCache(JILjava/lang/String;I[B)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasastore/PicasaStore;->mBytesWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 287
    invoke-static/range {v19 .. v19}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 284
    .end local v22    # "rc":I
    :catch_0
    move-exception v17

    .line 285
    .local v17, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .end local v17    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static/range {v19 .. v19}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 290
    .end local v8    # "content":[B
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "offset":I
    :cond_4
    const/high16 v2, 0x10000000

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_0

    .line 295
    :cond_5
    :try_start_2
    sget v2, Lcom/google/android/picasastore/Config;->sThumbNailSize:I

    const/4 v5, 0x1

    invoke-static {v6, v2, v5}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v16

    .line 297
    .local v16, "downloadUrl":Ljava/lang/String;
    new-instance v9, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-wide v11, v3

    move-object v15, v6

    invoke-direct/range {v9 .. v15}, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;-><init>(Lcom/google/android/picasastore/PicasaStore;JIILjava/lang/String;)V

    .line 299
    .local v9, "register":Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    const/4 v2, 0x0

    new-instance v10, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;

    move-object/from16 v11, p0

    move-wide v12, v3

    move-object/from16 v14, v16

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;-><init>(Lcom/google/android/picasastore/PicasaStore;JLjava/lang/String;Lcom/google/android/picasastore/PicasaStore$DownloadListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto/16 :goto_0

    .line 301
    .end local v9    # "register":Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    .end local v16    # "downloadUrl":Ljava/lang/String;
    :catch_1
    move-exception v23

    .line 302
    .local v23, "t":Ljava/lang/Throwable;
    const-string v2, "PicasaStore"

    const-string v5, "download fail"

    move-object/from16 v0, v23

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 309
    const-string v4, "w"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :cond_0
    const-string v4, "type"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "type":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/picasastore/PicasaStore;->getItemIdFromUri(Landroid/net/Uri;)J

    move-result-wide v1

    .line 317
    .local v1, "id":J
    const-string v4, "content_url"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "contentUrl":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_3

    .line 322
    const-string v4, "screennail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 323
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/picasastore/PicasaStore;->openScreenNail(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 332
    :goto_0
    return-object v4

    .line 324
    :cond_1
    const-string v4, "thumbnail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/picasastore/PicasaStore;->openThumbNail(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/picasastore/PicasaStore;->openFullImage(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_0

    .line 329
    :cond_3
    if-eqz v0, :cond_4

    .line 332
    invoke-direct {p0, v0, v3}, Lcom/google/android/picasastore/PicasaStore;->openUnknownImage(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_0

    .line 334
    :cond_4
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public openFullImage(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "id"    # J
    .param p3, "contentUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 354
    :try_start_0
    const-string v2, ".full"

    invoke-static {p1, p2, v2}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 355
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 356
    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 364
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "PicasaStore"

    const-string v3, "openFullImage from cache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    .line 364
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasastore/PicasaStore;->findInCacheOrDownload(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto :goto_0
.end method

.method public openScreenNail(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .param p1, "id"    # J
    .param p3, "contentUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 396
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/google/android/picasastore/PicasaStore;->lookupBlobCache(JILjava/lang/String;)Lcom/google/android/picasastore/PicasaStore$ImagePack;

    move-result-object v8

    .line 397
    .local v8, "pack":Lcom/google/android/picasastore/PicasaStore$ImagePack;
    if-eqz v8, :cond_0

    .line 398
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mImagePackWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    invoke-direct {p0, v8, v1}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 419
    :goto_0
    return-object v1

    .line 403
    :cond_0
    :try_start_0
    const-string v1, ".screen"

    invoke-static {p1, p2, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 404
    .local v7, "file":Ljava/io/File;
    if-eqz v7, :cond_1

    .line 405
    const/high16 v1, 0x10000000

    invoke-static {v7, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 407
    .end local v7    # "file":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 408
    .local v9, "t":Ljava/lang/Throwable;
    const-string v1, "PicasaStore"

    const-string v2, "openScreenNail from cache"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_1
    if-nez p3, :cond_2

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1

    .line 415
    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;-><init>(Lcom/google/android/picasastore/PicasaStore;JIILjava/lang/String;)V

    .line 417
    .local v0, "register":Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    sget v1, Lcom/google/android/picasastore/Config;->sScreenNailSize:I

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "downloadUrl":Ljava/lang/String;
    const/4 v10, 0x0

    new-instance v1, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;-><init>(Lcom/google/android/picasastore/PicasaStore;JLjava/lang/String;Lcom/google/android/picasastore/PicasaStore$DownloadListener;)V

    invoke-direct {p0, v10, v1}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 421
    .end local v0    # "register":Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    .end local v5    # "downloadUrl":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 422
    .restart local v9    # "t":Ljava/lang/Throwable;
    const-string v1, "PicasaStore"

    const-string v2, "download fail"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1
.end method

.method public openThumbNail(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 25
    .param p1, "id"    # J
    .param p3, "contentUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 433
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/picasastore/PicasaStore;->lookupBlobCache(JILjava/lang/String;)Lcom/google/android/picasastore/PicasaStore$ImagePack;

    move-result-object v22

    .line 436
    .local v22, "pack":Lcom/google/android/picasastore/PicasaStore$ImagePack;
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasastore/PicasaStore;->mImagePackWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 502
    :goto_0
    return-object v4

    .line 442
    :cond_0
    :try_start_0
    const-string v4, ".screen"

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v4}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 443
    .local v19, "file":Ljava/io/File;
    if-eqz v19, :cond_2

    .line 444
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 445
    .local v20, "filepath":Ljava/lang/String;
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 446
    .local v21, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 447
    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 448
    sget v4, Lcom/google/android/picasastore/Config;->sThumbNailSize:I

    int-to-float v4, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 451
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 452
    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 453
    .local v18, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v18, :cond_1

    .line 454
    sget v4, Lcom/google/android/picasastore/Config;->sThumbNailSize:I

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 455
    const/16 v4, 0x5f

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v10

    .line 457
    .local v10, "content":[B
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/picasastore/PicasaStore;->putBlobCache(JILjava/lang/String;I[B)V

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasastore/PicasaStore;->mBytesWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_0

    .line 460
    .end local v10    # "content":[B
    :cond_1
    const-string v4, "PicasaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid prefetch file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "filepath":Ljava/lang/String;
    .end local v21    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/picasastore/PicasaStore;->lookupBlobCache(JILjava/lang/String;)Lcom/google/android/picasastore/PicasaStore$ImagePack;

    move-result-object v23

    .line 469
    .local v23, "sPack":Lcom/google/android/picasastore/PicasaStore$ImagePack;
    if-eqz v23, :cond_3

    .line 470
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 471
    .restart local v21    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 472
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->data:[B

    move-object/from16 v0, v23

    iget v5, v0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->offset:I

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->data:[B

    array-length v6, v6

    move-object/from16 v0, v23

    iget v7, v0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->offset:I

    sub-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 474
    sget v4, Lcom/google/android/picasastore/Config;->sThumbNailSize:I

    int-to-float v4, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 477
    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 478
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->data:[B

    move-object/from16 v0, v23

    iget v5, v0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->offset:I

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->data:[B

    array-length v6, v6

    move-object/from16 v0, v23

    iget v7, v0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->offset:I

    sub-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 480
    .restart local v18    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v18, :cond_3

    .line 481
    sget v4, Lcom/google/android/picasastore/Config;->sThumbNailSize:I

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 482
    const/16 v4, 0x5f

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v10

    .line 484
    .restart local v10    # "content":[B
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/picasastore/PicasaStore;->putBlobCache(JILjava/lang/String;I[B)V

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasastore/PicasaStore;->mBytesWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto/16 :goto_0

    .line 463
    .end local v10    # "content":[B
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .end local v21    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v23    # "sPack":Lcom/google/android/picasastore/PicasaStore$ImagePack;
    :catch_0
    move-exception v24

    .line 464
    .local v24, "t":Ljava/lang/Throwable;
    const-string v4, "PicasaStore"

    const-string v5, "openThumbNail from screennail"

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 491
    .end local v24    # "t":Ljava/lang/Throwable;
    .restart local v23    # "sPack":Lcom/google/android/picasastore/PicasaStore$ImagePack;
    :cond_3
    if-eqz v22, :cond_4

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasastore/PicasaStore;->mImagePackWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto/16 :goto_0

    .line 496
    :cond_4
    if-nez p3, :cond_5

    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4

    .line 498
    :cond_5
    :try_start_1
    new-instance v11, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v12, p0

    move-wide/from16 v13, p1

    move-object/from16 v17, p3

    invoke-direct/range {v11 .. v17}, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;-><init>(Lcom/google/android/picasastore/PicasaStore;JIILjava/lang/String;)V

    .line 500
    .local v11, "register":Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    sget v4, Lcom/google/android/picasastore/Config;->sThumbNailSize:I

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v8

    .line 502
    .local v8, "downloadUrl":Ljava/lang/String;
    const/4 v12, 0x0

    new-instance v4, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;-><init>(Lcom/google/android/picasastore/PicasaStore;JLjava/lang/String;Lcom/google/android/picasastore/PicasaStore$DownloadListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_0

    .line 504
    .end local v8    # "downloadUrl":Ljava/lang/String;
    .end local v11    # "register":Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    :catch_1
    move-exception v24

    .line 505
    .restart local v24    # "t":Ljava/lang/Throwable;
    const-string v4, "PicasaStore"

    const-string v5, "download fail"

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
.end method
