.class Lcom/google/android/picasasync/PicasaSyncHelper$1;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"

# interfaces
.implements Lcom/google/android/picasasync/PicasaApi$EntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/PicasaSyncHelper;->syncAlbumsForUserLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

.field final synthetic val$accountId:J

.field final synthetic val$albumsUri:Landroid/net/Uri;

.field final synthetic val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$entries:Ljava/util/ArrayList;

.field final synthetic val$existingAlbums:Ljava/util/Map;

.field final synthetic val$ops:Ljava/util/ArrayList;

.field final synthetic val$user:Lcom/google/android/picasasync/UserEntry;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PicasaSyncHelper;Ljava/util/ArrayList;Lcom/google/android/picasasync/UserEntry;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Ljava/util/Map;Landroid/net/Uri;JLjava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

    iput-object p2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$entries:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$user:Lcom/google/android/picasasync/UserEntry;

    iput-object p4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iput-object p6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$existingAlbums:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$albumsUri:Landroid/net/Uri;

    iput-wide p8, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$accountId:J

    iput-object p10, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$ops:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    invoke-direct {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    return-void
.end method


# virtual methods
.method public handleEntry(Landroid/content/ContentValues;)V
    .locals 16
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 294
    const-string v9, "num_photos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 295
    .local v7, "numPhotos":Ljava/lang/Integer;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    const-string v10, "_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->updateId(J)Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-result-object v5

    .line 299
    .local v5, "key":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$entries:Ljava/util/ArrayList;

    invoke-static {v9, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    .line 300
    .local v4, "index":I
    if-ltz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$entries:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-object v6, v9

    .line 301
    .local v6, "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :goto_1
    const-string v9, "date_updated"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 302
    .local v3, "dateEdited":Ljava/lang/Long;
    const-string v9, "thumbnail_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, "thumbnailUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 304
    .local v1, "albumCoverChanged":Z
    if-eqz v6, :cond_2

    iget-object v9, v6, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->url:Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 305
    iget-wide v9, v6, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    iget-object v11, v6, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->url:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/google/android/picasasync/PrefetchHelper;->invalidateAlbumCoverCache(JLjava/lang/String;)V

    .line 306
    const/4 v1, 0x1

    .line 309
    :cond_2
    if-nez v1, :cond_3

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    iget-wide v9, v6, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->dateEdited:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    .line 312
    :cond_3
    const-string v9, "photos_dirty"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 313
    const-string v9, "user_id"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$user:Lcom/google/android/picasasync/UserEntry;

    iget-wide v10, v10, Lcom/android/gallery3d/common/Entry;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    if-nez v6, :cond_8

    .line 315
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # getter for: Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$000()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v10, v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 320
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v9, v9, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v9, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v9, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v9, Landroid/content/SyncStats;->numUpdates:J

    .line 324
    :cond_4
    if-eqz v6, :cond_5

    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 326
    :cond_5
    const/4 v2, 0x0

    .line 327
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$existingAlbums:Ljava/util/Map;

    iget-wide v10, v5, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 328
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$existingAlbums:Ljava/util/Map;

    iget-wide v10, v5, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v3, :cond_6

    .line 329
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$albumsUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "server_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 332
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$existingAlbums:Ljava/util/Map;

    iget-wide v10, v5, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :goto_3
    if-eqz v2, :cond_0

    .line 338
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$ops:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lcom/google/android/picasasync/GooglePhotoUtils;->mapPicasaToAlbumValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 300
    .end local v1    # "albumCoverChanged":Z
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "dateEdited":Ljava/lang/Long;
    .end local v6    # "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    .end local v8    # "thumbnailUrl":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 317
    .restart local v1    # "albumCoverChanged":Z
    .restart local v3    # "dateEdited":Ljava/lang/Long;
    .restart local v6    # "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    .restart local v8    # "thumbnailUrl":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # getter for: Lcom/google/android/picasasync/PicasaSyncHelper;->ALBUM_TABLE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_id=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-wide v14, v6, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v9, v10, v0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 334
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$albumsUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "account_id"

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/picasasync/PicasaSyncHelper$1;->val$accountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    goto :goto_3
.end method
