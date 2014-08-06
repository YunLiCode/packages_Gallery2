.class Lcom/android/photos/data/MediaCacheDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaCacheDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/data/MediaCacheDatabase$Action;
    }
.end annotation


# static fields
.field private static final PROJECTION_CACHED:[Ljava/lang/String;

.field private static final PROJECTION_CACHE_SIZE:[Ljava/lang/String;

.field private static final PROJECTION_DELETE_OLD:[Ljava/lang/String;

.field private static final PROJECTION_ID:[Ljava/lang/String;

.field public static final WHERE_CLEAR_CACHE_LARGE:Ljava/lang/String;

.field public static final WHERE_NOT_THUMBNAIL:Ljava/lang/String;

.field public static final WHERE_THUMBNAIL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/photos/data/MediaCacheDatabase;->PROJECTION_ID:[Ljava/lang/String;

    .line 56
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "media_size"

    aput-object v1, v0, v3

    const-string v1, "size"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/photos/data/MediaCacheDatabase;->PROJECTION_CACHED:[Ljava/lang/String;

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SUM(size)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/photos/data/MediaCacheDatabase;->PROJECTION_CACHE_SIZE:[Ljava/lang/String;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "uri"

    aput-object v1, v0, v3

    const-string v1, "media_size"

    aput-object v1, v0, v4

    const-string v1, "size"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "last_access"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/photos/data/MediaCacheDatabase;->PROJECTION_DELETE_OLD:[Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-virtual {v1}, Lcom/android/photos/data/MediaRetriever$MediaSize;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/MediaCacheDatabase;->WHERE_THUMBNAIL:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media_size <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-virtual {v1}, Lcom/android/photos/data/MediaRetriever$MediaSize;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/MediaCacheDatabase;->WHERE_NOT_THUMBNAIL:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_access <= ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/photos/data/MediaCacheDatabase;->WHERE_NOT_THUMBNAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/MediaCacheDatabase;->WHERE_CLEAR_CACHE_LARGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-string v0, "mediacache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 100
    return-void
.end method

.method private deleteRows(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/photos/data/MediaCacheDatabase$Action;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "action"    # Lcom/android/photos/data/MediaCacheDatabase$Action;

    .prologue
    const/4 v5, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/android/photos/data/MediaCacheDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 217
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 218
    const-string v1, "media_cache"

    sget-object v2, Lcom/android/photos/data/MediaCacheDatabase;->PROJECTION_CACHED:[Ljava/lang/String;

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 219
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 221
    .local v3, "id":J
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/photos/data/MediaRetriever$MediaSize;->fromInteger(I)Lcom/android/photos/data/MediaRetriever$MediaSize;

    move-result-object v5

    .line 222
    .local v5, "size":Lcom/android/photos/data/MediaRetriever$MediaSize;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 223
    .local v9, "length":J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p4

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/photos/data/MediaCacheDatabase$Action;->execute(Landroid/net/Uri;JLcom/android/photos/data/MediaRetriever$MediaSize;Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    .end local v3    # "id":J
    .end local v5    # "size":Lcom/android/photos/data/MediaRetriever$MediaSize;
    .end local v9    # "length":J
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 227
    :try_start_0
    const-string v1, "media_cache"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 228
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private getCacheSize(Ljava/lang/String;)J
    .locals 11
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/android/photos/data/MediaCacheDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 278
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "media_cache"

    sget-object v2, Lcom/android/photos/data/MediaCacheDatabase;->PROJECTION_CACHE_SIZE:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 279
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v9, -0x1

    .line 280
    .local v9, "size":J
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 283
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 284
    return-wide v9
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Lcom/android/photos/data/MediaCacheDatabase$Action;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # Lcom/android/photos/data/MediaCacheDatabase$Action;

    .prologue
    .line 207
    const-string v0, "uri = ?"

    .line 208
    .local v0, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 211
    .local v1, "whereArgs":[Ljava/lang/String;
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/photos/data/MediaCacheDatabase;->deleteRows(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/photos/data/MediaCacheDatabase$Action;)V

    .line 212
    return-void
.end method

.method public delete(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Lcom/android/photos/data/MediaCacheDatabase$Action;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;
    .param p3, "action"    # Lcom/android/photos/data/MediaCacheDatabase$Action;

    .prologue
    .line 199
    const-string v0, "uri = ? AND media_size = ?"

    .line 200
    .local v0, "where":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/android/photos/data/MediaRetriever$MediaSize;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 203
    .local v1, "whereArgs":[Ljava/lang/String;
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/photos/data/MediaCacheDatabase;->deleteRows(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/photos/data/MediaCacheDatabase$Action;)V

    .line 204
    return-void
.end method

.method public deleteOldCached(ZJLcom/android/photos/data/MediaCacheDatabase$Action;)V
    .locals 22
    .param p1, "includeThumbnails"    # Z
    .param p2, "deleteSize"    # J
    .param p4, "action"    # Lcom/android/photos/data/MediaCacheDatabase$Action;

    .prologue
    .line 235
    if-eqz p1, :cond_1

    const/4 v5, 0x0

    .line 236
    .local v5, "where":Ljava/lang/String;
    :goto_0
    const-wide/16 v15, 0x0

    .line 237
    .local v15, "lastAccess":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/photos/data/MediaCacheDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 238
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 240
    :try_start_0
    const-string v3, "media_cache"

    sget-object v4, Lcom/android/photos/data/MediaCacheDatabase;->PROJECTION_DELETE_OLD:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "last_access"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 242
    .local v12, "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 244
    .local v8, "id":J
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 245
    .local v19, "uri":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/photos/data/MediaRetriever$MediaSize;->fromInteger(I)Lcom/android/photos/data/MediaRetriever$MediaSize;

    move-result-object v10

    .line 246
    .local v10, "size":Lcom/android/photos/data/MediaRetriever$MediaSize;
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 247
    .local v17, "length":J
    const/4 v3, 0x4

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 249
    .local v13, "imageLastAccess":J
    cmp-long v3, v13, v15

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_2

    .line 256
    .end local v8    # "id":J
    .end local v10    # "size":Lcom/android/photos/data/MediaRetriever$MediaSize;
    .end local v13    # "imageLastAccess":J
    .end local v17    # "length":J
    .end local v19    # "uri":Ljava/lang/String;
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 257
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v3, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v20, v3

    .line 260
    .local v20, "whereArgs":[Ljava/lang/String;
    if-eqz p1, :cond_3

    const-string v21, "last_access <= ?"

    .line 261
    .local v21, "whereDelete":Ljava/lang/String;
    :goto_2
    const-string v3, "media_cache"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 262
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 266
    return-void

    .line 235
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "where":Ljava/lang/String;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v15    # "lastAccess":J
    .end local v20    # "whereArgs":[Ljava/lang/String;
    .end local v21    # "whereDelete":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/photos/data/MediaCacheDatabase;->WHERE_NOT_THUMBNAIL:Ljava/lang/String;

    goto :goto_0

    .line 252
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "where":Ljava/lang/String;
    .restart local v8    # "id":J
    .restart local v10    # "size":Lcom/android/photos/data/MediaRetriever$MediaSize;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "imageLastAccess":J
    .restart local v15    # "lastAccess":J
    .restart local v17    # "length":J
    .restart local v19    # "uri":Ljava/lang/String;
    :cond_2
    move-wide v15, v13

    .line 253
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v6, p4

    invoke-interface/range {v6 .. v11}, Lcom/android/photos/data/MediaCacheDatabase$Action;->execute(Landroid/net/Uri;JLcom/android/photos/data/MediaRetriever$MediaSize;Ljava/lang/Object;)V

    .line 254
    sub-long p2, p2, v17

    .line 255
    goto :goto_1

    .line 260
    .end local v8    # "id":J
    .end local v10    # "size":Lcom/android/photos/data/MediaRetriever$MediaSize;
    .end local v13    # "imageLastAccess":J
    .end local v17    # "length":J
    .end local v19    # "uri":Ljava/lang/String;
    .restart local v20    # "whereArgs":[Ljava/lang/String;
    :cond_3
    sget-object v21, Lcom/android/photos/data/MediaCacheDatabase;->WHERE_CLEAR_CACHE_LARGE:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 264
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v20    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public executeOnBestCached(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Lcom/android/photos/data/MediaCacheDatabase$Action;)Lcom/android/photos/data/MediaRetriever$MediaSize;
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;
    .param p3, "action"    # Lcom/android/photos/data/MediaCacheDatabase$Action;

    .prologue
    .line 144
    const-string v3, "uri = ? AND media_size < ?"

    .line 145
    .local v3, "where":Ljava/lang/String;
    const-string v7, "media_size DESC"

    .line 146
    .local v7, "orderBy":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/photos/data/MediaCacheDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 147
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/photos/data/MediaRetriever$MediaSize;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 150
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "media_cache"

    sget-object v2, Lcom/android/photos/data/MediaCacheDatabase;->PROJECTION_CACHED:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 151
    .local v14, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 152
    .local v12, "bestSize":Lcom/android/photos/data/MediaRetriever$MediaSize;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 154
    .local v10, "id":J
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/photos/data/MediaRetriever$MediaSize;->fromInteger(I)Lcom/android/photos/data/MediaRetriever$MediaSize;

    move-result-object v12

    .line 155
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 156
    .local v15, "fileSize":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v8, p3

    move-object/from16 v9, p1

    invoke-interface/range {v8 .. v13}, Lcom/android/photos/data/MediaCacheDatabase$Action;->execute(Landroid/net/Uri;JLcom/android/photos/data/MediaRetriever$MediaSize;Ljava/lang/Object;)V

    .line 158
    .end local v10    # "id":J
    .end local v15    # "fileSize":J
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 159
    return-object v12
.end method

.method public getCacheSize()J
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/photos/data/MediaCacheDatabase;->getCacheSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCached(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;)Ljava/lang/Long;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 115
    const-string v3, "uri = ? AND media_size = ?"

    .line 116
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/photos/data/MediaCacheDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 117
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/android/photos/data/MediaRetriever$MediaSize;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 120
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v1, "media_cache"

    sget-object v2, Lcom/android/photos/data/MediaCacheDatabase;->PROJECTION_ID:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 121
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 122
    .local v9, "id":Ljava/lang/Long;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 125
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 126
    if-eqz v9, :cond_1

    .line 127
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 130
    .local v10, "updateArgs":[Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 134
    :try_start_0
    const-string v1, "media_cache"

    const-string v2, "_id = ?"

    invoke-virtual {v0, v1, v11, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 140
    .end local v10    # "updateArgs":[Ljava/lang/String;
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_1
    return-object v9

    .line 137
    .restart local v10    # "updateArgs":[Ljava/lang/String;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public getThumbnailCacheSize()J
    .locals 2

    .prologue
    .line 273
    sget-object v0, Lcom/android/photos/data/MediaCacheDatabase;->WHERE_THUMBNAIL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/photos/data/MediaCacheDatabase;->getCacheSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Landroid/net/Uri;Lcom/android/photos/data/MediaRetriever$MediaSize;Lcom/android/photos/data/MediaCacheDatabase$Action;Ljava/io/File;)J
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;
    .param p3, "action"    # Lcom/android/photos/data/MediaCacheDatabase$Action;
    .param p4, "tempFile"    # Ljava/io/File;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/photos/data/MediaCacheDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 164
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 166
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v7, "values":Landroid/content/ContentValues;
    const-string v0, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    const-string v0, "media_size"

    invoke-virtual {p2}, Lcom/android/photos/data/MediaRetriever$MediaSize;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v0, "uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "size"

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v0, "media_cache"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 172
    .local v2, "id":J
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    move-object v0, p3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p4

    .line 173
    invoke-interface/range {v0 .. v5}, Lcom/android/photos/data/MediaCacheDatabase$Action;->execute(Landroid/net/Uri;JLcom/android/photos/data/MediaRetriever$MediaSize;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v2

    .end local v2    # "id":J
    .end local v7    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 104
    const-string v0, "CREATE TABLE media_cache(_id INTEGER PRIMARY KEY AUTOINCREMENT, uri TEXT NOT NULL,media_size INTEGER NOT NULL,last_access INTEGER NOT NULL,size INTEGER NOT NULL,UNIQUE(uri, media_size))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 109
    const-string v0, "DROP TABLE IF EXISTS media_cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/photos/data/MediaCacheDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    invoke-static {}, Lcom/android/photos/data/MediaCache;->getInstance()Lcom/android/photos/data/MediaCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/photos/data/MediaCache;->clearCacheDir()V

    .line 112
    return-void
.end method
