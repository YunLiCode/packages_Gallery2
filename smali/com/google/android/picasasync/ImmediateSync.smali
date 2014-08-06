.class Lcom/google/android/picasasync/ImmediateSync;
.super Ljava/lang/Object;
.source "ImmediateSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/ImmediateSync$Task;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/android/picasasync/ImmediateSync;


# instance fields
.field private final mCompleteTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/ImmediateSync$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPendingTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/ImmediateSync$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    .line 116
    new-instance v0, Lcom/android/gallery3d/util/ThreadPool;

    invoke-direct {v0}, Lcom/android/gallery3d/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/ImmediateSync;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 119
    iput-object p1, p0, Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/ImmediateSync;Lcom/google/android/picasasync/ImmediateSync$Task;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/ImmediateSync;
    .param p1, "x1"    # Lcom/google/android/picasasync/ImmediateSync$Task;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/ImmediateSync;->completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/ImmediateSync;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/ImmediateSync;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized completeTask(Lcom/google/android/picasasync/ImmediateSync$Task;)V
    .locals 5
    .param p1, "task"    # Lcom/google/android/picasasync/ImmediateSync$Task;

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/picasasync/ImmediateSync$Task;->taskId:Ljava/lang/String;

    .line 315
    .local v0, "taskId":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 316
    const-string v2, "ImmediateSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new task added, ignored old:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 319
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->getSyncRequestUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 324
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 326
    iget v2, p1, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    if-eqz v2, :cond_0

    .line 327
    const-string v2, "ImmediateSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " incomplete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    .end local v0    # "taskId":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private createTaskId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createTaskId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-class v1, Lcom/google/android/picasasync/ImmediateSync;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/picasasync/ImmediateSync;->sInstance:Lcom/google/android/picasasync/ImmediateSync;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/google/android/picasasync/ImmediateSync;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/ImmediateSync;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/ImmediateSync;->sInstance:Lcom/google/android/picasasync/ImmediateSync;

    .line 105
    :cond_0
    sget-object v0, Lcom/google/android/picasasync/ImmediateSync;->sInstance:Lcom/google/android/picasasync/ImmediateSync;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private varargs requestSyncAlbumList(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "accountArgs"    # [Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Lcom/google/android/picasasync/ImmediateSync$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/picasasync/ImmediateSync$1;-><init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;[Ljava/lang/String;)V

    .line 234
    .local v0, "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    iget-object v1, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lcom/google/android/picasasync/ImmediateSync;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    .line 236
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelTask(Ljava/lang/String;)Z
    .locals 4
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    const-string v1, "ImmediateSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/ImmediateSync$Task;

    .line 335
    .local v0, "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    if-lez v1, :cond_1

    .line 336
    iget v1, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->refCount:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/picasasync/ImmediateSync$Task;->cancelSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_0
    const/4 v1, 0x1

    .line 339
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 333
    .end local v0    # "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getResult(Ljava/lang/String;)I
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/ImmediateSync$Task;

    .line 348
    .local v0, "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    check-cast v0, Lcom/google/android/picasasync/ImmediateSync$Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .restart local v0    # "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x3

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    iget v1, v0, Lcom/google/android/picasasync/ImmediateSync$Task;->syncResultCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    .end local v0    # "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized requestSyncAlbum(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v2

    .line 244
    .local v2, "dbHelper":Lcom/google/android/picasasync/PicasaDatabaseHelper;
    const/4 v5, 0x0

    invoke-virtual {v2, v5, p1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getAlbumEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/picasasync/AlbumEntry;

    move-result-object v1

    .line 245
    .local v1, "album":Lcom/google/android/picasasync/AlbumEntry;
    if-nez v1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "album does not exist"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v1    # "album":Lcom/google/android/picasasync/AlbumEntry;
    .end local v2    # "dbHelper":Lcom/google/android/picasasync/PicasaDatabaseHelper;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 247
    .restart local v1    # "album":Lcom/google/android/picasasync/AlbumEntry;
    .restart local v2    # "dbHelper":Lcom/google/android/picasasync/PicasaDatabaseHelper;
    :cond_0
    :try_start_1
    iget-wide v5, v1, Lcom/google/android/picasasync/AlbumEntry;->userId:J

    invoke-virtual {v2, v5, v6}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getUserAccount(J)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "account":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/google/android/picasasync/ImmediateSync;->createTaskId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "taskId":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/ImmediateSync$Task;

    .line 252
    .local v3, "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/picasasync/ImmediateSync$Task;->addRequester()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    const-string v5, "ImmediateSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "task already exists:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :goto_0
    monitor-exit p0

    return-object v4

    .line 256
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v3, Lcom/google/android/picasasync/ImmediateSync$2;

    .end local v3    # "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    invoke-direct {v3, p0, v4, v0, v1}, Lcom/google/android/picasasync/ImmediateSync$2;-><init>(Lcom/google/android/picasasync/ImmediateSync;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/picasasync/AlbumEntry;)V

    .line 299
    .restart local v3    # "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v5, p0, Lcom/google/android/picasasync/ImmediateSync;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized requestSyncAlbumListForAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/ImmediateSync;->createTaskId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "taskId":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/ImmediateSync$Task;

    .line 148
    .local v0, "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/picasasync/ImmediateSync$Task;->addRequester()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const-string v2, "ImmediateSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task already exists:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    monitor-exit p0

    return-object v1

    .line 152
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbumList(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    .end local v0    # "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    .end local v1    # "taskId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized requestSyncAlbumListForAllAccounts()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    const-string v1, "all"

    .line 129
    .local v1, "taskId":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mPendingTaskMap:Ljava/util/HashMap;

    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/ImmediateSync$Task;

    .line 130
    .local v0, "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/picasasync/ImmediateSync$Task;->addRequester()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "ImmediateSync"

    const-string v3, "task already exists:all"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v2, "all"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    monitor-exit p0

    return-object v2

    .line 134
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/picasasync/ImmediateSync;->mCompleteTaskMap:Ljava/util/HashMap;

    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v3, "all"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbumList(Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    const-string v2, "all"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "task":Lcom/google/android/picasasync/ImmediateSync$Task;
    .end local v1    # "taskId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
