.class Lcom/google/android/picasastore/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_TABLE:Ljava/lang/String;

.field private static final PROJECTION_FINGERPRINT:[Ljava/lang/String;

.field private static sInstance:Lcom/google/android/picasastore/FingerprintManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/picasastore/FingerprintEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasastore/FingerprintManager;->FINGERPRINT_TABLE:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fingerprint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/picasastore/FingerprintManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasastore/FingerprintManager;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;

    iget-object v1, p0, Lcom/google/android/picasastore/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/picasastore/FingerprintManager;->mDbHelper:Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;

    .line 56
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasastore/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-class v1, Lcom/google/android/picasastore/FingerprintManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/picasastore/FingerprintManager;->sInstance:Lcom/google/android/picasastore/FingerprintManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/picasastore/FingerprintManager;

    invoke-direct {v0, p0}, Lcom/google/android/picasastore/FingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasastore/FingerprintManager;->sInstance:Lcom/google/android/picasastore/FingerprintManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/google/android/picasastore/FingerprintManager;->sInstance:Lcom/google/android/picasastore/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCachedFingerprint(Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;
    .locals 10
    .param p1, "contentUri"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 98
    iget-object v1, p0, Lcom/google/android/picasastore/FingerprintManager;->mDbHelper:Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasastore/FingerprintManager;->FINGERPRINT_TABLE:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasastore/FingerprintManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    const-string v3, "content_uri=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 102
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    new-instance v1, Lcom/android/gallery3d/common/Fingerprint;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v5, v1

    .line 112
    :goto_0
    return-object v5

    .line 110
    :cond_0
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v9

    .line 108
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get fingerprint from cache for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v9    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public declared-synchronized getFingerprint(Ljava/lang/String;Z)Lcom/android/gallery3d/common/Fingerprint;
    .locals 7
    .param p1, "contentUri"    # Ljava/lang/String;
    .param p2, "forceRecalculate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 67
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/picasastore/FingerprintManager;->getCachedFingerprint(Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 68
    .local v0, "cachedFingerprint":Lcom/android/gallery3d/common/Fingerprint;
    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 90
    .end local v0    # "cachedFingerprint":Lcom/android/gallery3d/common/Fingerprint;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 73
    .restart local v0    # "cachedFingerprint":Lcom/android/gallery3d/common/Fingerprint;
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 74
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/picasastore/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/gallery3d/common/Fingerprint;->fromInputStream(Ljava/io/InputStream;[J)Lcom/android/gallery3d/common/Fingerprint;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 82
    .local v1, "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/common/Fingerprint;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 84
    :cond_1
    sget-object v4, Lcom/google/android/picasastore/FingerprintEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v5, p0, Lcom/google/android/picasastore/FingerprintManager;->mDbHelper:Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;

    invoke-virtual {v5}, Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Lcom/google/android/picasastore/FingerprintEntry;

    invoke-direct {v6, p1, v1}, Lcom/google/android/picasastore/FingerprintEntry;-><init>(Ljava/lang/String;Lcom/android/gallery3d/common/Fingerprint;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    move-object v0, v1

    .line 90
    goto :goto_0

    .line 76
    .end local v1    # "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot compute fingerprint for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 78
    goto :goto_0

    .line 87
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v1    # "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 88
    .restart local v2    # "t":Ljava/lang/Throwable;
    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot cache fingerprint for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 67
    .end local v0    # "cachedFingerprint":Lcom/android/gallery3d/common/Fingerprint;
    .end local v1    # "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized invalidate([Ljava/lang/String;)I
    .locals 3
    .param p1, "contentUris"    # [Ljava/lang/String;

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/picasastore/FingerprintManager;->mDbHelper:Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasastore/FingerprintManager;->FINGERPRINT_TABLE:Ljava/lang/String;

    const-string v2, "content_uri=?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 128
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v1, p0, Lcom/google/android/picasastore/FingerprintManager;->mDbHelper:Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 137
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasastore/FingerprintEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    return-void
.end method
