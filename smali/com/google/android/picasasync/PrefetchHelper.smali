.class Lcom/google/android/picasasync/PrefetchHelper;
.super Ljava/lang/Object;
.source "PrefetchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;,
        Lcom/google/android/picasasync/PrefetchHelper$PrefetchListener;,
        Lcom/google/android/picasasync/PrefetchHelper$CacheStats;
    }
.end annotation


# static fields
.field private static final ALBUM_TABLE_NAME:Ljava/lang/String;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static final PROJECTION_ID:[Ljava/lang/String;

.field private static final PROJECTION_ID_CACHE_FLAG_STATUS_THUMBNAIL:[Ljava/lang/String;

.field private static final PROJECTION_ID_ROTATION_CONTENT_URL_CONTENT_TYPE_SCREENNAIL_URL:[Ljava/lang/String;

.field private static final PROJECTION_ID_SCREENNAIL_URL:[Ljava/lang/String;

.field private static final PROJECTION_ID_THUMBNAIL_URL:[Ljava/lang/String;

.field private static final QUERY_CACHE_STATUS_COUNT:Ljava/lang/String;

.field private static final WHERE_ALBUM_ID_AND_CACHE_STATUS:Ljava/lang/String;

.field private static final WHERE_CACHE_STATUS_AND_USER_ID:Ljava/lang/String;

.field private static final WHERE_USER_ID_AND_CACHE_FLAG:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/picasasync/PrefetchHelper;

.field private static sMaxCachedScreennailCount:I


# instance fields
.field private mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCacheDir:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    const/4 v0, -0x1

    sput v0, Lcom/google/android/picasasync/PrefetchHelper;->sMaxCachedScreennailCount:I

    .line 84
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 98
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID:[Ljava/lang/String;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "rotation"

    aput-object v1, v0, v4

    const-string v1, "content_url"

    aput-object v1, v0, v5

    const-string v1, "content_type"

    aput-object v1, v0, v6

    const-string v1, "screennail_url"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_ROTATION_CONTENT_URL_CONTENT_TYPE_SCREENNAIL_URL:[Ljava/lang/String;

    .line 106
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "cache_flag"

    aput-object v1, v0, v4

    const-string v1, "cache_status"

    aput-object v1, v0, v5

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_CACHE_FLAG_STATUS_THUMBNAIL:[Ljava/lang/String;

    .line 113
    const-string v0, "%s=? AND %s=?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "user_id"

    aput-object v2, v1, v3

    const-string v2, "cache_flag"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_USER_ID_AND_CACHE_FLAG:Ljava/lang/String;

    .line 115
    const-string v0, "%s=? AND %s=?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "album_id"

    aput-object v2, v1, v3

    const-string v2, "cache_status"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_ALBUM_ID_AND_CACHE_STATUS:Ljava/lang/String;

    .line 376
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "screennail_url"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_SCREENNAIL_URL:[Ljava/lang/String;

    .line 379
    const-string v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "cache_status"

    aput-object v2, v1, v3

    const-string v2, "user_id"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_CACHE_STATUS_AND_USER_ID:Ljava/lang/String;

    .line 420
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_THUMBNAIL_URL:[Ljava/lang/String;

    .line 726
    const-string v0, "SELECT count(*), %s.%s AS status FROM %s, %s WHERE %s.%s = %s.%s AND %s.%s = ? GROUP BY status"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "cache_status"

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "album_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "cache_flag"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->QUERY_CACHE_STATUS_COUNT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    .line 134
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/PrefetchHelper;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/picasasync/PrefetchHelper;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private collectKeepSetForFullImages(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "keepSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 176
    const-string v2, "SELECT %s FROM %s WHERE %s IN (SELECT %s FROM %s WHERE %s = %s)"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "album_id"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "cache_flag"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "query":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 183
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 189
    return-void
.end method

.method private collectKeepSetForScreenNails(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "keepSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v4, 0x1388

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 147
    sget v2, Lcom/google/android/picasasync/PrefetchHelper;->sMaxCachedScreennailCount:I

    if-gez v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "picasasync_max_cached_screennail_count"

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/google/android/picasasync/PrefetchHelper;->sMaxCachedScreennailCount:I

    .line 154
    sget v2, Lcom/google/android/picasasync/PrefetchHelper;->sMaxCachedScreennailCount:I

    if-gez v2, :cond_0

    sput v4, Lcom/google/android/picasasync/PrefetchHelper;->sMaxCachedScreennailCount:I

    .line 157
    :cond_0
    const-string v2, "SELECT %s FROM %s WHERE %s IN (SELECT %s FROM %s WHERE %s = %s) ORDER BY %s DESC LIMIT %s"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v3, v5

    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "album_id"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "cache_flag"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "date_updated"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget v5, Lcom/google/android/picasasync/PrefetchHelper;->sMaxCachedScreennailCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "query":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 167
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 173
    return-void
.end method

.method private deleteUnusedAlbumCovers(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/util/HashSet;)V
    .locals 11
    .param p1, "context"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    .local p2, "coverSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "cacheDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v8, "picasa_covers"

    invoke-direct {v2, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, "names":[Ljava/lang/String;
    if-nez v7, :cond_1

    .line 351
    :cond_0
    return-void

    .line 343
    :cond_1
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 344
    .local v6, "name":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/picasasync/PrefetchHelper;->getKeyFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 346
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_2

    .line 347
    const-string v8, "PrefetchHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot delete album cover: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private deleteUnusedCacheFiles(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/util/HashMap;)V
    .locals 13
    .param p1, "context"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    .local p2, "keepSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "cacheDir":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v6, v1, v8

    .line 357
    .local v6, "folderName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 374
    .end local v6    # "folderName":Ljava/lang/String;
    :cond_0
    return-void

    .line 358
    .restart local v6    # "folderName":Ljava/lang/String;
    :cond_1
    const-string v12, "picasa-"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 356
    .end local v8    # "i$":I
    :cond_2
    :goto_1
    add-int/lit8 v7, v8, 0x1

    .restart local v7    # "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_0

    .line 360
    :cond_3
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .local v5, "folder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "allFiles":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 363
    move-object v2, v0

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v10, :cond_4

    aget-object v4, v2, v7

    .line 364
    .local v4, "filename":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 369
    .end local v4    # "filename":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-nez v12, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 370
    .end local v0    # "allFiles":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "folder":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    :catch_0
    move-exception v11

    .line 371
    .local v11, "t":Ljava/lang/Throwable;
    const-string v12, "PrefetchHelper"

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 365
    .end local v11    # "t":Ljava/lang/Throwable;
    .restart local v0    # "allFiles":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v5    # "folder":Ljava/io/File;
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    :cond_5
    :try_start_1
    invoke-direct {p0, v5, v4, p2}, Lcom/google/android/picasasync/PrefetchHelper;->keepCacheFile(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 366
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method private downloadPhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/lang/String;Ljava/io/File;)Z
    .locals 12
    .param p1, "context"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 658
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 659
    .local v6, "startTime":J
    const/4 v3, 0x0

    .line 660
    .local v3, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 662
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p2}, Lcom/google/android/picasastore/HttpUtils;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 663
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    .end local v3    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    const/16 v9, 0x1000

    :try_start_1
    new-array v0, v9, [B

    .line 665
    .local v0, "buffer":[B
    const/4 v9, 0x0

    array-length v10, v0

    invoke-virtual {v2, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 666
    .local v5, "rc":I
    :goto_0
    if-lez v5, :cond_1

    .line 667
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 668
    invoke-static {v2}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 680
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 681
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    move-object v3, v4

    .end local v0    # "buffer":[B
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "rc":I
    .restart local v3    # "os":Ljava/io/OutputStream;
    :goto_1
    return v8

    .line 671
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "rc":I
    :cond_0
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v4, v0, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 672
    const/4 v9, 0x0

    array-length v10, v0

    invoke-virtual {v2, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    goto :goto_0

    .line 674
    :cond_1
    const/4 v8, 0x1

    .line 680
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 681
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_1

    .line 675
    .end local v0    # "buffer":[B
    .end local v5    # "rc":I
    :catch_0
    move-exception v1

    .line 676
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-static {v2}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 677
    const-string v9, "PrefetchHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to download: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 680
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 681
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    goto :goto_1

    .line 680
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 681
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-static {v9, v10}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    throw v8

    .line 680
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 675
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private generateScreennail(JI)V
    .locals 16
    .param p1, "photoId"    # J
    .param p3, "rotation"    # I

    .prologue
    .line 558
    invoke-direct/range {p0 .. p0}, Lcom/google/android/picasasync/PrefetchHelper;->getAvailableStorage()J

    move-result-wide v2

    .line 559
    .local v2, "availableStorage":J
    const-wide/32 v13, 0x40000000

    cmp-long v13, v2, v13

    if-gez v13, :cond_0

    .line 560
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "space not enough: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", stop sync"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 563
    :cond_0
    const/4 v8, 0x0

    .line 565
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v13, ".full"

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v13}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 566
    .local v5, "cacheFile":Ljava/io/File;
    const-string v13, ".screen"

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v13}, Lcom/google/android/picasastore/PicasaStoreFacade;->createCacheFile(JLjava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 568
    .local v11, "screennailCacheFile":Ljava/io/File;
    if-eqz v5, :cond_1

    if-nez v11, :cond_2

    .line 589
    :cond_1
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 591
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v11    # "screennailCacheFile":Ljava/io/File;
    :goto_0
    return-void

    .line 569
    .restart local v5    # "cacheFile":Ljava/io/File;
    .restart local v11    # "screennailCacheFile":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 571
    .local v6, "cacheFilePath":Ljava/lang/String;
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 572
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 573
    invoke-static {v6, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 574
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v15, Lcom/google/android/picasastore/Config;->sScreenNailSize:I

    invoke-static {v13, v14, v15}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v13

    iput v13, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 576
    const/4 v13, 0x0

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 577
    invoke-static {v6, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 578
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_3

    .line 589
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 580
    :cond_3
    :try_start_2
    sget v13, Lcom/google/android/picasastore/Config;->sScreenNailSize:I

    const/4 v14, 0x1

    invoke-static {v4, v13, v14}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 582
    const/4 v13, 0x1

    move/from16 v0, p3

    invoke-static {v4, v0, v13}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 583
    const/16 v13, 0x5f

    invoke-static {v4, v13}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v7

    .line 584
    .local v7, "content":[B
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    :try_start_3
    array-length v14, v7

    invoke-virtual {v9, v7, v13, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 589
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 590
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 586
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFilePath":Ljava/lang/String;
    .end local v7    # "content":[B
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "screennailCacheFile":Ljava/io/File;
    :catch_0
    move-exception v12

    .line 587
    .local v12, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    const-string v13, "PrefetchHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cannot generate screennail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 589
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v12    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v13

    :goto_2
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "cacheFile":Ljava/io/File;
    .restart local v6    # "cacheFilePath":Ljava/lang/String;
    .restart local v7    # "content":[B
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "screennailCacheFile":Ljava/io/File;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 586
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasasync/PrefetchHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const-class v1, Lcom/google/android/picasasync/PrefetchHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/picasasync/PrefetchHelper;->sInstance:Lcom/google/android/picasasync/PrefetchHelper;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/google/android/picasasync/PrefetchHelper;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PrefetchHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PrefetchHelper;->sInstance:Lcom/google/android/picasasync/PrefetchHelper;

    .line 129
    :cond_0
    sget-object v0, Lcom/google/android/picasasync/PrefetchHelper;->sInstance:Lcom/google/android/picasasync/PrefetchHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "albumId"    # J
    .param p3, "thumbnailUrl"    # Ljava/lang/String;
    .param p4, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 653
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "external storage not present"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 654
    :cond_0
    return-object v0
.end method

.method private getAvailableStorage()J
    .locals 6

    .prologue
    .line 690
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 691
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 694
    .end local v0    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 692
    :catch_0
    move-exception v1

    .line 693
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "PrefetchHelper"

    const-string v3, "Fail to getAvailableStorage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 694
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getCacheDirectory()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheDir:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 139
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "external storage is not present"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheDir:Ljava/lang/String;

    .line 143
    .end local v0    # "cacheDir":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheDir:Ljava/lang/String;

    return-object v1
.end method

.method private static getKeyFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 333
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 334
    .local v0, "index":I
    if-gez v0, :cond_0

    .end local p0    # "name":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static invalidateAlbumCoverCache(JLjava/lang/String;)V
    .locals 2
    .param p0, "albumId"    # J
    .param p2, "thumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 645
    const-string v1, ".thumb"

    invoke-static {p0, p1, p2, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 647
    .local v0, "cacheFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 648
    :cond_0
    return-void
.end method

.method public static invalidatePhotoCache(J)V
    .locals 2
    .param p0, "photoId"    # J

    .prologue
    .line 635
    const-string v1, ".full"

    invoke-static {p0, p1, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 636
    .local v0, "cacheFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 637
    :cond_0
    const-string v1, ".screen"

    invoke-static {p0, p1, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 638
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 639
    :cond_1
    return-void
.end method

.method private keepCacheFile(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 11
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 296
    .local p3, "keepSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/16 v7, 0x2e

    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 297
    .local v0, "dotPos":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    const/4 v7, 0x0

    .line 329
    :goto_0
    return v7

    .line 298
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "ext":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 302
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 303
    .local v6, "type":Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 309
    const-string v7, ".screen"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".full"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 311
    const/4 v7, 0x1

    goto :goto_0

    .line 313
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 314
    :cond_2
    const/4 v7, 0x2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 315
    const-string v7, ".full"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".screen"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 317
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_3
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 321
    :cond_4
    const-string v7, ".screen"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 322
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 326
    .end local v2    # "id":J
    .end local v6    # "type":Ljava/lang/Integer;
    :catch_0
    move-exception v5

    .line 327
    .local v5, "t":Ljava/lang/Throwable;
    const-string v7, "PrefetchHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot parse id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private setCacheStatus(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "keepSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 261
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 263
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    .line 265
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 266
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_0

    move v2, v6

    .line 269
    .local v2, "status":I
    :goto_1
    const-string v5, "cache_status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 271
    sget-object v5, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v8, "_id=?"

    invoke-virtual {p1, v5, v3, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 275
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "status":I
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "values":Landroid/content/ContentValues;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    :cond_0
    move v2, v7

    .line 266
    goto :goto_1

    .line 273
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 277
    return-void
.end method

.method private syncFullImagesForAlbum(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;J)V
    .locals 23
    .param p1, "context"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .param p2, "albumId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 498
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 502
    .local v7, "whereArgs":[Ljava/lang/String;
    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_ROTATION_CONTENT_URL_CONTENT_TYPE_SCREENNAIL_URL:[Ljava/lang/String;

    sget-object v6, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_ALBUM_ID_AND_CACHE_STATUS:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 506
    .local v20, "cursor":Landroid/database/Cursor;
    if-nez v20, :cond_0

    .line 555
    :goto_0
    return-void

    .line 508
    :cond_0
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 553
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 512
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V

    .line 514
    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->checkCacheConfigVersion()Z

    move-result v4

    if-nez v4, :cond_3

    .line 516
    const-string v4, "PrefetchHelper"

    const-string v5, "cache config has changed, stop sync"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->stopSync()V

    .line 519
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 553
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 520
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 521
    .local v10, "photoId":J
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 522
    .local v22, "rotation":I
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 523
    .local v12, "downloadUrl":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 524
    .local v19, "contentType":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 525
    .local v17, "screennailUrl":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".full"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_6

    .line 527
    const/16 v21, 0x0

    .line 529
    .local v21, "downloadSuccess":Z
    :try_start_3
    const-string v13, ".full"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/google/android/picasasync/PrefetchHelper;->syncOnePhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v21

    .line 532
    :try_start_4
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v10, v11, v1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->onDownloadFinish(JZ)V

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->getDownloadFailCount()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_7

    .line 534
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "too many fail downloads"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 553
    .end local v10    # "photoId":J
    .end local v12    # "downloadUrl":Ljava/lang/String;
    .end local v17    # "screennailUrl":Ljava/lang/String;
    .end local v19    # "contentType":Ljava/lang/String;
    .end local v21    # "downloadSuccess":Z
    .end local v22    # "rotation":I
    :catchall_0
    move-exception v4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v4

    .line 532
    .restart local v10    # "photoId":J
    .restart local v12    # "downloadUrl":Ljava/lang/String;
    .restart local v17    # "screennailUrl":Ljava/lang/String;
    .restart local v19    # "contentType":Ljava/lang/String;
    .restart local v21    # "downloadSuccess":Z
    .restart local v22    # "rotation":I
    :catchall_1
    move-exception v4

    :try_start_5
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v10, v11, v1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->onDownloadFinish(JZ)V

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->getDownloadFailCount()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_5

    .line 534
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "too many fail downloads"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    throw v4

    .line 538
    .end local v21    # "downloadSuccess":Z
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v4}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->onDownloadFinish(JZ)V

    .line 540
    :cond_7
    const-string v4, "image/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 541
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v11, v1}, Lcom/google/android/picasasync/PrefetchHelper;->generateScreennail(JI)V

    goto/16 :goto_1

    .line 542
    :cond_8
    const-string v4, "video/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 544
    const-string v18, ".screen"

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide v15, v10

    invoke-direct/range {v13 .. v18}, Lcom/google/android/picasasync/PrefetchHelper;->syncOnePhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 545
    const-string v4, "PrefetchHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to fetch video screennail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 551
    .end local v10    # "photoId":J
    .end local v12    # "downloadUrl":Ljava/lang/String;
    .end local v17    # "screennailUrl":Ljava/lang/String;
    .end local v19    # "contentType":Ljava/lang/String;
    .end local v22    # "rotation":I
    :cond_9
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 553
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private syncOneAlbumCover(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;)Z
    .locals 9
    .param p1, "context"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .param p2, "albumId"    # J
    .param p4, "thumbnailUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 453
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getAvailableStorage()J

    move-result-wide v0

    .line 454
    .local v0, "availableStorage":J
    const-wide/32 v7, 0x40000000

    cmp-long v7, v0, v7

    if-gez v7, :cond_0

    .line 455
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "space not enough: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", stop sync"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 459
    :cond_0
    const-string v7, ".download"

    invoke-direct {p0, p2, p3, p4, v7}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 460
    .local v4, "tempFile":Ljava/io/File;
    sget v7, Lcom/google/android/picasastore/Config;->sThumbNailSize:I

    invoke-static {p4, v7, v6}, Lcom/google/android/picasasync/PicasaApi;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "downloadUrl":Ljava/lang/String;
    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/picasasync/PrefetchHelper;->downloadPhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/lang/String;Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 463
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 473
    :goto_0
    return v5

    .line 467
    :cond_1
    const-string v7, ".thumb"

    invoke-direct {p0, p2, p3, p4, v7}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 468
    .local v2, "cacheFile":Ljava/io/File;
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 469
    const-string v6, "PrefetchHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot rename file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 473
    goto :goto_0
.end method

.method private syncOnePhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "context"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .param p2, "photoId"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getAvailableStorage()J

    move-result-wide v1

    .line 597
    .local v1, "availableStorage":J
    const-wide/32 v6, 0x40000000

    cmp-long v6, v1, v6

    if-gez v6, :cond_0

    .line 598
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "space not enough: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", stop sync"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 602
    :cond_0
    const-string v6, ".download"

    invoke-static {p2, p3, v6}, Lcom/google/android/picasastore/PicasaStoreFacade;->createCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 603
    .local v4, "tempFile":Ljava/io/File;
    if-nez v4, :cond_1

    new-instance v6, Ljava/io/IOException;

    const-string v7, "external storage absent?"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 604
    :cond_1
    const-string v6, "PrefetchHelper"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ".full"

    move-object/from16 v0, p5

    if-ne v0, v6, :cond_2

    .line 605
    const-string v6, "PrefetchHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download full image for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_2
    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/picasasync/PrefetchHelper;->downloadPhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 609
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 610
    const/4 v6, 0x0

    .line 628
    :goto_0
    return v6

    .line 613
    :cond_3
    move-object/from16 v0, p5

    invoke-static {p2, p3, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->createCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 614
    .local v3, "cacheFile":Ljava/io/File;
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 615
    const-string v6, "PrefetchHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot rename file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 617
    const/4 v6, 0x0

    goto :goto_0

    .line 624
    :cond_4
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 625
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "cache_status"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    iget-object v6, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    sget-object v7, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 628
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "albumId"    # J
    .param p4, "status"    # I

    .prologue
    .line 281
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "cache_status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 284
    .local v1, "whereArgs":[Ljava/lang/String;
    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lcom/google/android/picasasync/PrefetchHelper;->notifyAlbumsChange()V

    .line 286
    return-void
.end method


# virtual methods
.method public cleanCache(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;)V
    .locals 21
    .param p1, "context"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const-string v4, "PrefetchHelper.cleanCache"

    invoke-static {v4}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v18

    .line 195
    .local v18, "statsId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 200
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 201
    .local v11, "albumCoverSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_CACHE_FLAG_STATUS_THUMBNAIL:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 204
    .local v16, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 256
    :goto_1
    return-void

    .line 207
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 208
    .local v12, "albumId":J
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 209
    .local v14, "cacheFlag":I
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 210
    .local v15, "cacheStatus":I
    const/4 v4, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 211
    .local v19, "thumbnailUrl":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v12, v13, v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAlbumCoverKey(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 213
    const/4 v4, 0x2

    if-ne v14, v4, :cond_2

    .line 214
    const/4 v4, 0x3

    if-eq v15, v4, :cond_0

    const/4 v4, 0x1

    if-eq v15, v4, :cond_0

    .line 216
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v13, v4}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    .end local v12    # "albumId":J
    .end local v14    # "cacheFlag":I
    .end local v15    # "cacheStatus":I
    .end local v19    # "thumbnailUrl":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    .line 220
    .restart local v12    # "albumId":J
    .restart local v14    # "cacheFlag":I
    .restart local v15    # "cacheStatus":I
    .restart local v19    # "thumbnailUrl":Ljava/lang/String;
    :cond_2
    if-eqz v15, :cond_0

    .line 221
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v13, v4}, Lcom/google/android/picasasync/PrefetchHelper;->updateAlbumCacheStatus(Landroid/database/sqlite/SQLiteDatabase;JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 226
    .end local v12    # "albumId":J
    .end local v14    # "cacheFlag":I
    .end local v15    # "cacheStatus":I
    .end local v19    # "thumbnailUrl":Ljava/lang/String;
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 230
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->checkPrefetchVersion()V

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/google/android/picasasync/PrefetchHelper;->deleteUnusedAlbumCovers(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/util/HashSet;)V

    .line 235
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v20, "values":Landroid/content/ContentValues;
    const-string v4, "cache_status"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v5, "cache_status <> 0"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v17, "keepSet":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/google/android/picasasync/PrefetchHelper;->collectKeepSetForFullImages(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/google/android/picasasync/PrefetchHelper;->collectKeepSetForScreenNails(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/android/picasasync/PrefetchHelper;->deleteUnusedCacheFiles(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Ljava/util/HashMap;)V

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/google/android/picasasync/PrefetchHelper;->setCacheStatus(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    .line 255
    invoke-static/range {v18 .. v18}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto/16 :goto_1
.end method

.method public createPrefetchContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .locals 1
    .param p1, "syncResult"    # Landroid/content/SyncResult;
    .param p2, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 757
    new-instance v0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;-><init>(Lcom/google/android/picasasync/PrefetchHelper;Landroid/content/SyncResult;Ljava/lang/Thread;)V

    return-object v0
.end method

.method public getAlbumCover(JLjava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "albumId"    # J
    .param p3, "thumbnailUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    const-string v1, ".thumb"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 813
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheStatistics(I)Lcom/google/android/picasasync/PrefetchHelper$CacheStats;
    .locals 9
    .param p1, "flag"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 736
    iget-object v6, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 737
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-array v5, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 738
    .local v5, "whereArgs":[Ljava/lang/String;
    sget-object v6, Lcom/google/android/picasasync/PrefetchHelper;->QUERY_CACHE_STATUS_COUNT:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 739
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;

    invoke-direct {v3}, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;-><init>()V

    .line 740
    .local v3, "stats":Lcom/google/android/picasasync/PrefetchHelper$CacheStats;
    if-nez v1, :cond_0

    .line 752
    :goto_0
    return-object v3

    .line 742
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 743
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 744
    .local v0, "count":I
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 745
    .local v4, "status":I
    if-eqz v4, :cond_1

    .line 746
    iget v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    add-int/2addr v6, v0

    iput v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->pendingCount:I

    .line 748
    :cond_1
    iget v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I

    add-int/2addr v6, v0

    iput v6, v3, Lcom/google/android/picasasync/PrefetchHelper$CacheStats;->totalCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 752
    .end local v0    # "count":I
    .end local v4    # "status":I
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public notifyAlbumsChange()V
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getAlbumsUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 291
    return-void
.end method

.method public setAlbumCachingFlag(JI)V
    .locals 6
    .param p1, "albumId"    # J
    .param p3, "cachingFlag"    # I

    .prologue
    .line 699
    packed-switch p3, :pswitch_data_0

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 708
    :pswitch_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 709
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "cache_flag"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 711
    .local v2, "whereArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v5, "_id=?"

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 713
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 714
    iget-object v3, p0, Lcom/google/android/picasasync/PrefetchHelper;->mCacheConfigVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 715
    invoke-virtual {p0}, Lcom/google/android/picasasync/PrefetchHelper;->notifyAlbumsChange()V

    .line 716
    iget-object v3, p0, Lcom/google/android/picasasync/PrefetchHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncManager;->requestPrefetchSync()V

    goto :goto_0

    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public syncAlbumCoversForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V
    .locals 13
    .param p1, "context"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .param p2, "user"    # Lcom/google/android/picasasync/UserEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 426
    new-instance v11, Ljava/io/File;

    invoke-direct {p0}, Lcom/google/android/picasasync/PrefetchHelper;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "picasa_covers"

    invoke-direct {v11, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .local v11, "folder":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    const-string v1, "PrefetchHelper"

    const-string v2, "cannot create album-cover folder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 433
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-array v4, v6, [Ljava/lang/String;

    iget-wide v1, p2, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 434
    .local v4, "whereArgs":[Ljava/lang/String;
    sget-object v1, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_THUMBNAIL_URL:[Ljava/lang/String;

    const-string v3, "user_id=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 438
    .local v10, "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 440
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 441
    .local v8, "albumId":J
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 442
    .local v12, "thumbnailUrl":Ljava/lang/String;
    invoke-virtual {p0, v8, v9, v12}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCover(JLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 443
    invoke-direct {p0, p1, v8, v9, v12}, Lcom/google/android/picasasync/PrefetchHelper;->syncOneAlbumCover(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 447
    .end local v8    # "albumId":J
    .end local v12    # "thumbnailUrl":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public syncFullImagesForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V
    .locals 9
    .param p1, "context"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .param p2, "user"    # Lcom/google/android/picasasync/UserEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 478
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 479
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-array v4, v6, [Ljava/lang/String;

    iget-wide v1, p2, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 481
    .local v4, "whereArgs":[Ljava/lang/String;
    sget-object v1, Lcom/google/android/picasasync/PrefetchHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_USER_ID_AND_CACHE_FLAG:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 485
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 492
    :goto_1
    return-void

    .line 487
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/picasasync/PrefetchHelper;->syncFullImagesForAlbum(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public syncScreenNailsForUser(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;Lcom/google/android/picasasync/UserEntry;)V
    .locals 13
    .param p1, "context"    # Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;
    .param p2, "user"    # Lcom/google/android/picasasync/UserEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 386
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    iget-wide v1, p2, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 389
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/picasasync/PrefetchHelper;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 390
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/PrefetchHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PrefetchHelper;->PROJECTION_ID_SCREENNAIL_URL:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/picasasync/PrefetchHelper;->WHERE_CACHE_STATUS_AND_USER_ID:Ljava/lang/String;

    const-string v7, "display_index"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 395
    .local v11, "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 396
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->checkCacheConfigVersion()Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    const-string v1, "PrefetchHelper"

    const-string v2, "cache config has changed, stop sync"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->stopSync()V

    .line 401
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->syncInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 418
    :goto_0
    return-void

    .line 403
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 404
    .local v7, "photoId":J
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 406
    .local v12, "screennailUrl":Ljava/lang/String;
    sget v1, Lcom/google/android/picasastore/Config;->sScreenNailSize:I

    const/4 v2, 0x0

    invoke-static {v12, v1, v2}, Lcom/google/android/picasasync/PicasaApi;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v9

    .line 409
    .local v9, "downloadUrl":Ljava/lang/String;
    const-string v10, ".screen"

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/picasasync/PrefetchHelper;->syncOnePhoto(Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    invoke-virtual {p1}, Lcom/google/android/picasasync/PrefetchHelper$PrefetchContext;->getDownloadFailCount()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 411
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "too many fail downloads"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    .end local v7    # "photoId":J
    .end local v9    # "downloadUrl":Ljava/lang/String;
    .end local v12    # "screennailUrl":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    :cond_3
    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0
.end method
