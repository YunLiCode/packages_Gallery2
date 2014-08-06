.class Lcom/google/android/picasasync/PicasaSyncHelper$2;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"

# interfaces
.implements Lcom/google/android/picasasync/PicasaApi$EntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForAlbumLocked(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/AlbumEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayIndex:I

.field private mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

.field final synthetic val$accountId:J

.field final synthetic val$album:Lcom/google/android/picasasync/AlbumEntry;

.field final synthetic val$albumId:J

.field final synthetic val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic val$entries:Ljava/util/ArrayList;

.field final synthetic val$existingPhotos:Ljava/util/Map;

.field final synthetic val$ops:Ljava/util/ArrayList;

.field final synthetic val$photosUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PicasaSyncHelper;Ljava/util/ArrayList;Lcom/google/android/picasasync/AlbumEntry;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Ljava/util/Map;Landroid/net/Uri;JJLjava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 486
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

    iput-object p2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$entries:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    iput-object p4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p5, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iput-object p6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$existingPhotos:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$photosUri:Landroid/net/Uri;

    iput-wide p8, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$albumId:J

    iput-wide p10, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$accountId:J

    iput-object p12, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$ops:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    invoke-direct {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    .line 488
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mDisplayIndex:I

    return-void
.end method


# virtual methods
.method public handleEntry(Landroid/content/ContentValues;)V
    .locals 13
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 492
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mKey:Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    const-string v7, "_id"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->updateId(J)Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-result-object v3

    .line 494
    .local v3, "key":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$entries:Ljava/util/ArrayList;

    invoke-static {v6, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    .line 495
    .local v2, "index":I
    if-ltz v2, :cond_6

    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$entries:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;

    move-object v4, v6

    .line 496
    .local v4, "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    :goto_0
    const-string v6, "date_updated"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 497
    .local v1, "dateEdited":Ljava/lang/Long;
    const-string v6, "screennail_url"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "screennailUrl":Ljava/lang/String;
    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->url:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 499
    iget-wide v6, v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v6, v7}, Lcom/google/android/picasasync/PrefetchHelper;->invalidatePhotoCache(J)V

    .line 501
    :cond_0
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    iget-wide v6, v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->dateEdited:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    iget v6, v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->displayIndex:I

    iget v7, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mDisplayIndex:I

    if-eq v6, v7, :cond_2

    .line 504
    :cond_1
    const-string v6, "display_index"

    iget v7, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mDisplayIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    const-string v6, "user_id"

    iget-object v7, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$album:Lcom/google/android/picasasync/AlbumEntry;

    iget-wide v7, v7, Lcom/google/android/picasasync/AlbumEntry;->userId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 506
    if-nez v4, :cond_7

    .line 507
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # getter for: Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$100()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 512
    :goto_1
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$context:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v6, v6, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v6, v6, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numUpdates:J

    .line 515
    :cond_2
    if-eqz v4, :cond_3

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->survived:Z

    .line 516
    :cond_3
    iget v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mDisplayIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->mDisplayIndex:I

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$existingPhotos:Ljava/util/Map;

    iget-wide v7, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 520
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$existingPhotos:Ljava/util/Map;

    iget-wide v7, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v1, :cond_4

    .line 521
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$photosUri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "server_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 524
    :cond_4
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$existingPhotos:Ljava/util/Map;

    iget-wide v7, v3, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :goto_2
    if-eqz v0, :cond_5

    .line 534
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$ops:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/android/picasasync/GooglePhotoUtils;->mapPicasaToPhotoValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_5
    return-void

    .line 495
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v1    # "dateEdited":Ljava/lang/Long;
    .end local v4    # "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    .end local v5    # "screennailUrl":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 509
    .restart local v1    # "dateEdited":Ljava/lang/Long;
    .restart local v4    # "metadata":Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;
    .restart local v5    # "screennailUrl":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    # getter for: Lcom/google/android/picasasync/PicasaSyncHelper;->PHOTO_TABLE_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-wide v11, v4, Lcom/google/android/picasasync/PicasaSyncHelper$EntryMetadata;->id:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, p1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 526
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_8
    iget-wide v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$albumId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    .line 529
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$photosUri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "account_id"

    iget-wide v8, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$accountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "album_id"

    iget-wide v8, p0, Lcom/google/android/picasasync/PicasaSyncHelper$2;->val$albumId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_2
.end method
