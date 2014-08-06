.class public Lcom/google/android/photos/data/GooglePhotoDatabase;
.super Lcom/android/photos/data/PhotoDatabase;
.source "GooglePhotoDatabase.java"


# static fields
.field private static final CREATE_GOOGLE_ACCOUNTS:[[Ljava/lang/String;

.field private static final CREATE_GOOGLE_ALBUMS:[[Ljava/lang/String;

.field private static final CREATE_GOOGLE_PHOTOS:[[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-array v0, v7, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "server_id"

    aput-object v2, v1, v4

    const-string v2, "INTEGER UNIQUE"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "etag"

    aput-object v2, v1, v4

    const-string v2, "TEXT"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "is_configured"

    aput-object v2, v1, v4

    const-string v2, "INTEGER DEFAULT 0 NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/photos/data/GooglePhotoDatabase;->CREATE_GOOGLE_ACCOUNTS:[[Ljava/lang/String;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "server_id"

    aput-object v2, v1, v4

    const-string v2, "INTEGER UNIQUE"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "etag"

    aput-object v2, v1, v4

    const-string v2, "TEXT"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "preview_url"

    aput-object v2, v1, v4

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "is_deleted"

    aput-object v2, v1, v4

    const-string v2, "INTEGER DEFAULT 0 NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "is_dirty"

    aput-object v2, v1, v4

    const-string v2, "INTEGER DEFAULT 0 NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "is_shown"

    aput-object v3, v2, v4

    const-string v3, "INTEGER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/photos/data/GooglePhotoDatabase;->CREATE_GOOGLE_ALBUMS:[[Ljava/lang/String;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "server_id"

    aput-object v2, v1, v4

    const-string v2, "INTEGER UNIQUE"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "etag"

    aput-object v2, v1, v4

    const-string v2, "TEXT"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "preview_url"

    aput-object v2, v1, v4

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "original_url"

    aput-object v2, v1, v4

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "local_path"

    aput-object v2, v1, v4

    const-string v2, "TEXT"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "is_deleted"

    aput-object v3, v2, v4

    const-string v3, "INTEGER DEFAULT 0 NOT NULL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "is_dirty"

    aput-object v3, v2, v4

    const-string v3, "INTEGER DEFAULT 0 NOT NULL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/photos/data/GooglePhotoDatabase;->CREATE_GOOGLE_PHOTOS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Lcom/android/photos/data/PhotoDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 54
    iput-object p1, p0, Lcom/google/android/photos/data/GooglePhotoDatabase;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "dbVersion"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/photos/data/PhotoDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 49
    iput-object p1, p0, Lcom/google/android/photos/data/GooglePhotoDatabase;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private static addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "create"    # [[Ljava/lang/String;

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, "typeText":Ljava/lang/String;
    array-length v3, p3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 122
    aget-object v3, p3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    aget-object v3, p3, v1

    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ALTER TABLE "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "alterTable":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ADD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    return-void

    .line 121
    .end local v0    # "alterTable":Ljava/lang/StringBuilder;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected getAccountTableDefinition()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/photos/data/PhotoDatabase;->getAccountTableDefinition()Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, "createTable":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoDatabase;->CREATE_GOOGLE_ACCOUNTS:[[Ljava/lang/String;

    const/4 v1, 0x0

    check-cast v1, [[Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/google/android/photos/data/GooglePhotoDatabase;->addToTable(Ljava/util/List;[[Ljava/lang/String;[[Ljava/lang/String;)V

    .line 116
    return-object v0
.end method

.method protected getAlbumTableDefinition()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/photos/data/PhotoDatabase;->getAlbumTableDefinition()Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "createTable":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoDatabase;->CREATE_GOOGLE_ALBUMS:[[Ljava/lang/String;

    const/4 v1, 0x0

    check-cast v1, [[Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/google/android/photos/data/GooglePhotoDatabase;->addToTable(Ljava/util/List;[[Ljava/lang/String;[[Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method protected getPhotoTableDefinition()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/photos/data/PhotoDatabase;->getPhotoTableDefinition()Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "createTable":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoDatabase;->CREATE_GOOGLE_PHOTOS:[[Ljava/lang/String;

    const/4 v1, 0x0

    check-cast v1, [[Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/google/android/photos/data/GooglePhotoDatabase;->addToTable(Ljava/util/List;[[Ljava/lang/String;[[Ljava/lang/String;)V

    .line 109
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/photos/data/PhotoDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/photos/data/GooglePhotoDatabase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestAccountSync()V

    .line 64
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 91
    invoke-static {}, Lcom/android/photos/data/MediaCache;->getInstance()Lcom/android/photos/data/MediaCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/photos/data/MediaCache;->clearCacheDir()V

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/android/photos/data/PhotoDatabase;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 95
    iget-object v0, p0, Lcom/google/android/photos/data/GooglePhotoDatabase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/PicasaSyncManager;->requestMetadataSync(Z)V

    .line 96
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 68
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1

    .line 70
    invoke-static {}, Lcom/android/photos/data/MediaCache;->getInstance()Lcom/android/photos/data/MediaCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/photos/data/MediaCache;->clearCacheDir()V

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/android/photos/data/PhotoDatabase;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 74
    iget-object v0, p0, Lcom/google/android/photos/data/GooglePhotoDatabase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/PicasaSyncManager;->requestMetadataSync(Z)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x6

    if-ge p2, v0, :cond_2

    .line 79
    const-string v0, "albums"

    const-string v1, "is_shown"

    sget-object v2, Lcom/google/android/photos/data/GooglePhotoDatabase;->CREATE_GOOGLE_ALBUMS:[[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/photos/data/GooglePhotoDatabase;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)V

    .line 81
    :cond_2
    const/4 v0, 0x7

    if-ge p2, v0, :cond_0

    .line 82
    const-string v0, "accounts"

    const-string v1, "is_configured"

    sget-object v2, Lcom/google/android/photos/data/GooglePhotoDatabase;->CREATE_GOOGLE_ACCOUNTS:[[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/photos/data/GooglePhotoDatabase;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)V

    goto :goto_0
.end method
