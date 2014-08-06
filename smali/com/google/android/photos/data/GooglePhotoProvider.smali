.class public Lcom/google/android/photos/data/GooglePhotoProvider;
.super Lcom/android/photos/data/PhotoProvider;
.source "GooglePhotoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/photos/data/GooglePhotoProvider$2;,
        Lcom/google/android/photos/data/GooglePhotoProvider$GooglePhotos;,
        Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAlbums;,
        Lcom/google/android/photos/data/GooglePhotoProvider$GoogleAccounts;
    }
.end annotation


# static fields
.field private static final PROJECTION_ALBUM_PREVIEW:[Ljava/lang/String;

.field private static final PROJECTION_ORIGINAL_URL:[Ljava/lang/String;

.field private static final PROJECTION_PREVIEW_URL:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsTesting:Z

.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    const-class v0, Lcom/google/android/photos/data/GooglePhotoProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/photos/data/GooglePhotoProvider;->TAG:Ljava/lang/String;

    .line 90
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "preview_url"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/photos/data/GooglePhotoProvider;->PROJECTION_ALBUM_PREVIEW:[Ljava/lang/String;

    .line 93
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "original_url"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/photos/data/GooglePhotoProvider;->PROJECTION_ORIGINAL_URL:[Ljava/lang/String;

    .line 97
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "preview_url"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/photos/data/GooglePhotoProvider;->PROJECTION_PREVIEW_URL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/photos/data/PhotoProvider;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/photos/data/GooglePhotoProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static addNotDeletedClauseToWhere(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "match"    # I
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "callerIsSyncAdapter"    # Z

    .prologue
    .line 272
    if-nez p2, :cond_0

    .line 273
    packed-switch p0, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    return-object p1

    .line 278
    :pswitch_0
    const-string v0, "is_deleted = 0"

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private deleteCached(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "baseUri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/android/photos/data/GooglePhotoProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 316
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoProvider;->BASE_COLUMNS_ID:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 319
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/photos/data/MediaCache;->getInstance()Lcom/android/photos/data/MediaCache;

    move-result-object v11

    .line 320
    .local v11, "mediaCache":Lcom/android/photos/data/MediaCache;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 322
    .local v9, "id":J
    invoke-static {p2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 323
    .local v12, "uri":Landroid/net/Uri;
    invoke-virtual {v11, v12}, Lcom/android/photos/data/MediaCache;->invalidate(Landroid/net/Uri;)V

    goto :goto_0

    .line 325
    .end local v9    # "id":J
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 326
    return-void
.end method

.method private deleteCachedAlbumCovers(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 311
    const-string v0, "albums"

    sget-object v1, Lcom/android/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/photos/data/GooglePhotoProvider;->deleteCached(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method private deleteCachedPhotos(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 301
    const-string v0, "photos"

    sget-object v1, Lcom/android/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/photos/data/GooglePhotoProvider;->deleteCached(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private getAlbumCoverUrl(J)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 356
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 359
    .local v4, "whereArgs":[Ljava/lang/String;
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoProvider;->PROJECTION_ALBUM_PREVIEW:[Ljava/lang/String;

    .line 360
    .local v2, "projection":[Ljava/lang/String;
    const-string v1, "albums"

    const-string v3, "_id = ?"

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/photos/data/GooglePhotoProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 361
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 362
    .local v8, "uri":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 365
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 366
    return-object v8
.end method

.method private getDownloadUrl(JLcom/android/photos/data/MediaRetriever$MediaSize;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # J
    .param p3, "size"    # Lcom/android/photos/data/MediaRetriever$MediaSize;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 329
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 332
    .local v4, "whereArgs":[Ljava/lang/String;
    sget-object v0, Lcom/android/photos/data/MediaRetriever$MediaSize;->Original:Lcom/android/photos/data/MediaRetriever$MediaSize;

    if-ne p3, v0, :cond_1

    sget-object v2, Lcom/google/android/photos/data/GooglePhotoProvider;->PROJECTION_ORIGINAL_URL:[Ljava/lang/String;

    .line 334
    .local v2, "projection":[Ljava/lang/String;
    :goto_0
    const-string v1, "photos"

    const-string v3, "_id = ?"

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/photos/data/GooglePhotoProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 335
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 336
    .local v9, "uri":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 338
    sget-object v0, Lcom/google/android/photos/data/GooglePhotoProvider$2;->$SwitchMap$com$android$photos$data$MediaRetriever$MediaSize:[I

    invoke-virtual {p3}, Lcom/android/photos/data/MediaRetriever$MediaSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 351
    :cond_0
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 352
    return-object v9

    .line 332
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "uri":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoProvider;->PROJECTION_PREVIEW_URL:[Ljava/lang/String;

    goto :goto_0

    .line 341
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "uri":Ljava/lang/String;
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/photos/data/GooglePhotoProvider;->mIsTesting:Z

    if-nez v0, :cond_0

    .line 342
    invoke-static {p3}, Lcom/android/photos/data/MediaCacheUtils;->getTargetSize(Lcom/android/photos/data/MediaRetriever$MediaSize;)I

    move-result v8

    .line 343
    .local v8, "targetSize":I
    invoke-static {v9, v8, v10}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v9

    .line 344
    goto :goto_1

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static makeSyncAdapterUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sync_adapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static toMediaSize(Landroid/net/Uri;)Lcom/android/photos/data/MediaRetriever$MediaSize;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 287
    const-string v1, "media_size"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 288
    .local v0, "sizes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 289
    :cond_0
    sget-object v1, Lcom/android/photos/data/MediaRetriever$MediaSize;->Original:Lcom/android/photos/data/MediaRetriever$MediaSize;

    .line 291
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/photos/data/MediaRetriever$MediaSize;->valueOf(Ljava/lang/String;)Lcom/android/photos/data/MediaRetriever$MediaSize;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;Z)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "match"    # I
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    .line 371
    packed-switch p2, :pswitch_data_0

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :pswitch_0
    sget-object v1, Lcom/android/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {p3}, Lcom/google/android/photos/data/GooglePhotoProvider;->photoSelectionFromAccounts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/photos/data/GooglePhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;Z)I

    .line 376
    sget-object v1, Lcom/android/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    invoke-static {p3}, Lcom/google/android/photos/data/GooglePhotoProvider;->albumSelectionFromAccounts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/photos/data/GooglePhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;Z)I

    .line 402
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/photos/data/GooglePhotoProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 403
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2, p1}, Lcom/google/android/photos/data/GooglePhotoProvider;->getTableFromMatch(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 405
    .local v9, "table":Ljava/lang/String;
    if-eqz p5, :cond_2

    .line 406
    invoke-virtual {v7, v9, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 412
    .local v8, "deleted":I
    :goto_1
    if-lez v8, :cond_1

    .line 413
    invoke-virtual {p0, p1}, Lcom/google/android/photos/data/GooglePhotoProvider;->postNotifyUri(Landroid/net/Uri;)V

    .line 415
    :cond_1
    return v8

    .line 381
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "deleted":I
    .end local v9    # "table":Ljava/lang/String;
    :pswitch_1
    if-nez p5, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot delete metadata. Use update."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :pswitch_2
    invoke-direct {p0, p3, p4}, Lcom/google/android/photos/data/GooglePhotoProvider;->deleteCachedPhotos(Ljava/lang/String;[Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/android/photos/data/PhotoProvider$Metadata;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x5

    invoke-static {p3}, Lcom/google/android/photos/data/GooglePhotoProvider;->metadataSelectionFromPhotos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p4}, Lcom/google/android/photos/data/GooglePhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :pswitch_3
    invoke-direct {p0, p3, p4}, Lcom/google/android/photos/data/GooglePhotoProvider;->deleteCachedAlbumCovers(Ljava/lang/String;[Ljava/lang/String;)V

    .line 396
    sget-object v1, Lcom/android/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {p3}, Lcom/google/android/photos/data/GooglePhotoProvider;->photoSelectionFromAlbums(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/photos/data/GooglePhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;Z)I

    goto :goto_0

    .line 408
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "table":Ljava/lang/String;
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 409
    .local v6, "contentValues":Landroid/content/ContentValues;
    const-string v0, "is_deleted"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 410
    invoke-virtual {v7, v9, v6, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .restart local v8    # "deleted":I
    goto :goto_1

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "callerIsSyncAdapter"    # Z

    .prologue
    .line 123
    sget-object v0, Lcom/google/android/photos/data/GooglePhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 124
    .local v2, "match":I
    invoke-static {v2, p2}, Lcom/google/android/photos/data/GooglePhotoProvider;->addIdToSelection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "where":Ljava/lang/String;
    invoke-static {v2, v3, p4}, Lcom/google/android/photos/data/GooglePhotoProvider;->addNotDeletedClauseToWhere(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-static {v2, p1, p3}, Lcom/google/android/photos/data/GooglePhotoProvider;->addIdToSelectionArgs(ILandroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "whereArgs":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move v5, p4

    .line 127
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/photos/data/GooglePhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/photos/data/GooglePhotoDatabase;

    const-string v1, "photo.db"

    invoke-direct {v0, p1, v1}, Lcom/google/android/photos/data/GooglePhotoDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "callerIsSyncAdapter"    # Z

    .prologue
    const/4 v2, 0x1

    .line 132
    if-nez p3, :cond_1

    .line 133
    sget-object v1, Lcom/google/android/photos/data/GooglePhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 134
    .local v0, "match":I
    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 135
    :cond_0
    const-string v1, "is_dirty"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 140
    .end local v0    # "match":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/photos/data/PhotoProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 137
    .restart local v0    # "match":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only sync adapter can insert into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isCallerSyncAdapter(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 250
    const-string v0, "sync_adapter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreate()Z
    .locals 8

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/photos/data/PhotoProvider;->onCreate()Z

    move-result v7

    .line 104
    .local v7, "created":Z
    invoke-virtual {p0}, Lcom/google/android/photos/data/GooglePhotoProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/photos/data/MediaCache;->initialize(Landroid/content/Context;)V

    .line 105
    invoke-static {}, Lcom/android/photos/data/MediaCache;->getInstance()Lcom/android/photos/data/MediaCache;

    move-result-object v0

    const-string v1, "content"

    const-string v2, "com.google.android.gallery3d.photoprovider"

    new-instance v3, Lcom/google/android/photos/data/GooglePhotoRetriever;

    invoke-virtual {p0}, Lcom/google/android/photos/data/GooglePhotoProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/photos/data/GooglePhotoRetriever;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/photos/data/MediaCache;->addRetriever(Ljava/lang/String;Ljava/lang/String;Lcom/android/photos/data/MediaRetriever;)V

    .line 107
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/photos/data/GooglePhotoProvider;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 110
    return v7
.end method

.method protected onEndTransaction(Z)Ljava/util/Set;
    .locals 2
    .param p1, "callerIsSyncAdapter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    invoke-super {p0, p1}, Lcom/android/photos/data/PhotoProvider;->onEndTransaction(Z)Ljava/util/Set;

    move-result-object v0

    .line 421
    .local v0, "changed":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/google/android/photos/data/GooglePhotoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/photos/canvas/CanvasProvider;->notifyChange(Landroid/content/Context;Ljava/util/Set;)V

    .line 422
    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v8, "r"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 207
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Can\'t write to a cached image"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 209
    :cond_0
    sget-object v8, Lcom/google/android/photos/data/GooglePhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 210
    .local v4, "match":I
    const/4 v0, 0x0

    .line 211
    .local v0, "downloadUrl":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v4, v8, :cond_2

    .line 212
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 213
    .local v2, "id":J
    invoke-static {p1}, Lcom/google/android/photos/data/GooglePhotoProvider;->toMediaSize(Landroid/net/Uri;)Lcom/android/photos/data/MediaRetriever$MediaSize;

    move-result-object v6

    .line 214
    .local v6, "size":Lcom/android/photos/data/MediaRetriever$MediaSize;
    invoke-direct {p0, v2, v3, v6}, Lcom/google/android/photos/data/GooglePhotoProvider;->getDownloadUrl(JLcom/android/photos/data/MediaRetriever$MediaSize;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .end local v2    # "id":J
    .end local v6    # "size":Lcom/android/photos/data/MediaRetriever$MediaSize;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 221
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot open file for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 215
    :cond_2
    const/4 v8, 0x4

    if-ne v4, v8, :cond_1

    .line 216
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 217
    .restart local v2    # "id":J
    invoke-direct {p0, v2, v3}, Lcom/google/android/photos/data/GooglePhotoProvider;->getAlbumCoverUrl(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    .end local v2    # "id":J
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 225
    .local v5, "pipe":[Landroid/os/ParcelFileDescriptor;
    move-object v7, v0

    .line 226
    .local v7, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/photos/data/GooglePhotoProvider;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/google/android/photos/data/GooglePhotoProvider$1;

    invoke-direct {v9, p0, v7, v5}, Lcom/google/android/photos/data/GooglePhotoProvider$1;-><init>(Lcom/google/android/photos/data/GooglePhotoProvider;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 242
    const/4 v8, 0x0

    aget-object v8, v5, v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 243
    .end local v5    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not download image "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 196
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 197
    .local v1, "match":I
    invoke-virtual {p0, p1}, Lcom/google/android/photos/data/GooglePhotoProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v0

    .line 198
    .local v0, "callerIsSyncAdapter":Z
    invoke-static {v1, p3, v0}, Lcom/google/android/photos/data/GooglePhotoProvider;->addNotDeletedClauseToWhere(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 199
    invoke-super/range {p0 .. p6}, Lcom/android/photos/data/PhotoProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method protected syncToNetwork(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/google/android/photos/data/GooglePhotoProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    .line 146
    sget-object v2, Lcom/google/android/photos/data/GooglePhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 147
    .local v8, "match":I
    if-nez p5, :cond_0

    .line 148
    packed-switch v8, :pswitch_data_0

    .line 166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only sync adapter can update "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :pswitch_0
    const-string v2, "is_dirty"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 169
    :cond_0
    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v8, v0, v1}, Lcom/google/android/photos/data/GooglePhotoProvider;->addNotDeletedClauseToWhere(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 170
    invoke-super/range {p0 .. p5}, Lcom/android/photos/data/PhotoProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v11

    .line 172
    .local v11, "updates":I
    move-object/from16 v0, p3

    invoke-static {v8, v0}, Lcom/google/android/photos/data/GooglePhotoProvider;->addIdToSelection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, "where":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v8, p1, v0}, Lcom/google/android/photos/data/GooglePhotoProvider;->addIdToSelectionArgs(ILandroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 174
    .local v13, "whereArgs":[Ljava/lang/String;
    packed-switch v8, :pswitch_data_1

    .line 190
    :cond_1
    :goto_1
    return v11

    .line 158
    .end local v11    # "updates":I
    .end local v12    # "where":Ljava/lang/String;
    .end local v13    # "whereArgs":[Ljava/lang/String;
    :pswitch_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v4, "photoUpdate":Landroid/content/ContentValues;
    const-string v2, "is_dirty"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 160
    const-string v2, "photo_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 161
    .local v9, "photoId":J
    sget-object v2, Lcom/android/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/photos/data/GooglePhotoProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    goto :goto_0

    .line 177
    .end local v4    # "photoUpdate":Landroid/content/ContentValues;
    .end local v9    # "photoId":J
    .restart local v11    # "updates":I
    .restart local v12    # "where":Ljava/lang/String;
    .restart local v13    # "whereArgs":[Ljava/lang/String;
    :pswitch_2
    const-string v2, "preview_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-direct {p0, v12, v13}, Lcom/google/android/photos/data/GooglePhotoProvider;->deleteCachedAlbumCovers(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :pswitch_3
    const-string v2, "local_path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "original_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "preview_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    :cond_2
    invoke-direct {p0, v12, v13}, Lcom/google/android/photos/data/GooglePhotoProvider;->deleteCachedPhotos(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 174
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
