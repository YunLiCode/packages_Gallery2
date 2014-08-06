.class Lcom/google/android/picasasync/PicasaSyncHelper;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;,
        Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    }
.end annotation


# static fields
.field private static final ALBUM_PROJECTION_ID_DATE_THUMBNAIL_URL:[Ljava/lang/String;

.field private static final ALBUM_TABLE_NAME:Ljava/lang/String;

.field private static final LOCK_KEY_ALL_ALBUMS:Ljava/lang/Object;

.field private static final PHOTO_PROJECTION_ID_DATE:[Ljava/lang/String;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static final PROJECTION_ID_ACCOUNT:[Ljava/lang/String;

.field private static final PROJECTION_ID_DATE_INDEX_SCREENNAIL_URL:[Ljava/lang/String;

.field private static final USER_TABLE_NAME:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/picasasync/PicasaSyncHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

.field private mLockManager:Lcom/google/android/picasasync/SyncLockManager;

.field private mUploadAlbumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/AlbumEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    .line 71
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PROJECTION_ID_ACCOUNT:[Ljava/lang/String;

    .line 72
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date_updated"

    aput-object v1, v0, v3

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_PROJECTION_ID_DATE_THUMBNAIL_URL:[Ljava/lang/String;

    .line 76
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date_updated"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_PROJECTION_ID_DATE:[Ljava/lang/String;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "date_updated"

    aput-object v1, v0, v3

    const-string v1, "display_index"

    aput-object v1, v0, v4

    const-string v1, "screennail_url"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PROJECTION_ID_DATE_INDEX_SCREENNAIL_URL:[Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->LOCK_KEY_ALL_ALBUMS:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/google/android/picasasync/SyncLockManager;

    invoke-direct {v0}, Lcom/google/android/picasasync/SyncLockManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mLockManager:Lcom/google/android/picasasync/SyncLockManager;

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mUploadAlbumMap:Ljava/util/HashMap;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    .line 112
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    .line 113
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/picasasync/PicasaSyncHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/PicasaSyncHelper;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applyBatchInChunks(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x2

    .line 884
    .local v3, "numberOfChunks":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 886
    .local v4, "remainingOps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    div-int v1, v6, v3

    .line 888
    .local v1, "chunkSize":I
    :goto_0
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 890
    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-lt v1, v6, :cond_1

    .line 891
    move-object v5, v4

    .line 899
    .local v5, "workingChunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :goto_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 901
    .local v0, "chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.google.android.gallery3d.photoprovider"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 902
    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 903
    .end local v0    # "chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v2

    .line 904
    .local v2, "e":Landroid/os/TransactionTooLargeException;
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 905
    :try_start_2
    const-string v6, "PicasaSync"

    const-string v7, "Transaction failed applying smallest possible batch."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 913
    .end local v2    # "e":Landroid/os/TransactionTooLargeException;
    .end local v5    # "workingChunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    move-exception v2

    .line 914
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PicasaSync"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 893
    :cond_1
    const/4 v6, 0x0

    add-int/lit8 v7, v1, -0x1

    :try_start_3
    invoke-interface {v4, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .restart local v5    # "workingChunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    goto :goto_1

    .line 908
    .local v2, "e":Landroid/os/TransactionTooLargeException;
    :cond_2
    const-string v6, "PicasaSync"

    const-string v7, "Transaction failed applying batch. Trying smaller size."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    add-int/lit8 v3, v3, 0x1

    .line 910
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    div-int v1, v6, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private deleteAlbum(Landroid/database/sqlite/SQLiteDatabase;J)I
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "albumId"    # J

    .prologue
    .line 603
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 604
    .local v1, "whereArgs":[Ljava/lang/String;
    sget-object v2, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v3, "album_id=?"

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 607
    .local v0, "result":I
    sget-object v2, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/gallery3d/common/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method private deleteUploadedPhotos(Landroid/database/sqlite/SQLiteDatabase;J)I
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userId"    # J

    .prologue
    .line 755
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v1, "camera_sync=1 AND user_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private deleteUser(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 206
    new-array v4, v1, [Ljava/lang/String;

    aput-object p2, v4, v0

    .line 208
    .local v4, "userIdArgs":[Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/android/gallery3d/common/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "user_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 211
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_1
    new-array v8, v0, [Ljava/lang/String;

    .line 212
    .local v8, "albumIdArgs":[Ljava/lang/String;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 214
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v1, "album_id=?"

    invoke-virtual {p1, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    .end local v8    # "albumIdArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 217
    .restart local v8    # "albumIdArgs":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 219
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v1, "user_id=?"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    const-string v1, "_id=?"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 225
    return-void
.end method

.method private static getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 871
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const-class v1, Lcom/google/android/picasasync/PicasaSyncHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->sInstance:Lcom/google/android/picasasync/PicasaSyncHelper;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaSyncHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->sInstance:Lcom/google/android/picasasync/PicasaSyncHelper;

    .line 107
    :cond_0
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncHelper;->sInstance:Lcom/google/android/picasasync/PicasaSyncHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPseudoUploadAlbum(Ljava/lang/String;)Lcom/google/android/picasasync/AlbumEntry;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 644
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mUploadAlbumMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mUploadAlbumMap:Ljava/util/HashMap;

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mUploadAlbumMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/AlbumEntry;

    .line 646
    .local v0, "album":Lcom/google/android/picasasync/AlbumEntry;
    if-nez v0, :cond_1

    .line 647
    new-instance v0, Lcom/google/android/picasasync/AlbumEntry;

    .end local v0    # "album":Lcom/google/android/picasasync/AlbumEntry;
    invoke-direct {v0}, Lcom/google/android/picasasync/AlbumEntry;-><init>()V

    .line 648
    .restart local v0    # "album":Lcom/google/android/picasasync/AlbumEntry;
    iput-object p1, v0, Lcom/google/android/picasasync/AlbumEntry;->user:Ljava/lang/String;

    .line 649
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/gallery3d/common/Entry;->id:J

    .line 650
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mUploadAlbumMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_1
    return-object v0
.end method

.method private syncAlbumsForUserLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V
    .locals 34
    .param p1, "context"    # Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    .param p2, "user"    # Lcom/google/android/picasasync/UserEntry;

    .prologue
    .line 260
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v13, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 264
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_PROJECTION_ID_DATE_THUMBNAIL_URL:[Ljava/lang/String;

    const-string v6, "user_id=?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "date_updated"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 269
    .local v24, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 271
    .local v5, "id":J
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 272
    .local v7, "dateEdited":J
    const/4 v4, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, "thumbnailUrl":Ljava/lang/String;
    new-instance v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;-><init>(JJILjava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    .end local v5    # "id":J
    .end local v7    # "dateEdited":J
    .end local v10    # "thumbnailUrl":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 278
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/google/android/picasasync/GooglePhotoUtils;->queryAccountIdFromName(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v19

    .line 281
    .local v19, "accountId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v19

    invoke-static {v4, v0, v1}, Lcom/google/android/picasasync/GooglePhotoUtils;->getAlbumIdDateModifiedMap(Landroid/content/Context;J)Ljava/util/Map;

    move-result-object v17

    .line 283
    .local v17, "existingAlbums":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v21, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v4, Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAccounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/android/photos/data/GooglePhotoProvider;->makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v22

    .line 285
    .local v22, "accountsUri":Landroid/net/Uri;
    sget-object v4, Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAlbums;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/android/photos/data/GooglePhotoProvider;->makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v18

    .line 288
    .local v18, "albumsUri":Landroid/net/Uri;
    new-instance v11, Lcom/google/android/picasasync/PicasaSyncHelper$1;

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    move-object v15, v3

    move-object/from16 v16, p1

    invoke-direct/range {v11 .. v21}, Lcom/google/android/picasasync/PicasaSyncHelper$1;-><init>(Lcom/google/android/picasasync/PicasaSyncHelper;Ljava/util/ArrayList;Lcom/google/android/picasasync/UserEntry;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Ljava/util/Map;Landroid/net/Uri;JLjava/util/ArrayList;)V

    .line 344
    .local v11, "handler":Lcom/google/android/picasasync/PicasaApi$EntryHandler;
    const/16 v29, 0x1

    .line 345
    .local v29, "result":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    const/4 v4, 0x1

    move/from16 v0, v26

    if-gt v0, v4, :cond_1

    .line 346
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/picasasync/PicasaApi;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v11}, Lcom/google/android/picasasync/PicasaApi;->getAlbums(Lcom/google/android/picasasync/UserEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I

    move-result v29

    .line 347
    const/4 v4, 0x2

    move/from16 v0, v29

    if-eq v0, v4, :cond_3

    .line 352
    :cond_1
    packed-switch v29, :pswitch_data_0

    .line 365
    sget-object v4, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    move-object/from16 v0, p2

    invoke-virtual {v4, v3, v0}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 366
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    aput-object v9, v23, v4

    .line 367
    .local v23, "args":[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v9, "name=?"

    move-object/from16 v0, v23

    invoke-virtual {v4, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v9, "etag"

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/google/android/picasasync/UserEntry;->albumsEtag:Ljava/lang/String;

    invoke-virtual {v4, v9, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    .line 374
    .local v28, "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    if-nez v4, :cond_2

    .line 375
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v14, v4, Landroid/content/SyncStats;->numDeletes:J

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->deleteAlbum(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    add-long v14, v14, v32

    iput-wide v14, v4, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_2

    .line 348
    .end local v23    # "args":[Ljava/lang/String;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v28    # "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->refreshAuthToken()V

    .line 345
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 354
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v14, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v32, 0x1

    add-long v14, v14, v32

    iput-wide v14, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 394
    :goto_3
    :pswitch_1
    return-void

    .line 357
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v14, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v32, 0x1

    add-long v14, v14, v32

    iput-wide v14, v4, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_3

    .line 379
    .restart local v23    # "args":[Ljava/lang/String;
    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyAlbumsChange()V

    .line 381
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    .line 382
    .local v31, "serverId":Ljava/lang/Long;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v4, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v30, v4

    .line 383
    .local v30, "selectionArgs":[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "server_id="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 388
    .end local v30    # "selectionArgs":[Ljava/lang/String;
    .end local v31    # "serverId":Ljava/lang/Long;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "com.google.android.gallery3d.photoprovider"

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 389
    :catch_0
    move-exception v25

    .line 390
    .local v25, "e":Landroid/os/TransactionTooLargeException;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/PicasaSyncHelper;->applyBatchInChunks(Ljava/util/List;)V

    goto :goto_3

    .line 391
    .end local v25    # "e":Landroid/os/TransactionTooLargeException;
    :catch_1
    move-exception v25

    .line 392
    .local v25, "e":Ljava/lang/Exception;
    const-string v4, "PicasaSync"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private syncPhotosForAlbumLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V
    .locals 34
    .param p1, "context"    # Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    .param p2, "album"    # Lcom/google/android/picasasync/AlbumEntry;

    .prologue
    .line 454
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v13, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 458
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/google/android/picasasync/PicasaSyncHelper;->PROJECTION_ID_DATE_INDEX_SCREENNAIL_URL:[Ljava/lang/String;

    const-string v6, "album_id=?"

    const/4 v12, 0x1

    new-array v7, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "date_updated"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 464
    .local v25, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 466
    .local v5, "id":J
    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 467
    .local v7, "dateEdited":J
    const/4 v4, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 468
    .local v9, "displayIndex":I
    const/4 v4, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 469
    .local v10, "screennailUrl":Ljava/lang/String;
    new-instance v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    invoke-direct/range {v4 .. v10}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;-><init>(JJILjava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 472
    .end local v5    # "id":J
    .end local v7    # "dateEdited":J
    .end local v9    # "displayIndex":I
    .end local v10    # "screennailUrl":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 475
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v4, v14, v15}, Lcom/google/android/picasasync/GooglePhotoUtils;->queryAlbumIdFromServerId(Landroid/content/Context;J)J

    move-result-wide v19

    .line 478
    .local v19, "albumId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v19

    invoke-static {v4, v0, v1}, Lcom/google/android/picasasync/GooglePhotoUtils;->queryAccountIdFromAlbumId(Landroid/content/Context;J)J

    move-result-wide v21

    .line 479
    .local v21, "accountId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v19

    invoke-static {v4, v0, v1}, Lcom/google/android/picasasync/GooglePhotoUtils;->getPhotoIdDateModifiedMap(Landroid/content/Context;J)Ljava/util/Map;

    move-result-object v17

    .line 481
    .local v17, "existingPhotos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v23, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v4, Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAlbums;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/android/photos/data/GooglePhotoProvider;->makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v24

    .line 483
    .local v24, "albumsUri":Landroid/net/Uri;
    sget-object v4, Lcom/google/android/photos/data/GooglePhotoProvider$GooglePhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/android/photos/data/GooglePhotoProvider;->makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v18

    .line 486
    .local v18, "photosUri":Landroid/net/Uri;
    new-instance v11, Lcom/google/android/picasasync/PicasaSyncHelper$2;

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    move-object v15, v3

    move-object/from16 v16, p1

    invoke-direct/range {v11 .. v23}, Lcom/google/android/picasasync/PicasaSyncHelper$2;-><init>(Lcom/google/android/picasasync/PicasaSyncHelper;Ljava/util/ArrayList;Lcom/google/android/picasasync/AlbumEntry;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Ljava/util/Map;Landroid/net/Uri;JJLjava/util/ArrayList;)V

    .line 540
    .local v11, "handler":Lcom/google/android/picasasync/PicasaApi$EntryHandler;
    const/16 v30, 0x3

    .line 541
    .local v30, "result":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    const/4 v4, 0x1

    move/from16 v0, v27

    if-gt v0, v4, :cond_1

    .line 542
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/picasasync/PicasaApi;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v11}, Lcom/google/android/picasasync/PicasaApi;->getAlbumPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I

    move-result v30

    .line 543
    const/4 v4, 0x2

    move/from16 v0, v30

    if-eq v0, v4, :cond_3

    .line 548
    :cond_1
    packed-switch v30, :pswitch_data_0

    .line 568
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/google/android/picasasync/AlbumEntry;->photosDirty:Z

    .line 569
    sget-object v4, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    move-object/from16 v0, p2

    invoke-virtual {v4, v3, v0}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 570
    invoke-static/range {v24 .. v24}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "server_id="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v4, v12, v14}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v12, "etag"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    invoke-virtual {v4, v12, v14}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    .line 577
    .local v29, "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    if-nez v4, :cond_2

    .line 578
    sget-object v4, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    move-object/from16 v0, v29

    iget-wide v14, v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-virtual {v4, v3, v14, v15}, Lcom/android/gallery3d/common/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 579
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v14, v4, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v32, 0x1

    add-long v14, v14, v32

    iput-wide v14, v4, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_2

    .line 544
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v29    # "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->refreshAuthToken()V

    .line 541
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    .line 550
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v14, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v32, 0x1

    add-long v14, v14, v32

    iput-wide v14, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 598
    :goto_3
    :pswitch_1
    return-void

    .line 553
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v14, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v32, 0x1

    add-long v14, v14, v32

    iput-wide v14, v4, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_3

    .line 559
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v4, v4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v14, v4, Landroid/content/SyncStats;->numDeletes:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/gallery3d/common/Entry;->id:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->deleteAlbum(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v12

    int-to-long v0, v12

    move-wide/from16 v32, v0

    add-long v14, v14, v32

    iput-wide v14, v4, Landroid/content/SyncStats;->numDeletes:J

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyAlbumsChange()V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyPhotosChange()V

    goto :goto_3

    .line 583
    .restart local v28    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyAlbumsChange()V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyPhotosChange()V

    .line 586
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Long;

    .line 587
    .local v31, "serverId":Ljava/lang/Long;
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "server_id="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v4, v12, v14}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 592
    .end local v31    # "serverId":Ljava/lang/Long;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v12, "com.google.android.gallery3d.photoprovider"

    move-object/from16 v0, v23

    invoke-virtual {v4, v12, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 593
    :catch_0
    move-exception v26

    .line 594
    .local v26, "e":Landroid/os/TransactionTooLargeException;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/PicasaSyncHelper;->applyBatchInChunks(Ljava/util/List;)V

    goto/16 :goto_3

    .line 595
    .end local v26    # "e":Landroid/os/TransactionTooLargeException;
    :catch_1
    move-exception v26

    .line 596
    .local v26, "e":Ljava/lang/Exception;
    const-string v4, "PicasaSync"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private syncPhotosForUploadLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Ljava/lang/String;)V
    .locals 23
    .param p1, "context"    # Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 656
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v10, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 660
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 662
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getUserId(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v11

    .line 663
    .local v11, "userId":J
    const-wide/16 v13, -0x1

    cmp-long v3, v11, v13

    if-nez v3, :cond_0

    .line 681
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 751
    :goto_0
    :pswitch_0
    return-void

    .line 665
    :cond_0
    :try_start_1
    sget-object v3, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_PROJECTION_ID_DATE:[Ljava/lang/String;

    const-string v5, "camera_sync=1 AND user_id=?"

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v15

    .line 669
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 671
    :goto_1
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 672
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 673
    .local v4, "id":J
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 674
    .local v6, "dateEdited":J
    new-instance v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;-><init>(JJILjava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 677
    .end local v4    # "id":J
    .end local v6    # "dateEdited":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 681
    .end local v11    # "userId":J
    .end local v15    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 677
    .restart local v11    # "userId":J
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 681
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getUserId(Ljava/lang/String;)J

    move-result-wide v11

    .line 687
    new-instance v8, Lcom/google/android/picasasync/PicasaSyncHelper$3;

    move-object/from16 v9, p0

    move-object v13, v2

    move-object/from16 v14, p1

    invoke-direct/range {v8 .. v14}, Lcom/google/android/picasasync/PicasaSyncHelper$3;-><init>(Lcom/google/android/picasasync/PicasaSyncHelper;Ljava/util/ArrayList;JLandroid/database/sqlite/SQLiteDatabase;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;)V

    .line 714
    .local v8, "handler":Lcom/google/android/picasasync/PicasaApi$EntryHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/PicasaSyncHelper;->getPseudoUploadAlbum(Ljava/lang/String;)Lcom/google/android/picasasync/AlbumEntry;

    move-result-object v19

    .line 716
    .local v19, "pseudoUploadAlbum":Lcom/google/android/picasasync/AlbumEntry;
    const/16 v20, 0x3

    .line 717
    .local v20, "result":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    const/4 v3, 0x1

    move/from16 v0, v16

    if-gt v0, v3, :cond_3

    .line 718
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/picasasync/PicasaApi;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v8}, Lcom/google/android/picasasync/PicasaApi;->getUploadedPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I

    move-result v20

    .line 719
    const/4 v3, 0x2

    move/from16 v0, v20

    if-eq v0, v3, :cond_5

    .line 724
    :cond_3
    packed-switch v20, :pswitch_data_0

    .line 749
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyAlbumsChange()V

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyPhotosChange()V

    goto/16 :goto_0

    .line 720
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->refreshAuthToken()V

    .line 717
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 726
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v13, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v21, 0x1

    add-long v13, v13, v21

    iput-wide v13, v3, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_0

    .line 729
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v13, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v21, 0x1

    add-long v13, v13, v21

    iput-wide v13, v3, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_0

    .line 735
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v13, v3, Landroid/content/SyncStats;->numDeletes:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v12}, Lcom/google/android/picasasync/PicasaSyncHelper;->deleteUploadedPhotos(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v21, v0

    add-long v13, v13, v21

    iput-wide v13, v3, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_3

    .line 740
    :pswitch_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    .line 741
    .local v18, "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    if-nez v3, :cond_6

    .line 742
    sget-object v3, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    move-object/from16 v0, v18

    iget-wide v13, v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-virtual {v3, v2, v13, v14}, Lcom/android/gallery3d/common/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    .line 743
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v13, v3, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v21, 0x1

    add-long v13, v13, v21

    iput-wide v13, v3, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_4

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    .locals 1
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 760
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;-><init>(Lcom/google/android/picasasync/PicasaSyncHelper;Landroid/content/SyncResult;Ljava/lang/Thread;)V

    return-object v0
.end method

.method public findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;
    .locals 9
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 228
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "account=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 233
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v1, Lcom/google/android/picasasync/UserEntry;

    invoke-direct {v1}, Lcom/google/android/picasasync/UserEntry;-><init>()V

    invoke-virtual {v0, v8, v1}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/UserEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_0
    move-object v0, v5

    .line 233
    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getUsers()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/picasasync/UserEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 852
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/picasasync/UserEntry;>;"
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 854
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 857
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    sget-object v1, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v2, Lcom/google/android/picasasync/UserEntry;

    invoke-direct {v2}, Lcom/google/android/picasasync/UserEntry;-><init>()V

    invoke-virtual {v1, v8, v2}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 861
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 863
    return-object v9
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public isPicasaAccount(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 876
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "service_lh2"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/accounts/AccountManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    const-wide/16 v1, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public notifyAlbumsChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getAlbumsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 118
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/photos/canvas/CanvasProviderBase;->NOTIFY_CHANGED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 120
    return-void
.end method

.method public notifyPhotosChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 125
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/photos/canvas/CanvasProviderBase;->NOTIFY_CHANGED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 127
    return-void
.end method

.method public syncAccounts(Ljava/lang/String;)V
    .locals 27
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v3, "PicasaSync"

    const-string v4, "sync account database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 135
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v24, "obsoleteAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/google/android/picasasync/PicasaSyncHelper;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/google/android/picasasync/PicasaSyncHelper;->PROJECTION_ID_ACCOUNT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 139
    .local v14, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 141
    .local v20, "id":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "account":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    .end local v10    # "account":Ljava/lang/String;
    .end local v20    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/picasasync/GooglePhotoUtils;->getAccountNameIdMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v17

    .line 149
    .local v17, "existingAccounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v25, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAccounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/photos/data/GooglePhotoProvider;->makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    .line 153
    .local v12, "accountsUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v18

    .line 154
    .local v18, "googleAccounts":[Landroid/accounts/Account;
    const-string v3, "PicasaSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accounts in DB="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz v18, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->isMaster()Z

    move-result v22

    .line 157
    .local v22, "isMaster":Z
    move-object/from16 v13, v18

    .local v13, "arr$":[Landroid/accounts/Account;
    array-length v0, v13

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    aget-object v10, v13, v19

    .line 158
    .local v10, "account":Landroid/accounts/Account;
    iget-object v3, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    const/16 v21, 0x1

    .line 159
    .local v21, "isAccountInDb":Z
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v10, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    const/16 v26, 0x1

    .line 160
    .local v26, "syncable":Z
    :goto_3
    if-eqz v22, :cond_1

    if-nez v21, :cond_1

    if-eqz v26, :cond_1

    .line 163
    const-string v3, "PicasaSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add account to DB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v3, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Lcom/google/android/picasasync/UserEntry;

    iget-object v6, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/google/android/picasasync/UserEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 167
    :cond_1
    iget-object v3, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 168
    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "name"

    iget-object v5, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 158
    .end local v21    # "isAccountInDb":Z
    .end local v26    # "syncable":Z
    :cond_3
    const/16 v21, 0x0

    goto :goto_2

    .line 159
    .restart local v21    # "isAccountInDb":Z
    :cond_4
    const/16 v26, 0x0

    goto :goto_3

    .line 176
    .end local v10    # "account":Landroid/accounts/Account;
    .end local v13    # "arr$":[Landroid/accounts/Account;
    .end local v19    # "i$":I
    .end local v21    # "isAccountInDb":Z
    .end local v22    # "isMaster":Z
    .end local v23    # "len$":I
    :cond_5
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 177
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 178
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "PicasaSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove account:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->deleteUser(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_4

    .line 181
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyAlbumsChange()V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/picasasync/PicasaSyncHelper;->notifyPhotosChange()V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncManager;->requestPrefetchSync()V

    .line 190
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 191
    .local v11, "accountId":Ljava/lang/Long;
    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 196
    .end local v11    # "accountId":Ljava/lang/Long;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.google.android.gallery3d.photoprovider"

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :goto_6
    return-void

    .line 197
    :catch_0
    move-exception v15

    .line 198
    .local v15, "e":Landroid/os/TransactionTooLargeException;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/PicasaSyncHelper;->applyBatchInChunks(Ljava/util/List;)V

    goto :goto_6

    .line 199
    .end local v15    # "e":Landroid/os/TransactionTooLargeException;
    :catch_1
    move-exception v15

    .line 200
    .local v15, "e":Ljava/lang/Exception;
    const-string v3, "PicasaSync"

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public syncAlbumsForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V
    .locals 7
    .param p1, "context"    # Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    .param p2, "user"    # Lcom/google/android/picasasync/UserEntry;

    .prologue
    .line 243
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PicasaSyncHelper.syncAlbums "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 245
    .local v2, "statsId":I
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mLockManager:Lcom/google/android/picasasync/SyncLockManager;

    const/4 v4, 0x0

    iget-wide v5, p2, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/picasasync/SyncLockManager;->acquireLock(ILjava/lang/Object;)Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 247
    .local v1, "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 251
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    .end local v1    # "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v2    # "statsId":I
    :goto_0
    return-void

    .line 248
    .restart local v1    # "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v2    # "statsId":I
    :cond_0
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncAlbumsForUserLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    :try_start_4
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 251
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 253
    .end local v1    # "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v2    # "statsId":I
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v2    # "statsId":I
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 251
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public syncPhotosForAlbum(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V
    .locals 8
    .param p1, "context"    # Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    .param p2, "album"    # Lcom/google/android/picasasync/AlbumEntry;

    .prologue
    .line 429
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PicasaSyncHelper.syncPhotos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v3

    .line 432
    .local v3, "statsId":I
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mLockManager:Lcom/google/android/picasasync/SyncLockManager;

    const/4 v5, 0x2

    sget-object v6, Lcom/google/android/picasasync/PicasaSyncHelper;->LOCK_KEY_ALL_ALBUMS:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/picasasync/SyncLockManager;->acquireLock(ILjava/lang/Object;)Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 434
    .local v0, "allAlbumLock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_start_1
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mLockManager:Lcom/google/android/picasasync/SyncLockManager;

    const/4 v5, 0x2

    iget-wide v6, p2, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/picasasync/SyncLockManager;->acquireLock(ILjava/lang/Object;)Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 436
    .local v2, "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    :try_start_3
    invoke-virtual {v2}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 442
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 443
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 448
    .end local v0    # "allAlbumLock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v2    # "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v3    # "statsId":I
    :goto_0
    return-void

    .line 437
    .restart local v0    # "allAlbumLock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v2    # "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v3    # "statsId":I
    :cond_0
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForAlbumLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 439
    :try_start_6
    invoke-virtual {v2}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 442
    :try_start_7
    invoke-virtual {v0}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 443
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 445
    .end local v0    # "allAlbumLock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v2    # "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v3    # "statsId":I
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 439
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "allAlbumLock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v2    # "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v3    # "statsId":I
    :catchall_0
    move-exception v4

    :try_start_8
    invoke-virtual {v2}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 442
    .end local v2    # "lock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :catchall_1
    move-exception v4

    :try_start_9
    invoke-virtual {v0}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 443
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v4
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method public syncPhotosForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V
    .locals 12
    .param p1, "context"    # Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    .param p2, "user"    # Lcom/google/android/picasasync/UserEntry;

    .prologue
    const/4 v5, 0x0

    .line 398
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v10, p2, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 415
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v8, Lcom/google/android/picasasync/AlbumEntry;

    invoke-direct {v8}, Lcom/google/android/picasasync/AlbumEntry;-><init>()V

    .line 417
    .local v8, "album":Lcom/google/android/picasasync/AlbumEntry;
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, v9, v8}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    .line 419
    invoke-virtual {p0, p1, v8}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForAlbum(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V

    .line 420
    invoke-virtual {p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 425
    return-void

    .line 423
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public syncUploadedPhotos(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 617
    :try_start_0
    const-string v3, "PicasaSyncHelper.syncPhotosForUpload"

    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 620
    .local v2, "statsId":I
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncHelper;->mLockManager:Lcom/google/android/picasasync/SyncLockManager;

    const/4 v4, 0x2

    sget-object v5, Lcom/google/android/picasasync/PicasaSyncHelper;->LOCK_KEY_ALL_ALBUMS:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/picasasync/SyncLockManager;->acquireLock(ILjava/lang/Object;)Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 622
    .local v0, "allAlbumLock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 626
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 631
    .end local v0    # "allAlbumLock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v2    # "statsId":I
    :goto_0
    return-void

    .line 623
    .restart local v0    # "allAlbumLock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v2    # "statsId":I
    :cond_0
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForUploadLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 625
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 626
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 628
    .end local v0    # "allAlbumLock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .end local v2    # "statsId":I
    :catch_0
    move-exception v1

    .line 629
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 625
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "allAlbumLock":Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .restart local v2    # "statsId":I
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;->unlock()V

    .line 626
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
.end method
