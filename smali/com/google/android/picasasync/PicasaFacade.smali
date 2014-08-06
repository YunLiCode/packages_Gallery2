.class public Lcom/google/android/picasasync/PicasaFacade;
.super Ljava/lang/Object;
.source "PicasaFacade.java"


# static fields
.field private static sInstance:Lcom/google/android/picasasync/PicasaFacade;


# instance fields
.field private final mAlbumCoversUri:Landroid/net/Uri;

.field private final mAlbumsUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final mPhotosUri:Landroid/net/Uri;

.field private final mPostAlbumsUri:Landroid/net/Uri;

.field private final mPostPhotosUri:Landroid/net/Uri;

.field private final mSettingsUri:Landroid/net/Uri;

.field private final mSyncRequestUri:Landroid/net/Uri;

.field private final mUploadRecordsUri:Landroid/net/Uri;

.field private final mUploadsUri:Landroid/net/Uri;

.field private final mUsersUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    .line 189
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaFacade;->enableProviderAndSyncService()V

    .line 191
    const-string v1, "content://com.google.android.gallery3d.GooglePhotoProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 192
    .local v0, "baseUri":Landroid/net/Uri;
    const-string v1, "photos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mPhotosUri:Landroid/net/Uri;

    .line 193
    const-string v1, "albums"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mAlbumsUri:Landroid/net/Uri;

    .line 194
    const-string v1, "posts_album"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mPostAlbumsUri:Landroid/net/Uri;

    .line 195
    const-string v1, "posts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mPostPhotosUri:Landroid/net/Uri;

    .line 196
    const-string v1, "users"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mUsersUri:Landroid/net/Uri;

    .line 197
    const-string v1, "uploads"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mUploadsUri:Landroid/net/Uri;

    .line 198
    const-string v1, "upload_records"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mUploadRecordsUri:Landroid/net/Uri;

    .line 201
    const-string v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mSettingsUri:Landroid/net/Uri;

    .line 202
    const-string v1, "sync_request"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mSyncRequestUri:Landroid/net/Uri;

    .line 203
    const-string v1, "albumcovers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mAlbumCoversUri:Landroid/net/Uri;

    .line 204
    return-void
.end method

.method private enableProviderAndSyncService()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/picasasync/PicasaSyncService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 226
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const-class v1, Lcom/google/android/picasasync/PicasaFacade;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/picasasync/PicasaFacade;->sInstance:Lcom/google/android/picasasync/PicasaFacade;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/google/android/picasasync/PicasaFacade;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaFacade;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PicasaFacade;->sInstance:Lcom/google/android/picasasync/PicasaFacade;

    .line 184
    :cond_0
    sget-object v0, Lcom/google/android/picasasync/PicasaFacade;->sInstance:Lcom/google/android/picasasync/PicasaFacade;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public enablePicasasync(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 230
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 231
    if-eqz p1, :cond_3

    .line 232
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/picasasync/ConnectivityReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 277
    :cond_0
    return-void

    .line 236
    :cond_1
    const-string v2, "PicasaFacade"

    const-string v3, "enable picasasync in gallery"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/picasasync/ConnectivityReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 241
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/picasasync/BatteryReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 246
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 247
    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 250
    const-string v4, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 251
    const-string v4, "com.google.android.gallery3d.GooglePhotoProvider"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 252
    const-string v4, "com.google.android.gallery3d.GooglePhotoProvider"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_3
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/picasasync/ConnectivityReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 260
    const-string v2, "PicasaFacade"

    const-string v3, "disable picasasync in gallery"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/picasasync/ConnectivityReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v6, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 265
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/picasasync/BatteryReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v6, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 270
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 271
    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 272
    const-string v5, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-static {v4, v5, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 274
    const-string v5, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAlbumUri(J)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mAlbumsUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mAlbumsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const-string v0, "com.google.android.gallery3d.GooglePhotoProvider"

    return-object v0
.end method

.method public getPhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mPhotosUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPostAlbumsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mPostAlbumsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPostPhotosUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mPostPhotosUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSettingsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mSettingsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSyncRequestUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mSyncRequestUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUploadRecordsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mUploadRecordsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUploadUri(J)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mUploadsUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUploadsUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mUploadsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUsersUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mUsersUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isMaster()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public requestImmediateSyncOnAlbum(J)Landroid/net/Uri;
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 292
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "task"

    const-string v2, "immediate_photos"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "album_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 295
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaFacade;->mSyncRequestUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public requestImmediateSyncOnAlbumList(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 303
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "task"

    const-string v2, "immediate_albums"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaFacade;->mSyncRequestUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public requestSync()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "task"

    const-string v2, "manual_metadata"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaFacade;->mSyncRequestUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 283
    return-void
.end method
