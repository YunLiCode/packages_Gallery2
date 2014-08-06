.class Lcom/google/android/picasastore/PicasaStore$4;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasastore/PicasaStore;

.field final synthetic val$args:Ljava/lang/Object;

.field final synthetic val$func:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

.field final synthetic val$pipe:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/google/android/picasastore/PicasaStore;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStore$4;->this$0:Lcom/google/android/picasastore/PicasaStore;

    iput-object p2, p0, Lcom/google/android/picasastore/PicasaStore$4;->val$func:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    iput-object p3, p0, Lcom/google/android/picasastore/PicasaStore$4;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/google/android/picasastore/PicasaStore$4;->val$args:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Lcom/google/android/picasastore/PicasaStore$4;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4
    .param p1, "jc"    # Lcom/android/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v3, 0x1

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore$4;->val$func:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore$4;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore$4;->val$args:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    const/4 v0, 0x0

    .line 822
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore$4;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore$4;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method
