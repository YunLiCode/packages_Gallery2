.class public Lcom/google/android/picasasync/PicasaContentProvider0;
.super Landroid/content/ContentProvider;
.source "PicasaContentProvider0.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;
    }
.end annotation


# static fields
.field private static final ALBUM_TABLE_NAME:Ljava/lang/String;

.field private static final ALBUM_TYPE_WHERE:Ljava/lang/String;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static PROJECTION_CONTENT_URL:[Ljava/lang/String;

.field private static PROJECTION_SCREENNAIL_URL:[Ljava/lang/String;

.field private static PROJECTION_THUMBNAIL_URL:[Ljava/lang/String;

.field private static final SETTING_DEFAULTS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTING_DEPRECATED:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPLOAD_RECORD_TABLE:Ljava/lang/String;

.field private static final UPLOAD_TASK_TABLE:Ljava/lang/String;

.field private static final USER_TABLE_NAME:Ljava/lang/String;


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

.field private mPicasaStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    sget-object v0, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->USER_TABLE_NAME:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->ALBUM_TABLE_NAME:Ljava/lang/String;

    .line 165
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in (SELECT album_id FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->PHOTO_TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->ALBUM_TYPE_WHERE:Ljava/lang/String;

    .line 220
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    .line 221
    sget-object v0, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->UPLOAD_RECORD_TABLE:Ljava/lang/String;

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEFAULTS:Ljava/util/HashMap;

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEPRECATED:Ljava/util/HashMap;

    .line 373
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_on_wifi_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_picasa_on_wifi_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "video_upload_wifi_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_on_roaming"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEFAULTS:Ljava/util/HashMap;

    const-string v1, "sync_on_battery"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "sync_photo_on_mobile"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "auto_upload_enabled"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "auto_upload_account_name"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEPRECATED:Ljava/util/HashMap;

    const-string v1, "auto_upload_account_type"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->PROJECTION_THUMBNAIL_URL:[Ljava/lang/String;

    .line 598
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "content_url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->PROJECTION_CONTENT_URL:[Ljava/lang/String;

    .line 599
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "screennail_url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->PROJECTION_SCREENNAIL_URL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 228
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mPicasaStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

    .line 434
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->ALBUM_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private cancelImmediateSync(Landroid/net/Uri;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 708
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 709
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 710
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid URI: expect /sync_request/<task_ID>"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 713
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 714
    .local v1, "taskId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/picasasync/ImmediateSync;->cancelTask(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private cancelSingleUpload(Landroid/net/Uri;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    .line 734
    sget-object v3, Lcom/google/android/picasasync/PicasaContentProvider0;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    sget-object v5, Lcom/android/gallery3d/common/Entry;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v3, p1, v5}, Lcom/google/android/picasasync/PicasaContentProvider0;->querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 735
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 739
    :goto_0
    return v3

    .line 737
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 738
    .local v1, "id":J
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/android/picasasync/UploadsManager;->cancelTask(J)V

    move v3, v4

    .line 739
    goto :goto_0
.end method

.method private cancelUploads(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 718
    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    sget-object v3, Lcom/android/gallery3d/common/Entry;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/picasasync/PicasaContentProvider0;->queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 721
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 722
    .local v7, "count":I
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 724
    .local v9, "id":J
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/google/android/picasasync/UploadsManager;->cancelTask(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    add-int/lit8 v7, v7, 0x1

    .line 726
    goto :goto_0

    .line 729
    .end local v9    # "id":J
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getItemIdFromUri(Landroid/net/Uri;)J
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 590
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 593
    :goto_0
    return-wide v1

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "PicasaContentProvider0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get id from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private static getLastSegmentAsLong(Landroid/net/Uri;J)J
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "defaultValue"    # J

    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 744
    .local v2, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 745
    const-string v3, "PicasaContentProvider0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 748
    .restart local p1    # "defaultValue":J
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 750
    .local v1, "last":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "PicasaContentProvider0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pasre fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private insertSyncRequest(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 656
    const-string v1, "task"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "task":Ljava/lang/String;
    const-string v1, "manual_metadata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/picasasync/PicasaSyncManager;->requestMetadataSync(Z)V

    .line 669
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p1

    .line 660
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v1, "metadata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/picasasync/PicasaSyncManager;->requestMetadataSync(Z)V

    goto :goto_0

    .line 662
    :cond_2
    const-string v1, "new_photo_upload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 663
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    goto :goto_0

    .line 664
    :cond_3
    const-string v1, "immediate_albums"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 665
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider0;->requestImmediateSyncOnAlbumList(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 666
    :cond_4
    const-string v1, "immediate_photos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider0;->requestImmediateSyncOnPhotos(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method private lookupAlbumCoverUrl(J)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 602
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 603
    .local v8, "context":Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 604
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider0;->PROJECTION_THUMBNAIL_URL:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 609
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    :cond_0
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v5

    .line 610
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 612
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private lookupContentUrl(JLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 618
    if-nez p3, :cond_0

    const-string p3, "full"

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 621
    .local v8, "context":Landroid/content/Context;
    const-string v1, "full"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider0;->PROJECTION_CONTENT_URL:[Ljava/lang/String;

    .line 624
    .local v2, "projection":[Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 625
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 629
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 632
    :cond_1
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v5

    .line 621
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    sget-object v2, Lcom/google/android/picasasync/PicasaContentProvider0;->PROJECTION_SCREENNAIL_URL:[Ljava/lang/String;

    goto :goto_0

    .line 630
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 632
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private queryAlbums(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 419
    if-nez p3, :cond_0

    .line 420
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 421
    .local v9, "type":Ljava/lang/String;
    const-string v0, "image"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    sget-object p3, Lcom/google/android/picasasync/PicasaContentProvider0;->ALBUM_TYPE_WHERE:Ljava/lang/String;

    .line 423
    new-array p4, v2, [Ljava/lang/String;

    .end local p4    # "selectionArgs":[Ljava/lang/String;
    const-string v0, "image/%"

    aput-object v0, p4, v1

    .line 429
    .end local v9    # "type":Ljava/lang/String;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 430
    .local v8, "limit":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->ALBUM_TABLE_NAME:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 424
    .end local v8    # "limit":Ljava/lang/String;
    .restart local v9    # "type":Ljava/lang/String;
    :cond_1
    const-string v0, "video"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    sget-object p3, Lcom/google/android/picasasync/PicasaContentProvider0;->ALBUM_TYPE_WHERE:Ljava/lang/String;

    .line 426
    new-array p4, v2, [Ljava/lang/String;

    .end local p4    # "selectionArgs":[Ljava/lang/String;
    const-string v0, "video/%"

    aput-object v0, p4, v1

    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    goto :goto_0
.end method

.method private queryImmediateSyncResult(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    .line 354
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 355
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 356
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid URI: expect /sync_request/<task_ID>"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 360
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    .local v3, "taskId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/picasasync/ImmediateSync;->getResult(Ljava/lang/String;)I

    move-result v2

    .line 364
    .local v2, "result":I
    new-instance v0, Lcom/google/android/picasastore/PicasaMatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "immediate_sync_result"

    aput-object v6, v4, v5

    invoke-direct {v0, v4}, Lcom/google/android/picasastore/PicasaMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 366
    .local v0, "cursor":Lcom/google/android/picasastore/PicasaMatrixCursor;
    invoke-virtual {v0}, Lcom/google/android/picasastore/PicasaMatrixCursor;->newRow()Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/picasastore/PicasaMatrixCursor$RowBuilder;

    .line 367
    return-object v0
.end method

.method private queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 347
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider0;->queryUsers(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    .line 317
    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider0;->queryAlbums(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 320
    :pswitch_3
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider0;->queryPostPhotos(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 322
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider0;->queryPostAlbum(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 324
    :pswitch_5
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider0;->queryPhotos(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 327
    :pswitch_6
    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/picasasync/PicasaContentProvider0;->queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 330
    :pswitch_7
    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->UPLOAD_RECORD_TABLE:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/picasasync/PicasaContentProvider0;->queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 333
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider0;->querySingleUser(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 335
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider0;->querySingleAlbum(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 337
    :pswitch_a
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider0;->querySinglePhoto(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 339
    :pswitch_b
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->UPLOAD_TASK_TABLE:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider0;->querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 341
    :pswitch_c
    sget-object v0, Lcom/google/android/picasasync/PicasaContentProvider0;->UPLOAD_RECORD_TABLE:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider0;->querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 343
    :pswitch_d
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider0;->querySettings(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 345
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaContentProvider0;->queryImmediateSyncResult(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_a
        :pswitch_2
        :pswitch_9
        :pswitch_6
        :pswitch_b
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private queryPhotos(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 486
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 487
    .local v8, "limit":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->PHOTO_TABLE_NAME:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryPostAlbum(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 465
    const-string v3, "album_type = \'Buzz\'"

    .line 466
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 467
    .local v4, "args":[Ljava/lang/String;
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 468
    .local v9, "userId":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 469
    const-string v3, "album_type = \'Buzz\' AND user_id = ?"

    .line 470
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "args":[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 472
    .restart local v4    # "args":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->ALBUM_TABLE_NAME:Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryPostPhotos(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 478
    new-instance v9, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;

    invoke-direct {v9, p1, p5}, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 479
    .local v9, "where":Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->PHOTO_TABLE_NAME:Ljava/lang/String;

    iget-object v3, v9, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->selection:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v9, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->sortOrder:Ljava/lang/String;

    iget-object v8, v9, Lcom/google/android/picasasync/PicasaContentProvider0$WhereEntry;->sortLimit:Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized querySettings(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/google/android/picasastore/PicasaMatrixCursor;

    invoke-direct {v2, p2}, Lcom/google/android/picasastore/PicasaMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 389
    .local v2, "cursor":Lcom/google/android/picasastore/PicasaMatrixCursor;
    array-length v6, p2

    new-array v1, v6, [Ljava/lang/Object;

    .line 390
    .local v1, "columnValues":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 391
    .local v5, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, p2

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 392
    aget-object v0, p2, v3

    .line 393
    .local v0, "column":Ljava/lang/String;
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 394
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 395
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 391
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown column: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "columnValues":[Ljava/lang/Object;
    .end local v2    # "cursor":Lcom/google/android/picasastore/PicasaMatrixCursor;
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 401
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v1    # "columnValues":[Ljava/lang/Object;
    .restart local v2    # "cursor":Lcom/google/android/picasastore/PicasaMatrixCursor;
    .restart local v3    # "i":I
    .restart local v4    # "n":I
    .restart local v5    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.google.android.picasasync."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 402
    aget-object v6, v1, v3

    if-nez v6, :cond_0

    .line 403
    sget-object v6, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    goto :goto_1

    .line 406
    .end local v0    # "column":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    monitor-exit p0

    return-object v2
.end method

.method private querySingleAlbum(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 517
    new-array v4, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 518
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->ALBUM_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private querySinglePhoto(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 511
    new-array v4, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 512
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->PHOTO_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private querySingleUpload(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 529
    const-string v3, "_id=? AND uid=?"

    .line 530
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 532
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsManager;->getUploadsDatabaseHelper()Lcom/google/android/picasasync/UploadsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private querySingleUser(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 523
    new-array v4, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 524
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->USER_TABLE_NAME:Ljava/lang/String;

    const-string v3, "_id=?"

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryUploads(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 493
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 494
    .local v8, "limit":Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string p4, "uid=?"

    .line 496
    const/4 v0, 0x1

    new-array p5, v0, [Ljava/lang/String;

    .end local p5    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p5, v0

    .line 505
    .restart local p5    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsManager;->getUploadsDatabaseHelper()Lcom/google/android/picasasync/UploadsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 498
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 499
    if-nez p5, :cond_1

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    .line 502
    .local v9, "newArgs":[Ljava/lang/String;
    :goto_1
    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 503
    move-object p5, v9

    goto :goto_0

    .line 499
    .end local v9    # "newArgs":[Ljava/lang/String;
    :cond_1
    array-length v0, p5

    add-int/lit8 v0, v0, 0x1

    invoke-static {p5, v0}, Lcom/android/gallery3d/common/Utils;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method private queryUsers(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 412
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 413
    .local v8, "limit":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/PicasaContentProvider0;->USER_TABLE_NAME:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private requestImmediateSyncOnAlbumList(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 673
    const-string v3, "account"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "account":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 676
    .local v1, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbumListForAllAccounts()Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "taskId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 676
    .end local v2    # "taskId":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbumListForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private requestImmediateSyncOnPhotos(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 683
    const-string v2, "album_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "albumId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "album ID missing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasasync/ImmediateSync;->get(Landroid/content/Context;)Lcom/google/android/picasasync/ImmediateSync;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/picasasync/ImmediateSync;->requestSyncAlbum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "taskId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private resetSettings()Z
    .locals 5

    .prologue
    .line 809
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 810
    .local v2, "values":Landroid/content/ContentValues;
    sget-object v3, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 811
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 813
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/picasasync/PicasaContentProvider0;->updateSettings(Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method private updateSettings(Landroid/content/ContentValues;)Z
    .locals 11
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 779
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 780
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 782
    .local v0, "changed":Z
    monitor-enter p0

    .line 783
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 784
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v7, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEFAULTS:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 785
    sget-object v7, Lcom/google/android/picasasync/PicasaContentProvider0;->SETTING_DEPRECATED:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 788
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown setting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 798
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 791
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.google.android.picasasync."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 792
    .local v5, "systemKey":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v6, v8

    .line 793
    .local v6, "value":Ljava/lang/String;
    :goto_1
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 794
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 795
    const/4 v0, 0x1

    goto :goto_0

    .line 792
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 798
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "systemKey":Ljava/lang/String;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    if-eqz v0, :cond_4

    .line 800
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 801
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v7

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 802
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadsManager;->reloadSystemSettings()V

    .line 803
    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 805
    .end local v1    # "context":Landroid/content/Context;
    :cond_4
    return v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 243
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "photos"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "albums"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "posts"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "posts_album"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "users"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "uploads"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "upload_records"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "photos/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "albums/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "users/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "uploads/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "settings"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "sync_request"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 257
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "sync_request/*"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "upload_records/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "albumcovers/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 703
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/PicasaContentProvider0;->cancelUploads(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 701
    :goto_0
    return v0

    .line 697
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaContentProvider0;->cancelSingleUpload(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0

    .line 699
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaContentProvider0;->cancelImmediateSync(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0

    .line 701
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->resetSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 293
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.item"

    .line 291
    :goto_0
    return-object v0

    .line 269
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.album"

    goto :goto_0

    .line 271
    :pswitch_3
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.post"

    goto :goto_0

    .line 273
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.post_album"

    goto :goto_0

    .line 275
    :pswitch_5
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.user"

    goto :goto_0

    .line 277
    :pswitch_6
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.upload"

    goto :goto_0

    .line 279
    :pswitch_7
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.upload_record"

    goto :goto_0

    .line 281
    :pswitch_8
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.item"

    goto :goto_0

    .line 283
    :pswitch_9
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.album"

    goto :goto_0

    .line 285
    :pswitch_a
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.user"

    goto :goto_0

    .line 287
    :pswitch_b
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.upload"

    goto :goto_0

    .line 289
    :pswitch_c
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.upload_record"

    goto :goto_0

    .line 291
    :pswitch_d
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.album_cover"

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_8
        :pswitch_2
        :pswitch_9
        :pswitch_6
        :pswitch_b
        :pswitch_7
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_d
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 640
    .local v2, "statsId":I
    :try_start_0
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 648
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v3

    .line 642
    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {p2, v4}, Lcom/google/android/picasasync/UploadTaskEntry;->createNew(Landroid/content/ContentValues;I)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/picasasync/UploadsManager;->addManualUpload(Lcom/google/android/picasasync/UploadTaskEntry;)J

    move-result-wide v0

    .line 644
    .local v0, "id":J
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/google/android/picasasync/PicasaFacade;->getUploadUri(J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 651
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    .end local v0    # "id":J
    :goto_0
    return-object v3

    .line 646
    :sswitch_1
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaContentProvider0;->insertSyncRequest(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 651
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_0

    .line 640
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 236
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    .line 237
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 539
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OPEN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v7

    .line 541
    .local v7, "statsId":I
    :try_start_0
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 542
    .local v5, "matchType":I
    sparse-switch v5, :sswitch_data_0

    .line 581
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unsupported uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    .end local v5    # "matchType":I
    :catchall_0
    move-exception v8

    invoke-static {v7}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v8

    .line 545
    .restart local v5    # "matchType":I
    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 546
    .local v1, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 549
    .local v6, "redirectUri":Landroid/net/Uri;
    :try_start_2
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mPicasaStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

    if-nez v8, :cond_0

    .line 550
    invoke-static {v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mPicasaStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

    .line 553
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mPicasaStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

    invoke-virtual {v9}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 555
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 584
    invoke-static {v7}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    :goto_0
    return-object v8

    .line 556
    :catch_0
    move-exception v2

    .line 557
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v8, "content_url"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "contentUrl":Ljava/lang/String;
    const-string v8, "w"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    throw v2

    .line 561
    :cond_2
    const-string v8, "PicasaContentProvider0"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException, look up photo metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaContentProvider0;->getItemIdFromUri(Landroid/net/Uri;)J

    move-result-wide v3

    .line 565
    .local v3, "id":J
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-nez v8, :cond_3

    .line 566
    new-instance v8, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 569
    :cond_3
    const/16 v8, 0xe

    if-ne v5, v8, :cond_4

    invoke-direct {p0, v3, v4}, Lcom/google/android/picasasync/PicasaContentProvider0;->lookupAlbumCoverUrl(J)Ljava/lang/String;

    move-result-object v0

    .line 573
    :goto_1
    if-nez v0, :cond_5

    throw v2

    .line 569
    :cond_4
    const-string v8, "type"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v4, v8}, Lcom/google/android/picasasync/PicasaContentProvider0;->lookupContentUrl(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 574
    :cond_5
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "content_url"

    invoke-virtual {v8, v9, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 577
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 584
    invoke-static {v7}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_0

    .line 542
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QUERY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v1

    .line 302
    .local v1, "statsId":I
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasasync/PicasaContentProvider0;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 303
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->incrementQueryResultCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    return-object v0

    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 759
    iget-object v5, p0, Lcom/google/android/picasasync/PicasaContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 774
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 762
    :sswitch_0
    const-string v5, "cache_flag"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 763
    .local v2, "cachingFlag":Ljava/lang/Integer;
    if-nez v2, :cond_1

    move v3, v4

    .line 771
    .end local v2    # "cachingFlag":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v3

    .line 764
    .restart local v2    # "cachingFlag":Ljava/lang/Integer;
    :cond_1
    invoke-static {p1, v6, v7}, Lcom/google/android/picasasync/PicasaContentProvider0;->getLastSegmentAsLong(Landroid/net/Uri;J)J

    move-result-wide v0

    .line 765
    .local v0, "albumId":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/PrefetchHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PrefetchHelper;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/android/picasasync/PrefetchHelper;->setAlbumCachingFlag(JI)V

    goto :goto_0

    .line 771
    .end local v0    # "albumId":J
    .end local v2    # "cachingFlag":Ljava/lang/Integer;
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/picasasync/PicasaContentProvider0;->updateSettings(Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 759
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method
