.class Lcom/google/android/picasastore/PicasaStore$3;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasastore/PicasaStore;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/PicasaStore;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStore$3;->this$0:Lcom/google/android/picasastore/PicasaStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 664
    check-cast p2, [B

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/picasastore/PicasaStore$3;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;[B)V

    return-void
.end method

.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;[B)V
    .locals 6
    .param p1, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "content"    # [B

    .prologue
    .line 667
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 669
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 677
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "PicasaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pipe closed early by caller? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 672
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 673
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "PicasaStore"

    const-string v4, "fail to write to pipe"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 675
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method
