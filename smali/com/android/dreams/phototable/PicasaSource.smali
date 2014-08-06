.class public Lcom/android/dreams/phototable/PicasaSource;
.super Lcom/android/dreams/phototable/CursorPhotoSource;
.source "PicasaSource.java"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDisplayLongSide:I

.field private mFoundAlbumIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPosition:I

.field private final mMaxPostAblums:I

.field private final mMaxRecycleSize:I

.field private final mPostsAlbumName:Ljava/lang/String;

.field private final mRecycleBin:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnknownAlbumName:Ljava/lang/String;

.field private final mUploadsAlbumName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/dreams/phototable/CursorPhotoSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 82
    const-string v0, "PhotoTable.PicasaSource"

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mSourceName:Ljava/lang/String;

    .line 83
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mLastPosition:I

    .line 84
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mMaxPostAblums:I

    .line 85
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0029

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Posts"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mPostsAlbumName:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b002a

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Instant Uploads"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mUploadsAlbumName:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b002b

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Unknown"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mUnknownAlbumName:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mMaxRecycleSize:I

    .line 89
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    .line 93
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PicasaSource;->fillQueue()V

    .line 94
    invoke-direct {p0}, Lcom/android/dreams/phototable/PicasaSource;->getDisplayLongSide()I

    move-result v0

    iput v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mDisplayLongSide:I

    .line 95
    return-void
.end method

.method private getDisplayLongSide()I
    .locals 4

    .prologue
    .line 98
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 99
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoSource;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 101
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 102
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private getFoundAlbums()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mFoundAlbumIds:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PicasaSource;->findAlbums()Ljava/util/Collection;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/PicasaSource;->mFoundAlbumIds:Ljava/util/Set;

    return-object v0
.end method

.method private resolveAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 259
    const-string v8, "unknown"

    .line 260
    .local v8, "displayName":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "account"

    aput-object v1, v2, v0

    .line 261
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 266
    .local v9, "picasaUriBuilder":Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 268
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 269
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 270
    const-string v0, "account"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 271
    .local v6, "accountIndex":I
    if-ltz v6, :cond_0

    .line 272
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 274
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 278
    .end local v6    # "accountIndex":I
    :goto_0
    return-object v8

    .line 276
    :cond_1
    const-string v0, "PhotoTable.PicasaSource"

    const-string v1, "received a null cursor in resolveAccount()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resolveAlbumIds(Ljava/lang/String;)Ljava/util/Collection;
    .locals 14
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 282
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 283
    .local v6, "albumIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v0, "PhotoTable.PicasaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolving "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, "parts":[Ljava/lang/String;
    array-length v0, v9

    if-ge v0, v13, :cond_0

    .line 319
    :goto_0
    return-object v6

    .line 290
    :cond_0
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "album_type"

    aput-object v0, v2, v11

    const-string v0, "date_updated"

    aput-object v0, v2, v12

    const-string v0, "user_id"

    aput-object v0, v2, v13

    .line 292
    .local v2, "projection":[Ljava/lang/String;
    const-string v5, "date_updated DESC"

    .line 293
    .local v5, "order":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v9, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v9, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "albums"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v4, "image"

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 300
    .local v10, "picasaUriBuilder":Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 302
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 303
    const-string v0, "PhotoTable.PicasaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " resolved to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " albums"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 306
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 308
    .local v8, "idIndex":I
    if-gez v8, :cond_2

    .line 309
    const-string v0, "PhotoTable.PicasaSource"

    const-string v1, "can\'t find the ID column!"

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 311
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 317
    .end local v8    # "idIndex":I
    :cond_3
    const-string v0, "PhotoTable.PicasaSource"

    const-string v1, "received a null cursor in resolveAlbumIds()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public findAlbums()Ljava/util/Collection;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    const-string v2, "PhotoTable.PicasaSource"

    const-string v3, "finding albums"

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v12, "foundAlbums":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/dreams/phototable/PhotoSource$AlbumData;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v9, "accounts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "thumbnail_url"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "album_type"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "user_id"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "date_updated"

    aput-object v3, v4, v2

    .line 336
    .local v4, "projection":[Ljava/lang/String;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "albums"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "type"

    const-string v5, "image"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v17

    .line 341
    .local v17, "picasaUriBuilder":Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 343
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_11

    .line 344
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 346
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 347
    .local v14, "idIndex":I
    const-string v2, "thumbnail_url"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 348
    .local v18, "thumbIndex":I
    const-string v2, "title"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 349
    .local v20, "titleIndex":I
    const-string v2, "album_type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 350
    .local v22, "typeIndex":I
    const-string v2, "date_updated"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 351
    .local v25, "updatedIndex":I
    const-string v2, "user_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 353
    .local v27, "userIndex":I
    if-gez v14, :cond_1

    .line 354
    const-string v2, "PhotoTable.PicasaSource"

    const-string v3, "can\'t find the ID column!"

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 423
    .end local v14    # "idIndex":I
    .end local v18    # "thumbIndex":I
    .end local v20    # "titleIndex":I
    .end local v22    # "typeIndex":I
    .end local v25    # "updatedIndex":I
    .end local v27    # "userIndex":I
    :goto_0
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " items."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mFoundAlbumIds:Ljava/util/Set;

    .line 425
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    return-object v2

    .line 356
    .restart local v14    # "idIndex":I
    .restart local v18    # "thumbIndex":I
    .restart local v20    # "titleIndex":I
    .restart local v22    # "typeIndex":I
    .restart local v25    # "updatedIndex":I
    .restart local v27    # "userIndex":I
    :cond_1
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoTable.PicasaSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 358
    .local v13, "id":Ljava/lang/String;
    if-ltz v27, :cond_a

    move/from16 v0, v27

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 359
    .local v26, "user":Ljava/lang/String;
    :goto_2
    if-ltz v22, :cond_b

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 360
    .local v21, "type":Ljava/lang/String;
    :goto_3
    if-ltz v22, :cond_c

    const-string v2, "Buzz"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v15, 0x1

    .line 361
    .local v15, "isPosts":Z
    :goto_4
    if-ltz v22, :cond_d

    const-string v2, "InstantUpload"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "InstantUploadAuto"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_2
    const/16 v16, 0x1

    .line 364
    .local v16, "isUpload":Z
    :goto_5
    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 365
    .local v8, "account":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/dreams/phototable/PicasaSource;->resolveAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 367
    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_3
    if-eqz v15, :cond_4

    .line 371
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replacing "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Buzz"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoTable.PicasaSource:Buzz:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 375
    :cond_4
    if-eqz v16, :cond_5

    .line 376
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replacing "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "InstantUpload"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhotoTable.PicasaSource:InstantUpload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 380
    :cond_5
    const/16 v19, 0x0

    .line 381
    .local v19, "thumbnailUrl":Ljava/lang/String;
    const-wide/16 v23, 0x0

    .line 382
    .local v23, "updated":J
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 383
    .local v11, "data":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    if-nez v11, :cond_6

    .line 384
    new-instance v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local v11    # "data":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/dreams/phototable/PhotoSource$AlbumData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 385
    .restart local v11    # "data":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    iput-object v13, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    .line 386
    iput-object v8, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 388
    if-eqz v15, :cond_e

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mPostsAlbumName:Ljava/lang/String;

    iput-object v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    .line 398
    :goto_6
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " of type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " owned by "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_6
    if-ltz v25, :cond_7

    .line 404
    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 407
    :cond_7
    if-ltz v18, :cond_8

    .line 408
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 411
    :cond_8
    iget-wide v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    move-wide/from16 v0, v23

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    .line 413
    iget-object v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->thumbnailUrl:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-wide v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    cmp-long v2, v2, v23

    if-nez v2, :cond_1

    .line 414
    :cond_9
    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->thumbnailUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 358
    .end local v8    # "account":Ljava/lang/String;
    .end local v11    # "data":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    .end local v15    # "isPosts":Z
    .end local v16    # "isUpload":Z
    .end local v19    # "thumbnailUrl":Ljava/lang/String;
    .end local v21    # "type":Ljava/lang/String;
    .end local v23    # "updated":J
    .end local v26    # "user":Ljava/lang/String;
    :cond_a
    const-string v26, "-1"

    goto/16 :goto_2

    .line 359
    .restart local v26    # "user":Ljava/lang/String;
    :cond_b
    const-string v21, "none"

    goto/16 :goto_3

    .line 360
    .restart local v21    # "type":Ljava/lang/String;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 361
    .restart local v15    # "isPosts":Z
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 390
    .restart local v8    # "account":Ljava/lang/String;
    .restart local v11    # "data":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    .restart local v16    # "isUpload":Z
    .restart local v19    # "thumbnailUrl":Ljava/lang/String;
    .restart local v23    # "updated":J
    :cond_e
    if-eqz v16, :cond_f

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mUploadsAlbumName:Ljava/lang/String;

    iput-object v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    goto/16 :goto_6

    .line 392
    :cond_f
    if-ltz v20, :cond_10

    .line 393
    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    goto/16 :goto_6

    .line 395
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mUnknownAlbumName:Ljava/lang/String;

    iput-object v2, v11, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    goto/16 :goto_6

    .line 421
    .end local v8    # "account":Ljava/lang/String;
    .end local v11    # "data":Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    .end local v13    # "id":Ljava/lang/String;
    .end local v14    # "idIndex":I
    .end local v15    # "isPosts":Z
    .end local v16    # "isUpload":Z
    .end local v18    # "thumbIndex":I
    .end local v19    # "thumbnailUrl":Ljava/lang/String;
    .end local v20    # "titleIndex":I
    .end local v21    # "type":Ljava/lang/String;
    .end local v22    # "typeIndex":I
    .end local v23    # "updated":J
    .end local v25    # "updatedIndex":I
    .end local v26    # "user":Ljava/lang/String;
    .end local v27    # "userIndex":I
    :cond_11
    const-string v2, "PhotoTable.PicasaSource"

    const-string v3, "received a null cursor in findAlbums()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected findImages(I)Ljava/util/Collection;
    .locals 20
    .param p1, "howMany"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const-string v2, "PhotoTable.PicasaSource"

    const-string v3, "finding images"

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 168
    .local v13, "foundImages":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/dreams/phototable/PhotoSource$ImageData;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mMaxRecycleSize:I

    move/from16 v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 170
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "METERED: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    invoke-virtual {v13, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 173
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recycled "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " items."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    :goto_0
    return-object v13

    .line 178
    :cond_1
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "content_url"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "rotation"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "album_id"

    aput-object v3, v4, v2

    .line 179
    .local v4, "projection":[Ljava/lang/String;
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 180
    .local v9, "albumIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/dreams/phototable/PicasaSource;->getFoundAlbums()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 181
    .local v15, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PhotoSource;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    invoke-virtual {v2, v15}, Lcom/android/dreams/phototable/AlbumSettings;->isAlbumEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    const-string v2, ":"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 183
    .local v17, "parts":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    .line 184
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/dreams/phototable/PicasaSource;->resolveAlbumIds(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 186
    :cond_3
    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v15    # "id":Ljava/lang/String;
    .end local v17    # "parts":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/dreams/phototable/PicasaSource;->mMaxPostAblums:I

    if-le v2, v3, :cond_5

    .line 192
    invoke-static {v9}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 195
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v19, "selection":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 197
    .local v10, "albumIdx":I
    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 198
    .local v8, "albumId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mMaxPostAblums:I

    if-ge v10, v2, :cond_7

    .line 199
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 200
    const-string v2, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_6
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 205
    :cond_7
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "too many albums, dropping: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 210
    .end local v8    # "albumId":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection is ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "photos"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v18

    .line 220
    .local v18, "picasaUriBuilder":Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 222
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_f

    .line 223
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, p1

    if-le v2, v0, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mLastPosition:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_9

    .line 224
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/dreams/phototable/PicasaSource;->pickRandomStart(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mLastPosition:I

    .line 227
    :cond_9
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moving to position: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/dreams/phototable/PicasaSource;->mLastPosition:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mLastPosition:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 230
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 232
    .local v16, "idIndex":I
    if-gez v16, :cond_b

    .line 233
    const-string v2, "PhotoTable.PicasaSource"

    const-string v3, "can\'t find the ID column!"

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_a
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 254
    .end local v16    # "idIndex":I
    :goto_5
    const-string v2, "PhotoTable.PicasaSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " items."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    .restart local v16    # "idIndex":I
    :cond_b
    :goto_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 236
    if-ltz v16, :cond_c

    .line 237
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/dreams/phototable/PicasaSource;->unpackImageData(Landroid/database/Cursor;Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-result-object v12

    .line 238
    .local v12, "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    invoke-virtual {v13, v12}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 240
    .end local v12    # "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    :cond_c
    invoke-interface {v11}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mLastPosition:I

    goto :goto_6

    .line 242
    :cond_d
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 243
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mLastPosition:I

    .line 245
    :cond_e
    invoke-interface {v11}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 246
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/dreams/phototable/PicasaSource;->mLastPosition:I

    goto :goto_4

    .line 252
    .end local v16    # "idIndex":I
    :cond_f
    const-string v2, "PhotoTable.PicasaSource"

    const-string v3, "received a null cursor in findImages()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method protected findPosition(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V
    .locals 5
    .param p1, "data"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    const/4 v4, -0x1

    .line 122
    iget v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    if-ne v2, v4, :cond_3

    .line 123
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PicasaSource;->openCursor(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V

    .line 126
    :cond_0
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 127
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 128
    .local v1, "idIndex":I
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 129
    :cond_1
    :goto_0
    iget v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    if-ne v2, v4, :cond_2

    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    iput v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    goto :goto_0

    .line 135
    .end local v0    # "id":Ljava/lang/String;
    :cond_2
    iget v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    if-ne v2, v4, :cond_3

    .line 137
    const/4 v2, -0x2

    iput v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    .line 141
    .end local v1    # "idIndex":I
    :cond_3
    return-void
.end method

.method protected getStream(Lcom/android/dreams/phototable/PhotoSource$ImageData;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "data"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .param p2, "longSide"    # I

    .prologue
    .line 430
    const/4 v1, 0x0

    .line 432
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "photos"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 437
    .local v2, "photoUriBuilder":Landroid/net/Uri$Builder;
    iget-object v3, p0, Lcom/android/dreams/phototable/PicasaSource;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    if-nez v3, :cond_0

    mul-int/lit8 v3, p2, 0x2

    iget v4, p0, Lcom/android/dreams/phototable/PicasaSource;->mDisplayLongSide:I

    if-gt v3, v4, :cond_2

    .line 439
    :cond_0
    const-string v3, "type"

    const-string v4, "screennail"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 443
    :goto_0
    iget-object v3, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 444
    const-string v3, "content_url"

    iget-object v4, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 446
    :cond_1
    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 452
    .end local v2    # "photoUriBuilder":Landroid/net/Uri$Builder;
    :goto_1
    if-eqz v1, :cond_3

    .line 453
    iget-object v3, p0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 454
    const-string v3, "PhotoTable.PicasaSource"

    const-string v4, "RECYCLED"

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_2
    iget-object v3, p0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/dreams/phototable/PicasaSource;->mMaxRecycleSize:I

    if-le v3, v4, :cond_3

    .line 456
    iget-object v3, p0, Lcom/android/dreams/phototable/PicasaSource;->mRecycleBin:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto :goto_2

    .line 441
    .restart local v2    # "photoUriBuilder":Landroid/net/Uri$Builder;
    :cond_2
    :try_start_1
    const-string v3, "type"

    const-string v4, "full"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 447
    .end local v2    # "photoUriBuilder":Landroid/net/Uri$Builder;
    :catch_0
    move-exception v0

    .line 448
    .local v0, "fnf":Ljava/io/FileNotFoundException;
    const-string v3, "PhotoTable.PicasaSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v1, 0x0

    goto :goto_1

    .line 459
    .end local v0    # "fnf":Ljava/io/FileNotFoundException;
    :cond_3
    return-object v1
.end method

.method protected openCursor(Lcom/android/dreams/phototable/PhotoSource$ImageData;)V
    .locals 7
    .param p1, "data"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    const/4 v4, 0x0

    .line 107
    const-string v0, "PhotoTable.PicasaSource"

    const-string v1, "opening single album"

    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PicasaSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "content_url"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "rotation"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 110
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "photos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 116
    .local v6, "picasaUriBuilder":Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    .line 118
    return-void
.end method

.method protected unpackImageData(Landroid/database/Cursor;Lcom/android/dreams/phototable/PhotoSource$ImageData;)Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "data"    # Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .prologue
    .line 145
    if-nez p2, :cond_0

    .line 146
    new-instance p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    .end local p2    # "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    invoke-direct {p2, p0}, Lcom/android/dreams/phototable/PhotoSource$ImageData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 148
    .restart local p2    # "data":Lcom/android/dreams/phototable/PhotoSource$ImageData;
    :cond_0
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 149
    .local v1, "idIndex":I
    const-string v3, "content_url"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 150
    .local v2, "urlIndex":I
    const-string v3, "album_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, "bucketIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    .line 153
    if-ltz v0, :cond_1

    .line 154
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;->albumId:Ljava/lang/String;

    .line 156
    :cond_1
    if-ltz v2, :cond_2

    .line 157
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    .line 159
    :cond_2
    const/4 v3, -0x1

    iput v3, p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;->position:I

    .line 160
    const/4 v3, 0x0

    iput-object v3, p2, Lcom/android/dreams/phototable/PhotoSource$ImageData;->cursor:Landroid/database/Cursor;

    .line 161
    return-object p2
.end method
