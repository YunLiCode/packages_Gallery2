.class public Lcom/google/android/picasasync/PicasaSyncManager;
.super Ljava/lang/Object;
.source "PicasaSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;,
        Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;,
        Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/android/picasasync/PicasaSyncManager;


# instance fields
.field private mBackgroundData:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

.field private final mFacade:Lcom/google/android/picasasync/PicasaFacade;

.field private mHasWifiConnectivity:Z

.field private final mInvalidAccounts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPlugged:Z

.field private mIsRoaming:Z

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/picasasync/SyncTaskProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncHandler:Landroid/os/Handler;

.field private final mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

.field private mSyncRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    .line 73
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    .line 75
    iput-boolean v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    .line 76
    iput-boolean v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    .line 77
    iput-boolean v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    .line 78
    iput-boolean v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    .line 106
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    .line 107
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    .line 109
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "picasa-sync-manager"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 111
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 112
    invoke-direct {p0, v1}, Lcom/google/android/picasasync/PicasaSyncManager;->initSyncHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    .line 114
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 117
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaSyncManager$1;-><init>(Lcom/google/android/picasasync/PicasaSyncManager;)V

    .line 127
    .local v0, "accountListener":Landroid/accounts/OnAccountsUpdateListener;
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 128
    return-void
.end method

.method private acceptSyncTask(Lcom/google/android/picasasync/SyncTask;)Z
    .locals 6
    .param p1, "task"    # Lcom/google/android/picasasync/SyncTask;

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x0

    .line 318
    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isAutoSync()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because master auto sync is off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p1, v5}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    .line 371
    :goto_0
    return v1

    .line 325
    :cond_0
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p1, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 328
    .local v0, "doAutoSync":Z
    if-nez v0, :cond_1

    .line 329
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because auto sync is off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p1, v5}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto :goto_0

    .line 334
    .end local v0    # "doAutoSync":Z
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isBackgroundSync()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for disabled background data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto :goto_0

    .line 339
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isSyncOnBattery()Z

    move-result v2

    if-nez v2, :cond_3

    .line 340
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on battery"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto/16 :goto_0

    .line 344
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    if-nez v2, :cond_5

    .line 345
    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isSyncOnWifiOnly()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 346
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for non-wifi connection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto/16 :goto_0

    .line 349
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isSyncOnRoaming()Z

    move-result v2

    if-nez v2, :cond_5

    .line 350
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto/16 :goto_0

    .line 356
    :cond_5
    invoke-static {}, Lcom/google/android/picasasync/PicasaSyncManager;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isSyncOnExternalStorageOnly()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 357
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on external storage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto/16 :goto_0

    .line 362
    :cond_6
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v2

    .line 363
    :try_start_0
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    iget-object v4, p1, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 364
    const-string v3, "PicasaSyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reject "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for invalid account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    monitor-exit v2

    goto/16 :goto_0

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/PicasaSyncManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/PicasaSyncManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/PicasaSyncManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->setupTaskProviders()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/PicasaSyncManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->checkSyncRequests()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/PicasaSyncManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateEnvironment()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/picasasync/PicasaSyncManager;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/PicasaSyncManager;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->updateBatteryState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/PicasaSyncManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasksInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/picasasync/PicasaSyncManager;)Lcom/google/android/picasasync/PicasaFacade;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/PicasaSyncManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/picasasync/PicasaSyncManager;)Lcom/google/android/picasasync/PicasaSyncHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/PicasaSyncManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/picasasync/PicasaSyncManager;Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/PicasaSyncManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;

    move-result-object v0

    return-object v0
.end method

.method private checkSyncRequests()V
    .locals 10

    .prologue
    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    .line 218
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    .line 219
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    const/4 v6, 0x0

    .line 221
    .local v6, "updated":Z
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v8}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 223
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 224
    .local v0, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/UserEntry;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;

    .line 225
    .local v5, "request":Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    iget-object v8, v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->account:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 226
    if-nez v0, :cond_1

    .line 227
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v8}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    .line 229
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/picasasync/UserEntry;

    .line 230
    .local v7, "user":Lcom/google/android/picasasync/UserEntry;
    iget-object v8, v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->state:Lcom/google/android/picasasync/SyncState;

    iget-object v9, v7, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/google/android/picasasync/SyncState;->onSyncRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v6, v8

    goto :goto_1

    .line 219
    .end local v0    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/UserEntry;>;"
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;>;"
    .end local v5    # "request":Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    .end local v6    # "updated":Z
    .end local v7    # "user":Lcom/google/android/picasasync/UserEntry;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 233
    .restart local v0    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/UserEntry;>;"
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;>;"
    .restart local v5    # "request":Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    .restart local v6    # "updated":Z
    :cond_2
    iget-object v8, v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->state:Lcom/google/android/picasasync/SyncState;

    iget-object v9, v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->account:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/google/android/picasasync/SyncState;->onSyncRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v6, v8

    goto :goto_0

    .line 236
    .end local v5    # "request":Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    :cond_3
    if-eqz v6, :cond_4

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v8, v9}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 237
    :cond_4
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const-class v1, Lcom/google/android/picasasync/PicasaSyncManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncManager;->sInstance:Lcom/google/android/picasasync/PicasaSyncManager;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncManager;->sInstance:Lcom/google/android/picasasync/PicasaSyncManager;

    .line 101
    :cond_0
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncManager;->sInstance:Lcom/google/android/picasasync/PicasaSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNextSyncTask(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V
    .locals 5
    .param p1, "session"    # Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .prologue
    .line 394
    const-string v3, "PicasaSyncManager.getNextSyncTask"

    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 395
    .local v2, "statsId":I
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;

    invoke-direct {v3, p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;-><init>(Lcom/google/android/picasasync/PicasaSyncManager;Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 397
    .local v1, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    .line 404
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "PicasaSyncManager"

    const-string v4, "fail to get next task"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initSyncHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .locals 2
    .param p1, "thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 156
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/PicasaSyncManager$2;-><init>(Lcom/google/android/picasasync/PicasaSyncManager;Landroid/os/Looper;)V

    return-object v0
.end method

.method private static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidAccount(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 449
    iget-object v5, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 450
    .local v3, "manager":Landroid/accounts/AccountManager;
    const-string v5, "com.google"

    invoke-virtual {v3, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .local v0, "arr$":[Landroid/accounts/Account;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 451
    .local v4, "x":Landroid/accounts/Account;
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 453
    .end local v4    # "x":Landroid/accounts/Account;
    :goto_1
    return v5

    .line 450
    .restart local v4    # "x":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v4    # "x":Landroid/accounts/Account;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static isWifiNetwork(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 240
    packed-switch p0, :pswitch_data_0

    .line 249
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 247
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;
    .locals 8
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 431
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 432
    iget-object v7, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/SyncTaskProvider;

    .line 433
    .local v3, "provider":Lcom/google/android/picasasync/SyncTaskProvider;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/SyncTask;>;"
    invoke-interface {v3, v6}, Lcom/google/android/picasasync/SyncTaskProvider;->collectTasks(Ljava/util/Collection;)V

    .line 435
    const/4 v4, 0x0

    .line 436
    .local v4, "result":Lcom/google/android/picasasync/SyncTask;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/picasasync/SyncTask;

    .line 437
    .local v5, "task":Lcom/google/android/picasasync/SyncTask;
    iput v0, v5, Lcom/google/android/picasasync/SyncTask;->mPriority:I

    .line 438
    invoke-direct {p0, v5}, Lcom/google/android/picasasync/PicasaSyncManager;->acceptSyncTask(Lcom/google/android/picasasync/SyncTask;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 439
    if-eqz v4, :cond_1

    iget-object v7, v5, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 440
    :cond_1
    move-object v4, v5

    goto :goto_1

    .line 443
    .end local v5    # "task":Lcom/google/android/picasasync/SyncTask;
    :cond_2
    if-eqz v4, :cond_3

    .line 445
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "provider":Lcom/google/android/picasasync/SyncTaskProvider;
    .end local v4    # "result":Lcom/google/android/picasasync/SyncTask;
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/SyncTask;>;"
    :goto_2
    return-object v4

    .line 431
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "provider":Lcom/google/android/picasasync/SyncTaskProvider;
    .restart local v4    # "result":Lcom/google/android/picasasync/SyncTask;
    .restart local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/SyncTask;>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "provider":Lcom/google/android/picasasync/SyncTaskProvider;
    .end local v4    # "result":Lcom/google/android/picasasync/SyncTask;
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/SyncTask;>;"
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private onAccountInvalid(Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 457
    const-string v0, "PicasaSyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed ?!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 460
    monitor-exit v1

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private performSyncInternal(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V
    .locals 8
    .param p1, "session"    # Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .prologue
    const/4 v7, 0x0

    .line 536
    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    iget-object v1, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 537
    .local v1, "syncStats":Landroid/content/SyncStats;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->isSyncCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 538
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->getNextSyncTask(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V

    .line 539
    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->account:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    iget-object v4, v4, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 563
    :cond_1
    :goto_0
    return-void

    .line 542
    :cond_2
    :try_start_0
    const-string v3, "PicasaSyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perform sync task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    iget-object v4, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    invoke-virtual {v3, v4}, Lcom/google/android/picasasync/SyncTask;->performSync(Landroid/content/SyncResult;)V

    .line 544
    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    invoke-virtual {v3}, Landroid/content/SyncResult;->hasError()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 545
    const-string v3, "PicasaSyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync complete w error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :cond_3
    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    .line 556
    :goto_1
    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 558
    const-string v3, "PicasaSyncManager"

    const-string v4, "stop sync session due to io error"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p1}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->cancelSync()V

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "PicasaSyncManager"

    const-string v4, "perform sync fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    goto :goto_1

    .line 550
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 551
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "PicasaSyncManager"

    const-string v4, "perform sync fail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    goto :goto_1

    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    throw v3
.end method

.method private declared-synchronized requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V
    .locals 2
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/google/android/picasasync/SyncState;

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;

    invoke-direct {v1, p1, p2}, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;-><init>(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setupTaskProviders()V
    .locals 5

    .prologue
    .line 134
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v0

    .line 136
    .local v0, "uploads":Lcom/google/android/picasasync/UploadsManager;
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/picasasync/MetadataSync;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/android/picasasync/MetadataSync;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsManager;->getManualPhotoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsManager;->getManualVideoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/picasasync/MetadataSync;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/picasasync/MetadataSync;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/picasasync/PhotoPrefetch;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/google/android/picasasync/PhotoPrefetch;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/android/picasasync/PhotoPrefetch;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    monitor-exit p0

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateBatteryState(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "plugged"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x1

    .line 293
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    if-nez p1, :cond_3

    .line 297
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 301
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 302
    const-string v3, "PicasaSyncManager"

    const-string v4, "there is no battery info yet"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 305
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v4, "plugged"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 306
    .local v0, "extra":I
    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 309
    .end local v0    # "extra":I
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v3, "PicasaSyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "battery info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-boolean v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 311
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    .line 312
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasksInternal()V

    goto :goto_0

    .line 306
    .restart local v0    # "extra":I
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateEnvironment()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 260
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, "environmentChanged":Z
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 267
    .local v5, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 268
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/picasasync/PicasaSyncManager;->isWifiNetwork(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move v2, v6

    .line 269
    .local v2, "hasWifiConnection":Z
    :goto_0
    iget-boolean v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    if-eq v2, v8, :cond_0

    .line 270
    const/4 v1, 0x1

    .line 271
    iput-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    .line 272
    const-string v8, "PicasaSyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "active network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v6

    .line 276
    .local v4, "isRoaming":Z
    :goto_1
    iget-boolean v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    if-eq v4, v6, :cond_1

    .line 277
    const/4 v1, 0x1

    .line 278
    iput-boolean v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    .line 282
    :cond_1
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 283
    .local v0, "backgroundData":Z
    iget-boolean v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    if-eq v6, v0, :cond_2

    .line 284
    const/4 v1, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    .line 286
    const-string v6, "PicasaSyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "background data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasksInternal()V

    .line 290
    :cond_3
    return-void

    .end local v0    # "backgroundData":Z
    .end local v2    # "hasWifiConnection":Z
    .end local v4    # "isRoaming":Z
    :cond_4
    move v2, v7

    .line 268
    goto :goto_0

    .restart local v2    # "hasWifiConnection":Z
    :cond_5
    move v4, v7

    .line 275
    goto :goto_1
.end method

.method private updateTasksInternal()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 465
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 466
    .local v4, "session":Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;
    :goto_0
    if-nez v4, :cond_3

    .line 467
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/android/picasasync/PicasaSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;

    move-result-object v5

    .line 469
    .local v5, "task":Lcom/google/android/picasasync/SyncTask;
    if-nez v5, :cond_1

    .line 503
    .end local v5    # "task":Lcom/google/android/picasasync/SyncTask;
    :cond_0
    :goto_1
    return-void

    .line 471
    .restart local v5    # "task":Lcom/google/android/picasasync/SyncTask;
    :cond_1
    new-instance v0, Landroid/accounts/Account;

    iget-object v6, v5, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-direct {v0, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->isValidAccount(Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 475
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 476
    .local v2, "extras":Landroid/os/Bundle;
    const-string v6, "picasa-sync-manager-requested"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 477
    const-string v6, "ignore_settings"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    const-string v6, "PicasaSyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request sync for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 482
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/picasasync/PicasaSyncManager;->onAccountInvalid(Ljava/lang/String;)V

    .line 484
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 485
    goto :goto_0

    .line 487
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v5    # "task":Lcom/google/android/picasasync/SyncTask;
    :cond_3
    iget-object v1, v4, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    .line 488
    .local v1, "current":Lcom/google/android/picasasync/SyncTask;
    if-eqz v1, :cond_0

    .line 491
    invoke-direct {p0, v1}, Lcom/google/android/picasasync/PicasaSyncManager;->acceptSyncTask(Lcom/google/android/picasasync/SyncTask;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 492
    const-string v6, "PicasaSyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stop task: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " due to environment change"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncTask;->cancelSync()V

    goto :goto_1

    .line 498
    :cond_4
    iget-object v6, v4, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->account:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/picasasync/PicasaSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;

    move-result-object v3

    .line 499
    .local v3, "next":Lcom/google/android/picasasync/SyncTask;
    if-eqz v3, :cond_0

    iget v6, v3, Lcom/google/android/picasasync/SyncTask;->mPriority:I

    iget v7, v1, Lcom/google/android/picasasync/SyncTask;->mPriority:I

    if-ge v6, v7, :cond_0

    .line 500
    const-string v6, "PicasaSyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancel task: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncTask;->cancelSync()V

    goto/16 :goto_1
.end method


# virtual methods
.method public createSession(Ljava/lang/String;Landroid/content/SyncResult;)Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;
    .locals 1
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/content/SyncResult;

    .prologue
    .line 532
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-direct {v0, p1, p2}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;-><init>(Ljava/lang/String;Landroid/content/SyncResult;)V

    return-object v0
.end method

.method public declared-synchronized onAccountInitialized(Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v2, p1}, Lcom/google/android/picasasync/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;

    move-result-object v1

    .line 409
    .local v1, "user":Lcom/google/android/picasasync/UserEntry;
    if-nez v1, :cond_0

    .line 410
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 411
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/google/android/picasasync/UserEntry;

    .end local v1    # "user":Lcom/google/android/picasasync/UserEntry;
    invoke-direct {v1, p1}, Lcom/google/android/picasasync/UserEntry;-><init>(Ljava/lang/String;)V

    .line 412
    .restart local v1    # "user":Lcom/google/android/picasasync/UserEntry;
    sget-object v2, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 414
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/google/android/picasasync/GooglePhotoUtils;->insertAccount(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 408
    .end local v1    # "user":Lcom/google/android/picasasync/UserEntry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onBatteryStateChanged(Z)V
    .locals 4
    .param p1, "plugged"    # Z

    .prologue
    .line 209
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    if-eqz p1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    return-void

    .line 209
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public onEnvironmentChanged()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    return-void
.end method

.method public performSync(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V
    .locals 5
    .param p1, "session"    # Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .prologue
    const/4 v4, 0x0

    .line 567
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 572
    monitor-enter p0

    .line 573
    :try_start_0
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/picasasync/SyncTaskProvider;

    .local v1, "provider":Lcom/google/android/picasasync/SyncTaskProvider;
    invoke-interface {v1}, Lcom/google/android/picasasync/SyncTaskProvider;->onSyncStart()V

    goto :goto_0

    .line 574
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "provider":Lcom/google/android/picasasync/SyncTaskProvider;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->performSyncInternal(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V

    .line 579
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 582
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 583
    :try_start_3
    iget-boolean v2, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mSyncCancelled:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 584
    :cond_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 586
    iput-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 588
    return-void

    .line 584
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 586
    :catchall_2
    move-exception v2

    iput-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    throw v2
.end method

.method public requestAccountSync()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 603
    return-void
.end method

.method public requestMetadataSync(Z)V
    .locals 2
    .param p1, "manual"    # Z

    .prologue
    .line 598
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 599
    return-void

    .line 598
    :cond_0
    sget-object v0, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    goto :goto_0
.end method

.method public requestPrefetchSync()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 591
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch;->onRequestSync(Landroid/content/Context;)V

    .line 592
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 593
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 594
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 595
    return-void
.end method

.method public resetSyncStates()V
    .locals 4

    .prologue
    .line 418
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v3

    .line 419
    :try_start_0
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 420
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 423
    monitor-enter p0

    .line 424
    :try_start_1
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/picasasync/SyncTaskProvider;

    .line 425
    .local v1, "provider":Lcom/google/android/picasasync/SyncTaskProvider;
    invoke-interface {v1}, Lcom/google/android/picasasync/SyncTaskProvider;->resetSyncStates()V

    goto :goto_0

    .line 427
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "provider":Lcom/google/android/picasasync/SyncTaskProvider;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 420
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 427
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 428
    return-void
.end method

.method public updateTasks(J)V
    .locals 2
    .param p1, "delay"    # J

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 202
    return-void
.end method
