.class public Lcom/android/photos/data/PhotoDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PhotoDatabase.java"


# static fields
.field private static final CREATE_ACCOUNT:[[Ljava/lang/String;

.field private static final CREATE_ALBUM:[[Ljava/lang/String;

.field private static final CREATE_METADATA:[[Ljava/lang/String;

.field private static final CREATE_PHOTO:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    const-class v0, Lcom/android/photos/data/PhotoDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/PhotoDatabase;->TAG:Ljava/lang/String;

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "account_id"

    aput-object v2, v1, v4

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "width"

    aput-object v2, v1, v4

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "height"

    aput-object v2, v1, v4

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "date_taken"

    aput-object v2, v1, v4

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "album_id"

    aput-object v3, v2, v4

    const-string v3, "INTEGER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "mime_type"

    aput-object v3, v2, v4

    const-string v3, "TEXT NOT NULL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v4

    const-string v3, "TEXT"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "date_modified"

    aput-object v3, v2, v4

    const-string v3, "INTEGER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "rotation"

    aput-object v3, v2, v4

    const-string v3, "INTEGER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/photos/data/PhotoDatabase;->CREATE_PHOTO:[[Ljava/lang/String;

    .line 56
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "account_id"

    aput-object v2, v1, v4

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "parent_id"

    aput-object v2, v1, v4

    const-string v2, "INTEGER"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "album_type"

    aput-object v2, v1, v4

    const-string v2, "TEXT"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "visibility"

    aput-object v2, v1, v4

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "location_string"

    aput-object v3, v2, v4

    const-string v3, "TEXT"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v4

    const-string v3, "TEXT NOT NULL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "summary"

    aput-object v3, v2, v4

    const-string v3, "TEXT"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "date_published"

    aput-object v3, v2, v4

    const-string v3, "INTEGER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "date_modified"

    aput-object v3, v2, v4

    const-string v3, "INTEGER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "parent_id"

    const-string v3, "title"

    invoke-static {v2, v3}, Lcom/android/photos/data/PhotoDatabase;->createUniqueConstraint(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/photos/data/PhotoDatabase;->CREATE_ALBUM:[[Ljava/lang/String;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "photo_id"

    aput-object v2, v1, v4

    const-string v2, "INTEGER NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "key"

    aput-object v2, v1, v4

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "value"

    aput-object v2, v1, v4

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    const-string v1, "photo_id"

    const-string v2, "key"

    invoke-static {v1, v2}, Lcom/android/photos/data/PhotoDatabase;->createUniqueConstraint(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/photos/data/PhotoDatabase;->CREATE_METADATA:[[Ljava/lang/String;

    .line 81
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v1, v4

    const-string v2, "TEXT NOT NULL"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/photos/data/PhotoDatabase;->CREATE_ACCOUNT:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "dbVersion"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 96
    return-void
.end method

.method protected static addToTable(Ljava/util/List;[[Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 6
    .param p1, "columns"    # [[Ljava/lang/String;
    .param p2, "constraints"    # [[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;[[",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "createTable":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 175
    move-object v0, p1

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 176
    .local v1, "column":[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {p0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "arr$":[[Ljava/lang/String;
    .end local v1    # "column":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    if-eqz p2, :cond_1

    .line 180
    move-object v0, p2

    .restart local v0    # "arr$":[[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 181
    .local v2, "constraint":[Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 184
    .end local v0    # "arr$":[[Ljava/lang/String;
    .end local v2    # "constraint":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-void
.end method

.method protected static createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "columns":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "CREATE TABLE "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "create":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x28

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    const/4 v3, 0x1

    .line 140
    .local v3, "first":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 141
    .local v1, "column":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 142
    const/16 v8, 0x2c

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    const/4 v3, 0x0

    .line 145
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v7, v0, v5

    .line 146
    .local v7, "val":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "column":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "val":Ljava/lang/String;
    :cond_2
    const/16 v8, 0x29

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 152
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 157
    return-void

    .line 155
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method

.method protected static createUniqueConstraint(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "column1"    # Ljava/lang/String;
    .param p1, "column2"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNIQUE("

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string v2, ","

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string v2, ")"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected static dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 189
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop table if exists "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private recreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 113
    const-string v0, "metadata"

    invoke-static {p1, v0}, Lcom/android/photos/data/PhotoDatabase;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 114
    const-string v0, "photos"

    invoke-static {p1, v0}, Lcom/android/photos/data/PhotoDatabase;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 115
    const-string v0, "albums"

    invoke-static {p1, v0}, Lcom/android/photos/data/PhotoDatabase;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 116
    const-string v0, "accounts"

    invoke-static {p1, v0}, Lcom/android/photos/data/PhotoDatabase;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/photos/data/PhotoDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    return-void
.end method

.method protected static tableCreationStrings([[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "createTable"    # [[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .local v1, "create":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 168
    .local v4, "line":[Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v4    # "line":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected getAccountTableDefinition()Ljava/util/List;
    .locals 1
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
    .line 133
    sget-object v0, Lcom/android/photos/data/PhotoDatabase;->CREATE_ACCOUNT:[[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/photos/data/PhotoDatabase;->tableCreationStrings([[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getAlbumTableDefinition()Ljava/util/List;
    .locals 1
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
    .line 121
    sget-object v0, Lcom/android/photos/data/PhotoDatabase;->CREATE_ALBUM:[[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/photos/data/PhotoDatabase;->tableCreationStrings([[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMetadataTableDefinition()Ljava/util/List;
    .locals 1
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
    .line 129
    sget-object v0, Lcom/android/photos/data/PhotoDatabase;->CREATE_METADATA:[[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/photos/data/PhotoDatabase;->tableCreationStrings([[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPhotoTableDefinition()Ljava/util/List;
    .locals 1
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
    .line 125
    sget-object v0, Lcom/android/photos/data/PhotoDatabase;->CREATE_PHOTO:[[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/photos/data/PhotoDatabase;->tableCreationStrings([[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 88
    const-string v0, "accounts"

    invoke-virtual {p0}, Lcom/android/photos/data/PhotoDatabase;->getAccountTableDefinition()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/photos/data/PhotoDatabase;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)V

    .line 89
    const-string v0, "albums"

    invoke-virtual {p0}, Lcom/android/photos/data/PhotoDatabase;->getAlbumTableDefinition()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/photos/data/PhotoDatabase;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)V

    .line 90
    const-string v0, "photos"

    invoke-virtual {p0}, Lcom/android/photos/data/PhotoDatabase;->getPhotoTableDefinition()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/photos/data/PhotoDatabase;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)V

    .line 91
    const-string v0, "metadata"

    invoke-virtual {p0}, Lcom/android/photos/data/PhotoDatabase;->getMetadataTableDefinition()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/photos/data/PhotoDatabase;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)V

    .line 92
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/photos/data/PhotoDatabase;->recreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/photos/data/PhotoDatabase;->recreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 105
    return-void
.end method
