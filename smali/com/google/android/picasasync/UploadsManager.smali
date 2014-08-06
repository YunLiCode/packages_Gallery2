.class Lcom/google/android/picasasync/UploadsManager;
.super Ljava/lang/Object;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;,
        Lcom/google/android/picasasync/UploadsManager$UploadTask;
    }
.end annotation


# static fields
.field private static final EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static final PROJECTION_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_DATA:[Ljava/lang/String;

.field private static final PROJECTION_ENABLE_ACCOUNT_WIFI:[Ljava/lang/String;

.field private static final PROJECTION_FINGERPRINT:[Ljava/lang/String;

.field private static final QUERY_MAX_DISPLAY_INDEX:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final UPLOAD_RECORD_TABLE_NAME:Ljava/lang/String;

.field private static final UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/picasasync/UploadsManager;


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

.field private mExternalStorageFsId:I

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsExternalStorageFsIdReady:Z

.field private final mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

.field private mProblematicAccounts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReloadSystemSettingDelay:J

.field private mResetDelay:J

.field private final mSettings:Landroid/content/SharedPreferences;

.field private final mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

.field private mSyncOnBattery:Z

.field private mSyncOnRoaming:Z

.field private mSyncedAccountAlbumPairs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadUrl:Ljava/lang/String;

.field private final mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

.field private mWifiOnlyPhoto:Z

.field private mWifiOnlyVideo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    const-class v0, Lcom/google/android/picasasync/UploadsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->UPLOAD_RECORD_TABLE_NAME:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 87
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "fingerprint"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sync_on_wifi_only"

    aput-object v1, v0, v3

    const-string v1, "video_upload_wifi_only"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "sync_on_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sync_on_battery"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_ENABLE_ACCOUNT_WIFI:[Ljava/lang/String;

    .line 95
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_DATA:[Ljava/lang/String;

    .line 96
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "COUNT(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 118
    const-string v0, "content://media/external/fs_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select MAX(display_index) from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->PHOTO_TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->QUERY_MAX_DISPLAY_INDEX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    .line 154
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;

    .line 163
    iput-boolean v5, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    .line 165
    const-wide/16 v1, 0x3a98

    iput-wide v1, p0, Lcom/google/android/picasasync/UploadsManager;->mResetDelay:J

    .line 166
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/google/android/picasasync/UploadsManager;->mReloadSystemSettingDelay:J

    .line 169
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 171
    new-instance v1, Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-direct {v1, p1}, Lcom/google/android/picasasync/UploadsDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    .line 172
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    .line 173
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    .line 174
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "picasa-uploads-manager"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 178
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 179
    invoke-direct {p0, v0}, Lcom/google/android/picasasync/UploadsManager;->initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    .line 181
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->loadSavedStates()V

    .line 185
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->isAndroidUpgraded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->reset()V

    .line 193
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    new-instance v3, Lcom/google/android/picasasync/UploadsManager$1;

    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/google/android/picasasync/UploadsManager$1;-><init>(Lcom/google/android/picasasync/UploadsManager;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 201
    return-void

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->reloadSystemSettingsInternal()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/UploadsManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->onFsIdChangedInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/UploadsManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->reloadSystemSettingsInternal()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadedEntry;)Lcom/google/android/picasasync/UploadedEntry;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # Lcom/google/android/picasasync/UploadedEntry;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->recordResult(Lcom/google/android/picasasync/UploadedEntry;)Lcom/google/android/picasasync/UploadedEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/picasasync/UploadedEntry;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "x2"    # Lcom/google/android/picasasync/Uploader$UploadProgressListener;
    .param p3, "x3"    # Landroid/content/SyncResult;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/UploadsManager;->doUpload(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/picasasync/UploadedEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;Landroid/content/SyncResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "x2"    # Lcom/google/android/picasasync/UploadedEntry;
    .param p3, "x3"    # Landroid/content/SyncResult;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/UploadsManager;->writeToPhotoTable(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;Landroid/content/SyncResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # Lcom/google/android/picasasync/UploadTaskEntry;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/picasasync/UploadTaskEntry;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)Lcom/google/android/picasasync/UploadTaskEntry;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->getNextManualUploadFromDb(Ljava/lang/String;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/picasasync/UploadsManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->notifyManualUploadDbChanges(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "x2"    # Lcom/google/android/picasasync/UploadedEntry;
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/UploadsManager;->sendManualUploadReport(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/android/picasasync/UploadsManager;->hasNetworkConnectivity(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/picasasync/UploadsManager;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # J

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->cancelTaskInternal(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->PHOTO_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->isExternalStorageMounted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/google/android/picasasync/UploadsManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/picasasync/UploadsManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->reset()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaSyncHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadsManager$UploadTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # Lcom/google/android/picasasync/UploadsManager$UploadTask;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->setCurrentUploadTask(Lcom/google/android/picasasync/UploadsManager$UploadTask;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/picasasync/UploadsManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/picasasync/UploadsManager;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/UploadsManager;
    .param p1, "x1"    # J

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z

    move-result v0

    return v0
.end method

.method private accountExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 274
    .local v0, "a":Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 276
    .end local v0    # "a":Landroid/accounts/Account;
    :goto_1
    return v4

    .line 273
    .restart local v0    # "a":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "a":Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private declared-synchronized cancelTaskInternal(J)V
    .locals 2
    .param p1, "taskId"    # J

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->cancelTask(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->getTaskFromDb(J)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    .line 420
    .local v0, "task":Lcom/google/android/picasasync/UploadTaskEntry;
    if-eqz v0, :cond_1

    .line 421
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z

    .line 422
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 423
    new-instance v1, Lcom/google/android/picasasync/UploadedEntry;

    invoke-direct {v1, v0}, Lcom/google/android/picasasync/UploadedEntry;-><init>(Lcom/google/android/picasasync/UploadTaskEntry;)V

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/UploadsManager;->recordResult(Lcom/google/android/picasasync/UploadedEntry;)Lcom/google/android/picasasync/UploadedEntry;

    .line 424
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/UploadsManager;->notifyManualUploadDbChanges(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    .end local v0    # "task":Lcom/google/android/picasasync/UploadTaskEntry;
    :cond_1
    monitor-exit p0

    return-void

    .line 416
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private doUpload(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/picasasync/UploadedEntry;
    .locals 11
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "progressListener"    # Lcom/google/android/picasasync/Uploader$UploadProgressListener;
    .param p3, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 485
    monitor-enter p0

    .line 486
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->isReadyForUpload()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 487
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 492
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    const-wide/16 v0, 0x3e8

    .line 495
    .local v0, "delay":J
    const/4 v3, 0x0

    .line 496
    .local v3, "retryCount":I
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadUrl:Ljava/lang/String;

    .line 498
    :goto_0
    new-instance v5, Lcom/google/android/picasasync/GDataUploader;

    iget-object v6, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/picasasync/GDataUploader;-><init>(Landroid/content/Context;)V

    .line 500
    .local v5, "uploader":Lcom/google/android/picasasync/GDataUploader;
    :try_start_1
    invoke-virtual {v5, p1, p2}, Lcom/google/android/picasasync/GDataUploader;->upload(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_1
    .catch Lcom/google/android/picasasync/Uploader$MediaFileChangedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/picasasync/Uploader$RestartException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/picasasync/Uploader$UnauthorizedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/picasasync/Uploader$PicasaQuotaException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/picasasync/Uploader$LocalIoException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 542
    invoke-virtual {v5}, Lcom/google/android/picasasync/GDataUploader;->close()V

    .line 570
    .end local v0    # "delay":J
    .end local v3    # "retryCount":I
    .end local v5    # "uploader":Lcom/google/android/picasasync/GDataUploader;
    :goto_1
    return-object v6

    .line 490
    :cond_0
    const/4 v6, 0x0

    :try_start_2
    monitor-exit p0

    goto :goto_1

    .line 492
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 501
    .restart local v0    # "delay":J
    .restart local v3    # "retryCount":I
    .restart local v5    # "uploader":Lcom/google/android/picasasync/GDataUploader;
    :catch_0
    move-exception v2

    .line 502
    .local v2, "e":Lcom/google/android/picasasync/Uploader$MediaFileChangedException;
    :try_start_3
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "media file changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    const/4 v6, 0x6

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 505
    const/4 v6, 0x0

    .line 542
    invoke-virtual {v5}, Lcom/google/android/picasasync/GDataUploader;->close()V

    goto :goto_1

    .line 506
    .end local v2    # "e":Lcom/google/android/picasasync/Uploader$MediaFileChangedException;
    :catch_1
    move-exception v2

    .line 507
    .local v2, "e":Lcom/google/android/picasasync/Uploader$RestartException;
    :try_start_4
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transient error on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 542
    invoke-virtual {v5}, Lcom/google/android/picasasync/GDataUploader;->close()V

    .line 546
    monitor-enter p0

    .line 547
    :try_start_5
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->isUploading()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 548
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x5

    if-le v3, v6, :cond_2

    .line 549
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v7, "   max retries reached; skip the upload"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v6, 0x5

    new-instance v7, Ljava/io/IOException;

    const-string v8, "max retries reached"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(ILjava/lang/Throwable;)V

    .line 552
    iget-object v6, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 553
    const/4 v6, 0x0

    monitor-exit p0

    goto :goto_1

    .line 572
    .end local v2    # "e":Lcom/google/android/picasasync/Uploader$RestartException;
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 510
    :catch_2
    move-exception v2

    .line 511
    .local v2, "e":Lcom/google/android/picasasync/Uploader$UnauthorizedException;
    :try_start_6
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unauthorized "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    iget-object v6, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 513
    const/16 v6, 0x9

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 514
    const/4 v6, 0x0

    .line 542
    invoke-virtual {v5}, Lcom/google/android/picasasync/GDataUploader;->close()V

    goto/16 :goto_1

    .line 515
    .end local v2    # "e":Lcom/google/android/picasasync/Uploader$UnauthorizedException;
    :catch_3
    move-exception v2

    .line 516
    .local v2, "e":Lcom/google/android/picasasync/Uploader$PicasaQuotaException;
    :try_start_7
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload quota exceeded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/16 v6, 0xa

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 518
    const/4 v6, 0x0

    .line 542
    invoke-virtual {v5}, Lcom/google/android/picasasync/GDataUploader;->close()V

    goto/16 :goto_1

    .line 519
    .end local v2    # "e":Lcom/google/android/picasasync/Uploader$PicasaQuotaException;
    :catch_4
    move-exception v2

    .line 520
    .local v2, "e":Lcom/google/android/picasasync/Uploader$LocalIoException;
    :try_start_8
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->isExternalStorageMounted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 521
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    const/4 v6, 0x5

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V

    .line 523
    iget-object v6, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 529
    :goto_2
    const/4 v6, 0x0

    .line 542
    invoke-virtual {v5}, Lcom/google/android/picasasync/GDataUploader;->close()V

    goto/16 :goto_1

    .line 525
    :cond_1
    :try_start_9
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " on media unmounted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v6, 0x6

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    .line 542
    .end local v2    # "e":Lcom/google/android/picasasync/Uploader$LocalIoException;
    :catchall_2
    move-exception v6

    invoke-virtual {v5}, Lcom/google/android/picasasync/GDataUploader;->close()V

    throw v6

    .line 530
    :catch_5
    move-exception v2

    .line 531
    .local v2, "e":Ljava/io/IOException;
    :try_start_a
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; retry later"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v6, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    .line 533
    const/4 v6, 0x6

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 535
    const/4 v6, 0x0

    .line 542
    invoke-virtual {v5}, Lcom/google/android/picasasync/GDataUploader;->close()V

    goto/16 :goto_1

    .line 536
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 537
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_b
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    const/4 v6, 0x5

    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/picasasync/UploadsManager;->setState(Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V

    .line 539
    iget-object v6, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 540
    const/4 v6, 0x0

    .line 542
    invoke-virtual {v5}, Lcom/google/android/picasasync/GDataUploader;->close()V

    goto/16 :goto_1

    .line 556
    .end local v4    # "t":Ljava/lang/Throwable;
    .local v2, "e":Lcom/google/android/picasasync/Uploader$RestartException;
    :cond_2
    :try_start_c
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   back off "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 559
    :try_start_d
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 565
    .end local v2    # "e":Lcom/google/android/picasasync/Uploader$RestartException;
    :goto_3
    const-wide/16 v6, 0x2

    mul-long/2addr v0, v6

    .line 567
    :cond_3
    :try_start_e
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->shouldRetry()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 568
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 572
    monitor-exit p0

    goto/16 :goto_0

    .line 560
    .restart local v2    # "e":Lcom/google/android/picasasync/Uploader$RestartException;
    :catch_7
    move-exception v2

    .line 562
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v7, "waiting being interrupted!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 570
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_4
    const/4 v6, 0x0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_1
.end method

.method private static fillExif(Lcom/google/android/picasasync/PhotoEntry;Ljava/lang/String;)V
    .locals 12
    .param p0, "photo"    # Lcom/google/android/picasasync/PhotoEntry;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 739
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 740
    .local v0, "exif":Lcom/android/gallery3d/exif/ExifInterface;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 741
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/picasasync/PhotoEntry;->exifMake:Ljava/lang/String;

    .line 742
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/picasasync/PhotoEntry;->exifModel:Ljava/lang/String;

    .line 743
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValue(I)Lcom/android/gallery3d/exif/Rational;

    move-result-object v3

    .line 744
    .local v3, "r":Lcom/android/gallery3d/exif/Rational;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v8

    double-to-float v4, v8

    :goto_0
    iput v4, p0, Lcom/google/android/picasasync/PhotoEntry;->exifExposure:F

    .line 745
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v1

    .line 746
    .local v1, "i":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    iput v4, p0, Lcom/google/android/picasasync/PhotoEntry;->exifFlash:I

    .line 747
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValue(I)Lcom/android/gallery3d/exif/Rational;

    move-result-object v3

    .line 748
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v8

    double-to-float v4, v8

    :goto_2
    iput v4, p0, Lcom/google/android/picasasync/PhotoEntry;->exifFocalLength:F

    .line 749
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTagRationalValue(I)Lcom/android/gallery3d/exif/Rational;

    move-result-object v3

    .line 750
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v4

    double-to-float v5, v4

    :cond_0
    iput v5, p0, Lcom/google/android/picasasync/PhotoEntry;->exifFstop:F

    .line 751
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v1

    .line 752
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    iput v4, p0, Lcom/google/android/picasasync/PhotoEntry;->exifIso:I

    .line 753
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v1

    .line 754
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v4

    :goto_4
    invoke-static {v4}, Lcom/android/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v4

    iput v4, p0, Lcom/google/android/picasasync/PhotoEntry;->rotation:I

    .line 756
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getLatLongAsDoubles()[D

    move-result-object v2

    .line 757
    .local v2, "latLon":[D
    if-eqz v2, :cond_1

    .line 758
    aget-wide v4, v2, v6

    iput-wide v4, p0, Lcom/google/android/picasasync/PhotoEntry;->latitude:D

    .line 759
    aget-wide v4, v2, v7

    iput-wide v4, p0, Lcom/google/android/picasasync/PhotoEntry;->longitude:D

    .line 761
    :cond_1
    return-void

    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "latLon":[D
    :cond_2
    move v4, v5

    .line 744
    goto :goto_0

    .restart local v1    # "i":Ljava/lang/Integer;
    :cond_3
    move v4, v6

    .line 746
    goto :goto_1

    :cond_4
    move v4, v5

    .line 748
    goto :goto_2

    :cond_5
    move v4, v6

    .line 752
    goto :goto_3

    :cond_6
    move v4, v7

    .line 754
    goto :goto_4
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 645
    if-nez p1, :cond_1

    const-string p1, "No title"

    .line 647
    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 646
    .restart local p1    # "path":Ljava/lang/String;
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 647
    .local v0, "index":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getFilePath(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 724
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 734
    :cond_0
    :goto_0
    return-object v0

    .line 729
    :cond_1
    :try_start_0
    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_DATA:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 730
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 734
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    move-object v0, v6

    .line 730
    goto :goto_1

    .line 731
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 734
    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 731
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private static getFsId(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 378
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 385
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v1

    .line 381
    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v2, "No FSID on this device!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    const/4 v1, -0x1

    .line 385
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const-class v1, Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->sInstance:Lcom/google/android/picasasync/UploadsManager;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/google/android/picasasync/UploadsManager;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/UploadsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->sInstance:Lcom/google/android/picasasync/UploadsManager;

    .line 133
    :cond_0
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->sInstance:Lcom/google/android/picasasync/UploadsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMaxDisplayIndex()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 713
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/google/android/picasasync/UploadsManager;->QUERY_MAX_DISPLAY_INDEX:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 715
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 719
    :goto_0
    return v1

    .line 717
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 719
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getNextManualUploadFromDb(Ljava/lang/String;)Lcom/google/android/picasasync/UploadTaskEntry;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 764
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    aput-object p1, v4, v1

    .line 767
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "priority=? AND mime_type LIKE ?"

    const-string v7, "priority,_id"

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 770
    if-nez v1, :cond_0

    .line 789
    :goto_0
    return-object v5

    .line 772
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    invoke-static {v1}, Lcom/google/android/picasasync/UploadTaskEntry;->fromCursor(Landroid/database/Cursor;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    .line 774
    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v2

    .line 775
    iget-object v3, p0, Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 776
    invoke-direct {p0, v2}, Lcom/google/android/picasasync/UploadsManager;->accountExists(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 789
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v5, v0

    goto :goto_0

    .line 779
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid account, remove all uploads in DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v3, Lcom/google/android/picasasync/UploadsManager;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    const-string v4, "account=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 783
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->getNextManualUploadFromDb(Ljava/lang/String;)Lcom/google/android/picasasync/UploadTaskEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 789
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getRecordCount(Landroid/database/sqlite/SQLiteDatabase;JI)I
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "maxId"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 633
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 634
    .local v4, "whereArgs":[Ljava/lang/String;
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->UPLOAD_RECORD_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_COUNT:[Ljava/lang/String;

    const-string v3, "_id<? AND uid=?"

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 637
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 639
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 641
    :goto_0
    return v0

    .line 639
    :cond_0
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v9

    .line 641
    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private getTaskFromDb(J)Lcom/google/android/picasasync/UploadTaskEntry;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/picasasync/UploadTaskEntry;->fromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    return-object v0
.end method

.method private static hasNetworkConnectivity(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 805
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 807
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .locals 2
    .param p1, "thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 204
    new-instance v0, Lcom/google/android/picasasync/UploadsManager$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/UploadsManager$2;-><init>(Lcom/google/android/picasasync/UploadsManager;Landroid/os/Looper;)V

    return-object v0
.end method

.method private isAndroidUpgraded()Z
    .locals 4

    .prologue
    .line 263
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v2, "system_release"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "systemRelease":Ljava/lang/String;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "system_release"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System upgrade from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v1, 0x1

    .line 269
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 390
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 391
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

.method private loadSavedStates()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "external_storage_fsid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    .line 234
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "external_storage_fsid"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/picasasync/UploadsManager;->mExternalStorageFsId:I

    .line 237
    :cond_0
    return-void
.end method

.method private notifyManualUploadDbChanges(Z)V
    .locals 5
    .param p1, "hasNewRecord"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 467
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 468
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    .line 469
    .local v0, "facade":Lcom/google/android/picasasync/PicasaFacade;
    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getUploadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 470
    if-eqz p1, :cond_0

    .line 471
    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getUploadRecordsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 473
    :cond_0
    return-void
.end method

.method private declared-synchronized onFsIdChangedInternal()V
    .locals 4

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/picasasync/UploadsManager;->isExternalStorageMounted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 372
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->getFsId(Landroid/content/Context;)I

    move-result v0

    .line 349
    .local v0, "fsId":I
    iget-boolean v1, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    if-nez v1, :cond_1

    .line 351
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set fsid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    .line 353
    iput v0, p0, Lcom/google/android/picasasync/UploadsManager;->mExternalStorageFsId:I

    .line 354
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "external_storage_fsid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    :goto_1
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 346
    .end local v0    # "fsId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 355
    .restart local v0    # "fsId":I
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/google/android/picasasync/UploadsManager;->mExternalStorageFsId:I

    if-ne v1, v0, :cond_2

    .line 359
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    .line 362
    :cond_2
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fsid changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/picasasync/UploadsManager;->mExternalStorageFsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iput v0, p0, Lcom/google/android/picasasync/UploadsManager;->mExternalStorageFsId:I

    .line 364
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "external_storage_fsid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static purgeRecords(Landroid/database/sqlite/SQLiteDatabase;IJI)V
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "targetCount"    # I
    .param p2, "maxId"    # J
    .param p4, "uid"    # I

    .prologue
    .line 614
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "target purge count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " maxID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-wide/16 v3, 0x0

    .line 617
    .local v3, "min":J
    :goto_0
    add-long v6, p2, v3

    const-wide/16 v8, 0x2

    div-long v1, v6, v8

    .line 618
    .local v1, "mid":J
    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    .line 626
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 627
    .local v5, "whereArgs":[Ljava/lang/String;
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->UPLOAD_RECORD_TABLE_NAME:Ljava/lang/String;

    const-string v7, "_id<? AND uid=?"

    invoke-virtual {p0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 628
    .local v0, "count":I
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " purged"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void

    .line 619
    .end local v0    # "count":I
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_0
    invoke-static {p0, v1, v2, p4}, Lcom/google/android/picasasync/UploadsManager;->getRecordCount(Landroid/database/sqlite/SQLiteDatabase;JI)I

    move-result v0

    .line 620
    .restart local v0    # "count":I
    if-le v0, p1, :cond_1

    .line 621
    move-wide p2, v1

    goto :goto_0

    .line 623
    :cond_1
    move-wide v3, v1

    goto :goto_0
.end method

.method private recordResult(Lcom/google/android/picasasync/UploadedEntry;)Lcom/google/android/picasasync/UploadedEntry;
    .locals 10
    .param p1, "result"    # Lcom/google/android/picasasync/UploadedEntry;

    .prologue
    .line 578
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 579
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1, v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 580
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x3f40624dd2f1a9fcL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 604
    :goto_0
    return-object p1

    .line 586
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 588
    :try_start_0
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->UPLOAD_RECORD_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_COUNT:[Ljava/lang/String;

    const-string v3, "uid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p1, Lcom/google/android/picasasync/UploadedEntry;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 591
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 593
    .local v8, "count":I
    const/16 v1, 0x7d0

    if-le v8, v1, :cond_1

    .line 594
    div-int/lit8 v1, v8, 0x2

    iget-wide v2, p1, Lcom/android/gallery3d/common/Entry;->id:J

    iget v4, p1, Lcom/google/android/picasasync/UploadedEntry;->uid:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/picasasync/UploadsManager;->purgeRecords(Landroid/database/sqlite/SQLiteDatabase;IJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    .end local v8    # "count":I
    :cond_1
    :try_start_2
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 601
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 602
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 598
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 601
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 602
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private declared-synchronized reloadSystemSettingsInternal()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 285
    monitor-enter p0

    const/4 v9, 0x1

    .line 286
    .local v9, "wifiOnlyPhoto":Z
    const/4 v10, 0x1

    .line 287
    .local v10, "wifiOnlyVideo":Z
    const/4 v8, 0x0

    .line 288
    .local v8, "syncOnRoaming":Z
    const/4 v7, 0x0

    .line 289
    .local v7, "syncOnBattery":Z
    :try_start_0
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_ENABLE_ACCOUNT_WIFI:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 293
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    :cond_0
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v1, "   failed to query system settings"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/picasasync/UploadsManager;->mReloadSystemSettingDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    iget-wide v0, p0, Lcom/google/android/picasasync/UploadsManager;->mReloadSystemSettingDelay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadsManager;->mReloadSystemSettingDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 308
    :try_start_2
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :goto_0
    monitor-exit p0

    return-void

    .line 302
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    move v9, v11

    .line 303
    :goto_1
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    move v10, v11

    .line 304
    :goto_2
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    move v8, v11

    .line 305
    :goto_3
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    move v7, v11

    .line 306
    :goto_4
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/google/android/picasasync/UploadsManager;->mReloadSystemSettingDelay:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    :try_start_4
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 311
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyPhoto:Z

    if-ne v9, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyVideo:Z

    if-ne v10, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncOnRoaming:Z

    if-ne v8, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncOnBattery:Z

    if-eq v7, v0, :cond_3

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 317
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyPhoto:Z

    if-eq v9, v0, :cond_4

    .line 318
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   wifiOnlyPhoto changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyVideo:Z

    if-eq v10, v0, :cond_5

    .line 321
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   wifiOnlyVideo changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncOnRoaming:Z

    if-eq v8, v0, :cond_6

    .line 324
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   syncOnRoaming changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncOnBattery:Z

    if-eq v7, v0, :cond_7

    .line 327
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   syncOnBattery changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_7
    iput-boolean v9, p0, Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyPhoto:Z

    .line 330
    iput-boolean v10, p0, Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyVideo:Z

    .line 331
    iput-boolean v8, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncOnRoaming:Z

    .line 332
    iput-boolean v7, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncOnBattery:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 285
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_8
    move v9, v12

    .line 302
    goto/16 :goto_1

    :cond_9
    move v10, v12

    .line 303
    goto/16 :goto_2

    :cond_a
    move v8, v12

    .line 304
    goto/16 :goto_3

    :cond_b
    move v7, v12

    .line 305
    goto/16 :goto_4

    .line 308
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private removeTaskFromDb(J)Z
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 442
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/gallery3d/common/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->resetStates()V

    .line 241
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->resetUploadDatabase()V

    .line 242
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->reloadSystemSettingsInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetStates()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 260
    return-void
.end method

.method private resetUploadDatabase()V
    .locals 5

    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->reset()V

    .line 250
    const-wide/16 v1, 0x3a98

    iput-wide v1, p0, Lcom/google/android/picasasync/UploadsManager;->mResetDelay:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v2, "DB not ready for reset?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/android/picasasync/UploadsManager;->mResetDelay:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 254
    iget-wide v1, p0, Lcom/google/android/picasasync/UploadsManager;->mResetDelay:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/picasasync/UploadsManager;->mResetDelay:J

    goto :goto_0
.end method

.method private sendManualUploadReport(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;I)V
    .locals 5
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "result"    # Lcom/google/android/picasasync/UploadedEntry;
    .param p3, "uploaderState"    # I

    .prologue
    .line 451
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 452
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 453
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.picasasync.manual_upload_report"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 455
    const-string v2, "manual_upload_upload_id"

    iget-wide v3, p1, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 456
    const-string v2, "manual_upload_content_uri"

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 457
    const-string v2, "manual_upload_state"

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getState()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    const-string v2, "manual_upload_uploader_state"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const-string v2, "manual_upload_progress"

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getPercentageUploaded()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    if-eqz p2, :cond_1

    .line 461
    const-string v2, "manual_upload_record_id"

    iget-wide v3, p2, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 463
    :cond_1
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private declared-synchronized setCurrentUploadTask(Lcom/google/android/picasasync/UploadsManager$UploadTask;)V
    .locals 1
    .param p1, "newUploadTask"    # Lcom/google/android/picasasync/UploadsManager$UploadTask;

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPhotoSize(Lcom/google/android/picasasync/PhotoEntry;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 4

    .prologue
    .line 700
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 701
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 702
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 703
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p1, Lcom/google/android/picasasync/PhotoEntry;->width:I

    .line 704
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p1, Lcom/google/android/picasasync/PhotoEntry;->height:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 706
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhotoSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized setState(Lcom/google/android/picasasync/UploadTaskEntry;I)V
    .locals 1
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "state"    # I

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    monitor-exit p0

    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setState(Lcom/google/android/picasasync/UploadTaskEntry;ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;
    .param p2, "state"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTaskStateAndProgressInDb(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .locals 2
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->isReadyForUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :cond_0
    monitor-exit p0

    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeToPhotoTable(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;Landroid/content/SyncResult;)Z
    .locals 10

    .prologue
    .line 655
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getRealAlbumId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 657
    if-nez v1, :cond_0

    .line 658
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v1, "no album to write new photo data to"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v0, 0x0

    .line 695
    :goto_0
    return v0

    .line 661
    :cond_0
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getUserId(Ljava/lang/String;)J

    move-result-wide v2

    .line 662
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 663
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v1, "no user owns the photo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v0, 0x0

    goto :goto_0

    .line 666
    :cond_1
    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 667
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    .line 668
    invoke-direct {p0, v5, v4}, Lcom/google/android/picasasync/UploadsManager;->getFilePath(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    .line 669
    new-instance v7, Lcom/google/android/picasasync/PhotoEntry;

    invoke-direct {v7}, Lcom/google/android/picasasync/PhotoEntry;-><init>()V

    .line 670
    iget-wide v8, p2, Lcom/google/android/picasasync/UploadedEntry;->idFromServer:J

    iput-wide v8, v7, Lcom/android/gallery3d/common/Entry;->id:J

    .line 671
    iput-wide v2, v7, Lcom/google/android/picasasync/PhotoEntry;->userId:J

    .line 672
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/google/android/picasasync/PhotoEntry;->albumId:J

    .line 673
    invoke-direct {p0, v6}, Lcom/google/android/picasasync/UploadsManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/picasasync/PhotoEntry;->title:Ljava/lang/String;

    .line 674
    iget-wide v1, p2, Lcom/google/android/picasasync/UploadedEntry;->bytesTotal:J

    long-to-int v1, v1

    iput v1, v7, Lcom/google/android/picasasync/PhotoEntry;->size:I

    .line 675
    iget-object v1, p2, Lcom/google/android/picasasync/UploadedEntry;->url:Ljava/lang/String;

    iput-object v1, v7, Lcom/google/android/picasasync/PhotoEntry;->screennailUrl:Ljava/lang/String;

    iput-object v1, v7, Lcom/google/android/picasasync/PhotoEntry;->contentUrl:Ljava/lang/String;

    .line 676
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/picasasync/PhotoEntry;->contentType:Ljava/lang/String;

    .line 677
    iget-object v1, p2, Lcom/google/android/picasasync/UploadedEntry;->fingerprint:[B

    iput-object v1, v7, Lcom/google/android/picasasync/PhotoEntry;->fingerprint:[B

    .line 678
    iget v1, p2, Lcom/google/android/picasasync/UploadedEntry;->fingerprintHash:I

    iput v1, v7, Lcom/google/android/picasasync/PhotoEntry;->fingerprintHash:I

    .line 679
    iget-wide v1, p2, Lcom/google/android/picasasync/UploadedEntry;->timestamp:J

    iput-wide v1, v7, Lcom/google/android/picasasync/PhotoEntry;->dateTaken:J

    .line 680
    const-string v1, "camera-sync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput v0, v7, Lcom/google/android/picasasync/PhotoEntry;->cameraSync:I

    .line 681
    invoke-direct {p0, v7, v5, v4}, Lcom/google/android/picasasync/UploadsManager;->setPhotoSize(Lcom/google/android/picasasync/PhotoEntry;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 682
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->getMaxDisplayIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/google/android/picasasync/PhotoEntry;->displayIndex:I

    .line 684
    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {v7, v6}, Lcom/google/android/picasasync/UploadsManager;->fillExif(Lcom/google/android/picasasync/PhotoEntry;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :cond_2
    :goto_2
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 692
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getAlbumsUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 694
    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 695
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 680
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 685
    :catch_0
    move-exception v0

    .line 686
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v2, "fillExif"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public addManualUpload(Lcom/google/android/picasasync/UploadTaskEntry;)J
    .locals 9
    .param p1, "task"    # Lcom/google/android/picasasync/UploadTaskEntry;

    .prologue
    .line 397
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 398
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/google/android/picasasync/UploadTaskEntry;->setPriority(I)V

    .line 399
    invoke-static {v3, p1}, Lcom/google/android/picasasync/PicasaUploadHelper;->setContentType(Landroid/content/ContentResolver;Lcom/google/android/picasasync/UploadTaskEntry;)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "type":Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/google/android/picasasync/PicasaUploadHelper;->setFileSize(Landroid/content/ContentResolver;Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 401
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v5}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 402
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v5, v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    move-result-wide v1

    .line 403
    .local v1, "id":J
    sget-object v5, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "manual upload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 406
    return-wide v1
.end method

.method public cancelTask(J)V
    .locals 3
    .param p1, "taskId"    # J

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 412
    return-void
.end method

.method public getManualPhotoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;
    .locals 2

    .prologue
    .line 794
    new-instance v0, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;

    const-string v1, "image/%"

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;-><init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getManualVideoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;
    .locals 2

    .prologue
    .line 801
    new-instance v0, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;

    const-string v1, "%"

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/UploadsManager$ManualUploadTaskProvider;-><init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUploadsDatabaseHelper()Lcom/google/android/picasasync/UploadsDatabaseHelper;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    return-object v0
.end method

.method public reloadSystemSettings()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 282
    return-void
.end method
