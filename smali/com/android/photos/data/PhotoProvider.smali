.class public Lcom/android/photos/data/PhotoProvider;
.super Lcom/android/photos/data/SQLiteContentProvider;
.source "PhotoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/data/PhotoProvider$Metadata;,
        Lcom/android/photos/data/PhotoProvider$Albums;,
        Lcom/android/photos/data/PhotoProvider$Photos;,
        Lcom/android/photos/data/PhotoProvider$Accounts;,
        Lcom/android/photos/data/PhotoProvider$ChangeNotification;
    }
.end annotation


# static fields
.field protected static final BASE_COLUMNS_ID:[Ljava/lang/String;

.field static final BASE_CONTENT_URI:Landroid/net/Uri;

.field protected static final PROJECTION_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_MIME_TYPE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field protected static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field protected mNotifier:Lcom/android/photos/data/PhotoProvider$ChangeNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 53
    const-class v0, Lcom/android/photos/data/PhotoProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/PhotoProvider;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.gallery3d.photoprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/data/PhotoProvider;->BASE_CONTENT_URI:Landroid/net/Uri;

    .line 229
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "COUNT(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/photos/data/PhotoProvider;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 236
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "mime_type"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/photos/data/PhotoProvider;->PROJECTION_MIME_TYPE:[Ljava/lang/String;

    .line 240
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/photos/data/PhotoProvider;->BASE_COLUMNS_ID:[Ljava/lang/String;

    .line 245
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 257
    sget-object v0, Lcom/android/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gallery3d.photoprovider"

    const-string v2, "photos"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    sget-object v0, Lcom/android/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gallery3d.photoprovider"

    const-string v2, "photos/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    sget-object v0, Lcom/android/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gallery3d.photoprovider"

    const-string v2, "albums"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    sget-object v0, Lcom/android/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gallery3d.photoprovider"

    const-string v2, "albums/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    sget-object v0, Lcom/android/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gallery3d.photoprovider"

    const-string v2, "metadata"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    sget-object v0, Lcom/android/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gallery3d.photoprovider"

    const-string v2, "metadata/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    sget-object v0, Lcom/android/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gallery3d.photoprovider"

    const-string v2, "accounts"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    sget-object v0, Lcom/android/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.gallery3d.photoprovider"

    const-string v2, "accounts/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/photos/data/SQLiteContentProvider;-><init>()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/photos/data/PhotoProvider;->mNotifier:Lcom/android/photos/data/PhotoProvider$ChangeNotification;

    return-void
.end method

.method protected static addIdToSelection(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "match"    # I
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 352
    packed-switch p0, :pswitch_data_0

    .line 361
    .end local p1    # "selection":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-object p1

    .line 356
    .restart local p1    # "selection":Ljava/lang/String;
    :pswitch_1
    const-string v0, "_id = ?"

    .line 361
    .local v0, "where":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static addIdToSelectionArgs(ILandroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "match"    # I
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 366
    packed-switch p0, :pswitch_data_0

    .line 377
    .end local p2    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-object p2

    .line 370
    .restart local p2    # "selectionArgs":[Ljava/lang/String;
    :pswitch_1
    new-array v0, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v2

    .line 377
    .local v0, "whereArgs":[Ljava/lang/String;
    invoke-static {p2, v0}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static albumSelectionFromAccounts(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 474
    const-string v0, "account_id"

    const-string v1, "accounts"

    invoke-static {v0, v1, p0}, Lcom/android/photos/data/PhotoProvider;->nestWhere(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getTableFromMatch(ILandroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "match"    # I
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 392
    packed-switch p0, :pswitch_data_0

    .line 410
    invoke-static {p1}, Lcom/android/photos/data/PhotoProvider;->unknownUri(Landroid/net/Uri;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 395
    :pswitch_0
    const-string v0, "photos"

    .line 412
    .local v0, "table":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 399
    .end local v0    # "table":Ljava/lang/String;
    :pswitch_1
    const-string v0, "albums"

    .line 400
    .restart local v0    # "table":Ljava/lang/String;
    goto :goto_0

    .line 403
    .end local v0    # "table":Ljava/lang/String;
    :pswitch_2
    const-string v0, "metadata"

    .line 404
    .restart local v0    # "table":Ljava/lang/String;
    goto :goto_0

    .line 407
    .end local v0    # "table":Ljava/lang/String;
    :pswitch_3
    const-string v0, "accounts"

    .line 408
    .restart local v0    # "table":Ljava/lang/String;
    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private matchUri(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 435
    sget-object v1, Lcom/android/photos/data/PhotoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 436
    .local v0, "match":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 437
    invoke-static {p1}, Lcom/android/photos/data/PhotoProvider;->unknownUri(Landroid/net/Uri;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 439
    :cond_0
    return v0
.end method

.method protected static metadataSelectionFromPhotos(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 462
    const-string v0, "photo_id"

    const-string v1, "photos"

    invoke-static {v0, v1, p0}, Lcom/android/photos/data/PhotoProvider;->nestWhere(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private modifyMetadata(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 422
    const-string v5, "value"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 423
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "photo_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v5, "key"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 426
    .local v3, "selectionArgs":[Ljava/lang/String;
    const-string v4, "metadata"

    const-string v5, "photo_id = ? AND key = ?"

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 431
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    .local v0, "rowCount":I
    :goto_0
    return v0

    .line 428
    .end local v0    # "rowCount":I
    :cond_0
    const-string v5, "metadata"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 429
    .local v1, "rowId":J
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    .restart local v0    # "rowCount":I
    :goto_1
    goto :goto_0

    .end local v0    # "rowCount":I
    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method protected static nestWhere(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "matchColumn"    # Ljava/lang/String;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nestedWhere"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 456
    const/4 v0, 0x0

    sget-object v2, Lcom/android/photos/data/PhotoProvider;->BASE_COLUMNS_ID:[Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 458
    .local v8, "query":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static photoSelectionFromAccounts(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v0, "account_id"

    const-string v1, "accounts"

    invoke-static {v0, v1, p0}, Lcom/android/photos/data/PhotoProvider;->nestWhere(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static photoSelectionFromAlbums(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;

    .prologue
    .line 466
    const-string v0, "album_id"

    const-string v1, "albums"

    invoke-static {v0, v1, p0}, Lcom/android/photos/data/PhotoProvider;->nestWhere(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static replaceCount([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 530
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "_count"

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    sget-object p0, Lcom/android/photos/data/PhotoProvider;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 534
    .end local p0    # "projection":[Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method protected static unknownUri(Landroid/net/Uri;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Uri format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static validateMatchTable(I)V
    .locals 2
    .param p0, "match"    # I

    .prologue
    .line 507
    packed-switch p0, :pswitch_data_0

    .line 514
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operation not allowed on an existing row."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :pswitch_1
    return-void

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "match"    # I
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 478
    packed-switch p2, :pswitch_data_0

    .line 497
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/photos/data/PhotoProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 498
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2, p1}, Lcom/android/photos/data/PhotoProvider;->getTableFromMatch(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "table":Ljava/lang/String;
    invoke-virtual {v0, v2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 500
    .local v1, "deleted":I
    if-lez v1, :cond_0

    .line 501
    invoke-virtual {p0, p1}, Lcom/android/photos/data/PhotoProvider;->postNotifyUri(Landroid/net/Uri;)V

    .line 503
    :cond_0
    return v1

    .line 481
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "deleted":I
    .end local v2    # "table":Ljava/lang/String;
    :pswitch_1
    sget-object v3, Lcom/android/photos/data/PhotoProvider$Metadata;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    invoke-static {p3}, Lcom/android/photos/data/PhotoProvider;->metadataSelectionFromPhotos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5, p4}, Lcom/android/photos/data/PhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :pswitch_2
    sget-object v3, Lcom/android/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Lcom/android/photos/data/PhotoProvider;->photoSelectionFromAlbums(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v5, v4, p4}, Lcom/android/photos/data/PhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :pswitch_3
    sget-object v3, Lcom/android/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Lcom/android/photos/data/PhotoProvider;->photoSelectionFromAccounts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v5, v4, p4}, Lcom/android/photos/data/PhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    .line 493
    sget-object v3, Lcom/android/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    invoke-static {p3}, Lcom/android/photos/data/PhotoProvider;->albumSelectionFromAccounts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5, p4}, Lcom/android/photos/data/PhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "callerIsSyncAdapter"    # Z

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/photos/data/PhotoProvider;->matchUri(Landroid/net/Uri;)I

    move-result v0

    .line 275
    .local v0, "match":I
    invoke-static {v0, p2}, Lcom/android/photos/data/PhotoProvider;->addIdToSelection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 276
    invoke-static {v0, p1, p3}, Lcom/android/photos/data/PhotoProvider;->addIdToSelectionArgs(ILandroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 277
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/photos/data/PhotoProvider;->deleteCascade(Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    new-instance v0, Lcom/android/photos/data/PhotoDatabase;

    const-string v1, "photo.db"

    invoke-direct {v0, p1, v1}, Lcom/android/photos/data/PhotoDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 282
    sget-object v2, Lcom/android/photos/data/PhotoProvider;->PROJECTION_MIME_TYPE:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/photos/data/PhotoProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 283
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 284
    .local v7, "mimeType":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 287
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 288
    return-object v7
.end method

.method public insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "callerIsSyncAdapter"    # Z

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/photos/data/PhotoProvider;->matchUri(Landroid/net/Uri;)I

    move-result v4

    .line 294
    .local v4, "match":I
    invoke-static {v4}, Lcom/android/photos/data/PhotoProvider;->validateMatchTable(I)V

    .line 295
    invoke-static {v4, p1}, Lcom/android/photos/data/PhotoProvider;->getTableFromMatch(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "table":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/photos/data/PhotoProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 297
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 298
    .local v3, "insertedUri":Landroid/net/Uri;
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 299
    .local v1, "id":J
    const-wide/16 v6, -0x1

    cmp-long v6, v1, v6

    if-eqz v6, :cond_0

    .line 301
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 302
    invoke-virtual {p0, v3}, Lcom/android/photos/data/PhotoProvider;->postNotifyUri(Landroid/net/Uri;)V

    .line 304
    :cond_0
    return-object v3
.end method

.method protected notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "syncToNetwork"    # Z

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/photos/data/PhotoProvider;->mNotifier:Lcom/android/photos/data/PhotoProvider$ChangeNotification;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/photos/data/PhotoProvider;->mNotifier:Lcom/android/photos/data/PhotoProvider$ChangeNotification;

    invoke-interface {v0, p2, p3}, Lcom/android/photos/data/PhotoProvider$ChangeNotification;->notifyChange(Landroid/net/Uri;Z)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/photos/data/SQLiteContentProvider;->notifyChange(Landroid/content/ContentResolver;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/photos/data/PhotoProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 316
    invoke-static {p2}, Lcom/android/photos/data/PhotoProvider;->replaceCount([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 317
    invoke-direct {p0, p1}, Lcom/android/photos/data/PhotoProvider;->matchUri(Landroid/net/Uri;)I

    move-result v8

    .line 318
    .local v8, "match":I
    invoke-static {v8, p3}, Lcom/android/photos/data/PhotoProvider;->addIdToSelection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 319
    invoke-static {v8, p1, p4}, Lcom/android/photos/data/PhotoProvider;->addIdToSelectionArgs(ILandroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 320
    invoke-static {v8, p1}, Lcom/android/photos/data/PhotoProvider;->getTableFromMatch(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .local v1, "table":Ljava/lang/String;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 321
    invoke-virtual/range {v0 .. v6}, Lcom/android/photos/data/PhotoProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 322
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/photos/data/PhotoProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v7, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 325
    :cond_0
    return-object v7
.end method

.method protected query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/photos/data/PhotoProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 521
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_CANCELLATION_SIGNAL:Z

    if-eqz v1, :cond_0

    .line 522
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 525
    :goto_0
    return-object v1

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method public updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/photos/data/PhotoProvider;->matchUri(Landroid/net/Uri;)I

    move-result v1

    .line 332
    .local v1, "match":I
    const/4 v2, 0x0

    .line 333
    .local v2, "rowsUpdated":I
    invoke-virtual {p0}, Lcom/android/photos/data/PhotoProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 334
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    .line 335
    invoke-direct {p0, v0, p2}, Lcom/android/photos/data/PhotoProvider;->modifyMetadata(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v2

    .line 342
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/photos/data/PhotoProvider;->postNotifyUri(Landroid/net/Uri;)V

    .line 343
    return v2

    .line 337
    :cond_0
    invoke-static {v1, p3}, Lcom/android/photos/data/PhotoProvider;->addIdToSelection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 338
    invoke-static {v1, p1, p4}, Lcom/android/photos/data/PhotoProvider;->addIdToSelectionArgs(ILandroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 339
    invoke-static {v1, p1}, Lcom/android/photos/data/PhotoProvider;->getTableFromMatch(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "table":Ljava/lang/String;
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
