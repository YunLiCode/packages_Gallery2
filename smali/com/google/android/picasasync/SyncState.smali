.class public Lcom/google/android/picasasync/SyncState;
.super Ljava/lang/Object;
.source "SyncState.java"


# static fields
.field public static final METADATA:Lcom/google/android/picasasync/SyncState;

.field public static final METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

.field public static final PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

.field public static final PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

.field public static final PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

.field private static final STATE_PROJECTION:[Ljava/lang/String;

.field private static final USER_TABLE_NAME:Ljava/lang/String;

.field private static final sValues:Landroid/content/ContentValues;

.field private static final sWhereArgs:[Ljava/lang/String;


# instance fields
.field private final mOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 28
    new-instance v0, Lcom/google/android/picasasync/SyncState;

    invoke-direct {v0, v3}, Lcom/google/android/picasasync/SyncState;-><init>(I)V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    .line 29
    new-instance v0, Lcom/google/android/picasasync/SyncState;

    invoke-direct {v0, v2}, Lcom/google/android/picasasync/SyncState;-><init>(I)V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    .line 30
    new-instance v0, Lcom/google/android/picasasync/SyncState;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/SyncState;-><init>(I)V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

    .line 31
    new-instance v0, Lcom/google/android/picasasync/SyncState;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/SyncState;-><init>(I)V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

    .line 32
    new-instance v0, Lcom/google/android/picasasync/SyncState;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/SyncState;-><init>(I)V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

    .line 46
    sget-object v0, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/SyncState;->USER_TABLE_NAME:Ljava/lang/String;

    .line 47
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "sync_states"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/SyncState;->STATE_PROJECTION:[Ljava/lang/String;

    .line 50
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/picasasync/SyncState;->sWhereArgs:[Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/picasasync/SyncState;->sValues:Landroid/content/ContentValues;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    .line 57
    return-void
.end method

.method private compareAndSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z
    .locals 3

    .prologue
    .line 103
    const-class v1, Lcom/google/android/picasasync/SyncState;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/picasasync/SyncState;->getStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 105
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shr-int v2, v0, v2

    and-int/lit8 v2, v2, 0x3

    if-ne v2, p3, :cond_0

    .line 107
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/picasasync/SyncState;->writeStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    .line 108
    const/4 v0, 0x1

    monitor-exit v1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 119
    sget-object v0, Lcom/google/android/picasasync/SyncState;->sWhereArgs:[Ljava/lang/String;

    aput-object p1, v0, v1

    .line 120
    sget-object v1, Lcom/google/android/picasasync/SyncState;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/SyncState;->STATE_PROJECTION:[Ljava/lang/String;

    const-string v3, "account=?"

    sget-object v4, Lcom/google/android/picasasync/SyncState;->sWhereArgs:[Ljava/lang/String;

    const-string v8, "1"

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 123
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 125
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return v0

    .line 123
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private writeStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "states"    # I
    .param p4, "update"    # I

    .prologue
    .line 130
    sget-object v0, Lcom/google/android/picasasync/SyncState;->sWhereArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 131
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p3, v0

    .line 132
    iget v0, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shl-int v0, p4, v0

    or-int/2addr p3, v0

    .line 133
    sget-object v0, Lcom/google/android/picasasync/SyncState;->sValues:Landroid/content/ContentValues;

    const-string v1, "sync_states"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 136
    :try_start_0
    sget-object v0, Lcom/google/android/picasasync/SyncState;->USER_TABLE_NAME:Ljava/lang/String;

    sget-object v1, Lcom/google/android/picasasync/SyncState;->sValues:Landroid/content/ContentValues;

    const-string v2, "account=?"

    sget-object v3, Lcom/google/android/picasasync/SyncState;->sWhereArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public getState(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p1, p2}, Lcom/google/android/picasasync/SyncState;->getStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 82
    const-class v1, Lcom/google/android/picasasync/SyncState;

    monitor-enter v1

    .line 83
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/picasasync/SyncState;->getStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 84
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shr-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSyncFinish(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/picasasync/SyncState;->compareAndSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z

    .line 93
    return-void
.end method

.method public onSyncRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 69
    const-class v1, Lcom/google/android/picasasync/SyncState;

    monitor-enter v1

    .line 70
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/picasasync/SyncState;->getStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 71
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v2, p0, Lcom/google/android/picasasync/SyncState;->mOffset:I

    shr-int v2, v0, v2

    and-int/lit8 v2, v2, 0x3

    if-eq v2, v3, :cond_0

    .line 73
    const/4 v2, 0x2

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/picasasync/SyncState;->writeStates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    .line 74
    const/4 v0, 0x1

    monitor-exit v1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSyncStart(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/picasasync/SyncState;->compareAndSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public resetSyncToDirty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/picasasync/SyncState;->compareAndSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z

    .line 99
    return-void
.end method
