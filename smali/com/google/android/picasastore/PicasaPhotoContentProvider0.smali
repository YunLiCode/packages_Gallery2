.class public Lcom/google/android/picasastore/PicasaPhotoContentProvider0;
.super Landroid/content/ContentProvider;
.source "PicasaPhotoContentProvider0.java"


# static fields
.field private static final EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mExternalStorageFsId:I

.field private mFingerprintManager:Lcom/google/android/picasastore/FingerprintManager;

.field private mIsExternalStorageFsIdReady:Z

.field private mPicasaStore:Lcom/google/android/picasastore/PicasaStore;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "content://media/external/fs_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 96
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mIsExternalStorageFsIdReady:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasastore/PicasaPhotoContentProvider0;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/picasastore/PicasaPhotoContentProvider0;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->onFsIdChanged()V

    return-void
.end method

.method private static getFsId(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 169
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v1

    .line 165
    :cond_0
    :try_start_1
    const-string v1, "PicasaPhotoCP"

    const-string v2, "No FSID on this device!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    const/4 v1, -0x1

    .line 169
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private getPicasaStore()Lcom/google/android/picasastore/PicasaStore;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mPicasaStore:Lcom/google/android/picasastore/PicasaStore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/picasastore/PicasaStore;

    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/picasastore/PicasaStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mPicasaStore:Lcom/google/android/picasastore/PicasaStore;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mPicasaStore:Lcom/google/android/picasastore/PicasaStore;

    return-object v0
.end method

.method private initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .locals 2
    .param p1, "thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 138
    new-instance v0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0$2;-><init>(Lcom/google/android/picasastore/PicasaPhotoContentProvider0;Landroid/os/Looper;)V

    return-object v0
.end method

.method private invalidateFingerprints([Ljava/lang/String;)I
    .locals 1
    .param p1, "contentUris"    # [Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mFingerprintManager:Lcom/google/android/picasastore/FingerprintManager;

    invoke-virtual {v0, p1}, Lcom/google/android/picasastore/FingerprintManager;->invalidate([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onFsIdChanged()V
    .locals 5

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->isExternalStorageMounted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 177
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->getFsId(Landroid/content/Context;)I

    move-result v1

    .line 180
    .local v1, "fsId":I
    iget-boolean v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mIsExternalStorageFsIdReady:Z

    if-nez v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "external_storage_fsid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mIsExternalStorageFsIdReady:Z

    .line 182
    iget-boolean v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mIsExternalStorageFsIdReady:Z

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "external_storage_fsid"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mExternalStorageFsId:I

    .line 187
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mIsExternalStorageFsIdReady:Z

    if-nez v2, :cond_3

    .line 189
    const-string v2, "PicasaPhotoCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set fsid first time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mIsExternalStorageFsIdReady:Z

    .line 191
    iput v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mExternalStorageFsId:I

    .line 192
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "external_storage_fsid"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "fsId":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 193
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "fsId":I
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mExternalStorageFsId:I

    if-eq v2, v1, :cond_0

    .line 195
    const-string v2, "PicasaPhotoCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fsid changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mExternalStorageFsId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mExternalStorageFsId:I

    .line 197
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "external_storage_fsid"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    invoke-static {v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasastore/PicasaStoreFacade;->isMaster()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mFingerprintManager:Lcom/google/android/picasastore/FingerprintManager;

    invoke-virtual {v2}, Lcom/google/android/picasastore/FingerprintManager;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private queryFingerprint(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentUris"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 261
    const-string v8, "1"

    const-string v10, "force_recalculate"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 262
    .local v5, "forceRecalculate":Z
    if-nez v5, :cond_0

    const-string v8, "1"

    const-string v10, "cache_only"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x1

    .line 263
    .local v0, "cacheOnly":Z
    :goto_0
    new-instance v2, Lcom/google/android/picasastore/PicasaMatrixCursor;

    invoke-direct {v2, p2}, Lcom/google/android/picasastore/PicasaMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 264
    .local v2, "cursor":Lcom/google/android/picasastore/PicasaMatrixCursor;
    iget-object v4, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mFingerprintManager:Lcom/google/android/picasastore/FingerprintManager;

    .line 265
    .local v4, "fm":Lcom/google/android/picasastore/FingerprintManager;
    array-length v8, p2

    new-array v1, v8, [Ljava/lang/Object;

    .line 266
    .local v1, "columnValues":[Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 267
    const/4 v6, 0x0

    .local v6, "i":I
    array-length v7, p2

    .local v7, "n":I
    :goto_1
    if-ge v6, v7, :cond_4

    .line 268
    aget-object v8, p2, v6

    invoke-virtual {v4, v8}, Lcom/google/android/picasastore/FingerprintManager;->getCachedFingerprint(Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v3

    .line 269
    .local v3, "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    if-nez v3, :cond_1

    move-object v8, v9

    :goto_2
    aput-object v8, v1, v6

    .line 267
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 262
    .end local v0    # "cacheOnly":Z
    .end local v1    # "columnValues":[Ljava/lang/Object;
    .end local v2    # "cursor":Lcom/google/android/picasastore/PicasaMatrixCursor;
    .end local v3    # "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    .end local v4    # "fm":Lcom/google/android/picasastore/FingerprintManager;
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    .restart local v0    # "cacheOnly":Z
    .restart local v1    # "columnValues":[Ljava/lang/Object;
    .restart local v2    # "cursor":Lcom/google/android/picasastore/PicasaMatrixCursor;
    .restart local v3    # "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    .restart local v4    # "fm":Lcom/google/android/picasastore/FingerprintManager;
    .restart local v6    # "i":I
    .restart local v7    # "n":I
    :cond_1
    invoke-virtual {v3}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v8

    goto :goto_2

    .line 272
    .end local v3    # "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "i":I
    array-length v7, p2

    .restart local v7    # "n":I
    :goto_3
    if-ge v6, v7, :cond_4

    .line 273
    aget-object v8, p2, v6

    invoke-virtual {v4, v8, v5}, Lcom/google/android/picasastore/FingerprintManager;->getFingerprint(Ljava/lang/String;Z)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v3

    .line 274
    .restart local v3    # "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    if-nez v3, :cond_3

    move-object v8, v9

    :goto_4
    aput-object v8, v1, v6

    .line 272
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 274
    :cond_3
    invoke-virtual {v3}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v8

    goto :goto_4

    .line 277
    .end local v3    # "fingerprint":Lcom/android/gallery3d/common/Fingerprint;
    :cond_4
    invoke-virtual {v2, v1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 278
    return-object v2
.end method

.method private queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
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

    .line 254
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->queryFingerprint(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 214
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 215
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mAuthority:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "photos"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "fingerprint"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "photos/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mAuthority:Ljava/lang/String;

    const-string v2, "albumcovers/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 319
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

    .line 317
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->invalidateFingerprints([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 233
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

    .line 227
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.item"

    .line 231
    :goto_0
    return-object v0

    .line 229
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.item"

    goto :goto_0

    .line 231
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.album_cover"

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, "statsId":I
    :try_start_0
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 306
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v1
.end method

.method public onCreate()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasastore/Config;->init(Landroid/content/Context;)V

    .line 114
    invoke-static {v0}, Lcom/google/android/picasastore/FingerprintManager;->get(Landroid/content/Context;)Lcom/google/android/picasastore/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mFingerprintManager:Lcom/google/android/picasastore/FingerprintManager;

    .line 115
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mPrefs:Landroid/content/SharedPreferences;

    .line 117
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "picasa-photo-provider"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 119
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 120
    invoke-direct {p0, v2}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v1

    .line 122
    .local v1, "handler":Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/picasastore/PicasaPhotoContentProvider0$1;

    invoke-direct {v6, p0, v1}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0$1;-><init>(Lcom/google/android/picasastore/PicasaPhotoContentProvider0;Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    invoke-static {v1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 134
    return v7
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, "statsId":I
    :try_start_0
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 293
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v1

    .line 287
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->getPicasaStore()Lcom/google/android/picasastore/PicasaStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/picasastore/PicasaStore;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 296
    invoke-static {v0}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    :goto_0
    return-object v1

    .line 290
    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->getPicasaStore()Lcom/google/android/picasastore/PicasaStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/picasastore/PicasaStore;->openAlbumCover(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 296
    invoke-static {v0}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QUERY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "statsId":I
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->incrementQueryResultCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    return-object v0

    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider0;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 346
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
.end method
