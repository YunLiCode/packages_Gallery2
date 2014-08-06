.class public Lcom/android/gallery3d/picasasource/CancelableInputStream;
.super Ljava/io/InputStream;
.source "CancelableInputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static sExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mBuffer:[B

.field private volatile mCancelled:Z

.field private mInput:Ljava/io/InputStream;

.field private mLength:I

.field private mOffset:I

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private mReadCount:I

.field private mReadThread:Ljava/lang/Thread;

.field private mReadyToRead:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V
    .locals 1
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadyToRead:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadThread:Ljava/lang/Thread;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mCancelled:Z

    .line 55
    iput-object p2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mUri:Landroid/net/Uri;

    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mProvider:Landroid/content/ContentProviderClient;

    .line 57
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mCancelled:Z

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadyToRead:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mInput:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    monitor-exit p0

    return-void

    .line 150
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 70
    .local v0, "content":[B
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/picasasource/CancelableInputStream;->read([B)I

    move-result v1

    .line 71
    .local v1, "rc":I
    if-lez v1, :cond_0

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, -0x1

    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 79
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadyToRead:Z

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 81
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mBuffer:[B

    .line 82
    iput p2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mOffset:I

    .line 83
    iput p3, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mLength:I

    .line 84
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadyToRead:Z

    .line 86
    sget-object v2, Lcom/android/gallery3d/picasasource/CancelableInputStream;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    :goto_1
    iget-boolean v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadyToRead:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 90
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "CancelableInputStream"

    const-string v3, "unexpected interrupt"

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 76
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 95
    :cond_2
    :try_start_4
    iget-boolean v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mCancelled:Z

    if-nez v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 100
    iget-boolean v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mCancelled:Z

    if-eqz v2, :cond_0

    .line 139
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 105
    .local v0, "hasError":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mInput:Ljava/io/InputStream;

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 107
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mInput:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mCancelled:Z

    if-nez v2, :cond_2

    .line 116
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadThread:Ljava/lang/Thread;

    .line 118
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :try_start_3
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mInput:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mBuffer:[B

    iget v4, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mOffset:I

    iget v5, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mLength:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadCount:I

    .line 120
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 121
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadThread:Ljava/lang/Thread;

    .line 122
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 123
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 130
    :cond_2
    :goto_2
    monitor-enter p0

    .line 131
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mCancelled:Z

    .line 132
    :cond_3
    iget-boolean v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mCancelled:Z

    if-eqz v2, :cond_4

    .line 133
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mInput:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 134
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 136
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/picasasource/CancelableInputStream;->mReadyToRead:Z

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "CancelableInputStream"

    const-string v3, "cannot open file"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v0, 0x1

    goto :goto_1

    .line 118
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 124
    :catch_1
    move-exception v1

    .line 125
    .restart local v1    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 126
    const-string v2, "CancelableInputStream"

    const-string v3, "Error in read"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 123
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
.end method
