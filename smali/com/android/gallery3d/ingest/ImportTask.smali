.class public Lcom/android/gallery3d/ingest/ImportTask;
.super Ljava/lang/Object;
.source "ImportTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ingest/ImportTask$Listener;
    }
.end annotation


# instance fields
.field private mDestAlbumName:Ljava/lang/String;

.field private mDevice:Landroid/mtp/MtpDevice;

.field private mListener:Lcom/android/gallery3d/ingest/ImportTask$Listener;

.field private mObjectsToImport:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDevice;Ljava/util/Collection;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "device"    # Landroid/mtp/MtpDevice;
    .param p3, "destAlbumName"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/mtp/MtpDevice;",
            "Ljava/util/Collection",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "objectsToImport":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/mtp/MtpObjectInfo;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p3, p0, Lcom/android/gallery3d/ingest/ImportTask;->mDestAlbumName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/gallery3d/ingest/ImportTask;->mObjectsToImport:Ljava/util/Collection;

    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/ingest/ImportTask;->mDevice:Landroid/mtp/MtpDevice;

    .line 53
    const-string v1, "power"

    invoke-virtual {p4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 54
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x6

    const-string v2, "MTP Import Task"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ingest/ImportTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 55
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 63
    iget-object v7, p0, Lcom/android/gallery3d/ingest/ImportTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 65
    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 66
    .local v4, "objectsNotImported":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpObjectInfo;>;"
    const/4 v6, 0x0

    .line 67
    .local v6, "visited":I
    iget-object v7, p0, Lcom/android/gallery3d/ingest/ImportTask;->mObjectsToImport:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v5

    .line 68
    .local v5, "total":I
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/ingest/ImportTask;->mDestAlbumName:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 70
    iget-object v7, p0, Lcom/android/gallery3d/ingest/ImportTask;->mObjectsToImport:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpObjectInfo;

    .line 71
    .local v3, "object":Landroid/mtp/MtpObjectInfo;
    add-int/lit8 v6, v6, 0x1

    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "importedPath":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 74
    new-instance v7, Ljava/io/File;

    invoke-virtual {v3}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 75
    iget-object v7, p0, Lcom/android/gallery3d/ingest/ImportTask;->mDevice:Landroid/mtp/MtpDevice;

    invoke-virtual {v3}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v8

    invoke-virtual {v7, v8, v2}, Landroid/mtp/MtpDevice;->importFile(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 76
    const/4 v2, 0x0

    .line 79
    :cond_1
    if-nez v2, :cond_2

    .line 80
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/ingest/ImportTask;->mListener:Lcom/android/gallery3d/ingest/ImportTask$Listener;

    if-eqz v7, :cond_0

    .line 83
    iget-object v7, p0, Lcom/android/gallery3d/ingest/ImportTask;->mListener:Lcom/android/gallery3d/ingest/ImportTask$Listener;

    invoke-interface {v7, v6, v5, v2}, Lcom/android/gallery3d/ingest/ImportTask$Listener;->onImportProgress(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    .end local v0    # "dest":Ljava/io/File;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "importedPath":Ljava/lang/String;
    .end local v3    # "object":Landroid/mtp/MtpObjectInfo;
    .end local v4    # "objectsNotImported":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpObjectInfo;>;"
    .end local v5    # "total":I
    .end local v6    # "visited":I
    :catchall_0
    move-exception v7

    iput-object v9, p0, Lcom/android/gallery3d/ingest/ImportTask;->mListener:Lcom/android/gallery3d/ingest/ImportTask$Listener;

    .line 91
    iget-object v8, p0, Lcom/android/gallery3d/ingest/ImportTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v7

    .line 86
    .restart local v0    # "dest":Ljava/io/File;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "objectsNotImported":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpObjectInfo;>;"
    .restart local v5    # "total":I
    .restart local v6    # "visited":I
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/gallery3d/ingest/ImportTask;->mListener:Lcom/android/gallery3d/ingest/ImportTask$Listener;

    if-eqz v7, :cond_4

    .line 87
    iget-object v7, p0, Lcom/android/gallery3d/ingest/ImportTask;->mListener:Lcom/android/gallery3d/ingest/ImportTask$Listener;

    invoke-interface {v7, v4, v6}, Lcom/android/gallery3d/ingest/ImportTask$Listener;->onImportFinish(Ljava/util/Collection;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_4
    iput-object v9, p0, Lcom/android/gallery3d/ingest/ImportTask;->mListener:Lcom/android/gallery3d/ingest/ImportTask$Listener;

    .line 91
    iget-object v7, p0, Lcom/android/gallery3d/ingest/ImportTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 93
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ingest/ImportTask$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/gallery3d/ingest/ImportTask$Listener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/ingest/ImportTask;->mListener:Lcom/android/gallery3d/ingest/ImportTask$Listener;

    .line 59
    return-void
.end method
