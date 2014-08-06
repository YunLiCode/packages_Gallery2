.class public Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
.super Ljava/lang/Object;
.source "PrefetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PrefetchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrefetchContext"
.end annotation


# instance fields
.field private mCacheListener:Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;

.field private mDownloadFailCount:I

.field private mLastVersion:I

.field private volatile mStopSync:Z

.field private mThread:Ljava/lang/Thread;

.field public result:Landroid/content/SyncResult;

.field final synthetic this$0:Lcom/google/android/picasasync/PrefetchHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PrefetchHelper;Landroid/content/SyncResult;Ljava/lang/Thread;)V
    .locals 1
    .param p2, "syncResult"    # Landroid/content/SyncResult;
    .param p3, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->this$0:Lcom/google/android/picasasync/PrefetchHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 773
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncResult;

    iput-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->result:Landroid/content/SyncResult;

    .line 774
    iput-object p3, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mThread:Ljava/lang/Thread;

    .line 775
    return-void
.end method


# virtual methods
.method public checkCacheConfigVersion()Z
    .locals 2

    .prologue
    .line 782
    iget v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mLastVersion:I

    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->this$0:Lcom/google/android/picasasync/PrefetchHelper;

    # getter for: Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/picasasync/PrefetchHelper;->access$000(Lcom/google/android/picasasync/PrefetchHelper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadFailCount()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mDownloadFailCount:I

    return v0
.end method

.method public onDownloadFinish(JZ)V
    .locals 1
    .param p1, "photoId"    # J
    .param p3, "success"    # Z

    .prologue
    .line 804
    if-eqz p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mDownloadFailCount:I

    .line 805
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mCacheListener:Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mCacheListener:Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;->onDownloadFinish(JZ)V

    .line 808
    :cond_0
    return-void

    .line 804
    :cond_1
    iget v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mDownloadFailCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCacheDownloadListener(Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mCacheListener:Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;

    .line 787
    return-void
.end method

.method public stopSync()V
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mStopSync:Z

    .line 791
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 792
    return-void
.end method

.method public syncInterrupted()Z
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mStopSync:Z

    return v0
.end method

.method public updateCacheConfigVersion()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->this$0:Lcom/google/android/picasasync/PrefetchHelper;

    # getter for: Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/picasasync/PrefetchHelper;->access$000(Lcom/google/android/picasasync/PrefetchHelper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->mLastVersion:I

    .line 779
    return-void
.end method
