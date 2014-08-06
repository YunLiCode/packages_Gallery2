.class Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;
.super Ljava/lang/Object;
.source "CanvasProvider.java"

# interfaces
.implements Lcom/android/photos/data/MediaCache$OriginalReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/canvas/CanvasProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheImageWaiter"
.end annotation


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getFile(J)Ljava/io/File;
    .locals 7
    .param p1, "maxWait"    # J

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    .line 168
    .local v3, "now":J
    add-long v1, v3, p1

    .line 170
    .local v1, "endTime":J
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;->mFile:Ljava/io/File;

    if-nez v5, :cond_0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 171
    sub-long v5, v1, v3

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "GalleryCanvasProvider"

    const-string v6, "Unexpected interruption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v5, p0, Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;->mFile:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v5

    .line 167
    .end local v1    # "endTime":J
    .end local v3    # "now":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public copyToPipe(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 152
    .local v2, "in":Ljava/io/InputStream;
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-direct {p0, v4, v5}, Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;->getFile(J)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 153
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 161
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 162
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 164
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 156
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_2
    invoke-static {v3, p1}, Lcom/android/photos/data/MediaCacheUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 162
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 163
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 158
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "GalleryCanvasProvider"

    const-string v5, "Could not open cached file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 162
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 162
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 161
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 158
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 146
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;->getFile(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized originalReady(Ljava/io/File;)V
    .locals 1
    .param p1, "originalFile"    # Ljava/io/File;

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;->mFile:Ljava/io/File;

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
