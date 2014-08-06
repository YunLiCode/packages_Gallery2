.class public Lcom/android/gallery3d/picasasource/PicasaSource;
.super Lcom/android/gallery3d/data/MediaSource;
.source "PicasaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasasource/PicasaSource$IdComparator;
    }
.end annotation


# static fields
.field public static final ALBUM_PATH:Lcom/android/gallery3d/data/Path;

.field private static final SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

.field private static sBlobCache:Lcom/android/gallery3d/common/BlobCache;

.field private static final sIdComparator:Lcom/android/gallery3d/picasasource/PicasaSource$IdComparator;

.field private static final sIdIndex:I


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mClient:Landroid/content/ContentProviderClient;

.field private mFacade:Lcom/google/android/picasasync/PicasaFacade;

.field private final mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private final mMatcher:Lcom/android/gallery3d/data/PathMatcher;

.field private mStoreClient:Landroid/content/ContentProviderClient;

.field private mStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaSource;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    .line 75
    sget-object v0, Lcom/android/gallery3d/picasasource/PicasaSource;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/common/EntrySchema;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/gallery3d/picasasource/PicasaSource;->sIdIndex:I

    .line 91
    new-instance v0, Lcom/android/gallery3d/picasasource/PicasaSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/picasasource/PicasaSource$IdComparator;-><init>(Lcom/android/gallery3d/picasasource/PicasaSource$1;)V

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaSource;->sIdComparator:Lcom/android/gallery3d/picasasource/PicasaSource$IdComparator;

    .line 105
    const-string v0, "/picasa/all"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaSource;->ALBUM_PATH:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 5
    .param p1, "application"    # Lcom/android/gallery3d/app/GalleryApp;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    const-string v1, "picasa"

    invoke-direct {p0, v1}, Lcom/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 101
    iput-boolean v3, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mIsActive:Z

    .line 113
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 114
    new-instance v1, Lcom/android/gallery3d/data/PathMatcher;

    invoke-direct {v1}, Lcom/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    .line 115
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v2, "/picasa/all"

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 116
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v2, "/picasa/image"

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 117
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v2, "/picasa/video"

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 118
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v2, "/picasa/all/*"

    invoke-virtual {v1, v2, v4}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 119
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v2, "/picasa/video/*"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 120
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v2, "/picasa/image/*"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 121
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v2, "/picasa/post/*/*"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 122
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v2, "/picasa/item/*"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 123
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const-string v2, "/picasa/face/*/*"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 125
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "photos/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-static {v0}, Lcom/android/gallery3d/provider/GalleryProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "picasa/item/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    new-instance v1, Lcom/android/gallery3d/picasasource/PicasaSource$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/picasasource/PicasaSource$1;-><init>(Lcom/android/gallery3d/picasasource/PicasaSource;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mHandler:Landroid/os/Handler;

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/picasasource/PicasaSource;)Landroid/content/ContentProviderClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/PicasaSource;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/picasasource/PicasaSource;Landroid/content/ContentProviderClient;)Landroid/content/ContentProviderClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p1, "x1"    # Landroid/content/ContentProviderClient;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/picasasource/PicasaSource;)Landroid/content/ContentProviderClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/PicasaSource;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/picasasource/PicasaSource;Landroid/content/ContentProviderClient;)Landroid/content/ContentProviderClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .param p1, "x1"    # Landroid/content/ContentProviderClient;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;

    return-object p1
.end method

.method static checkPlusOneVersion(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 477
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.google.android.apps.plus"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 478
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_2

    .line 479
    :cond_0
    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v5, 0xf7f4900

    if-lt v4, v5, :cond_1

    move v2, v3

    .line 480
    .local v2, "result":Z
    :cond_1
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/picasasync/PicasaFacade;->enablePicasasync(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 483
    :catch_0
    move-exception v4

    .line 487
    :cond_2
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/picasasync/PicasaFacade;->enablePicasasync(Z)V

    move v2, v3

    .line 488
    goto :goto_0
.end method

.method public static getContentType(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 1
    .param p0, "image"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 396
    check-cast p0, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local p0    # "image":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaImage;->getPhotoEntry()Lcom/google/android/picasasync/PhotoEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/picasasync/PhotoEntry;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public static getDateTaken(Lcom/android/gallery3d/data/MediaObject;)J
    .locals 2
    .param p0, "image"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 400
    check-cast p0, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local p0    # "image":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaImage;->getPhotoEntry()Lcom/google/android/picasasync/PhotoEntry;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/picasasync/PhotoEntry;->dateTaken:J

    return-wide v0
.end method

.method public static declared-synchronized getFaceCache(Landroid/content/Context;)Lcom/android/gallery3d/common/BlobCache;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const-class v1, Lcom/android/gallery3d/picasasource/PicasaSource;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/picasasource/PicasaSource;->sBlobCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v0, :cond_0

    .line 185
    const-string v0, "face"

    const/16 v2, 0x3e8

    const v3, 0x2ee000

    const/4 v4, 0x1

    invoke-static {p0, v0, v2, v3, v4}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/picasasource/PicasaSource;->sBlobCache:Lcom/android/gallery3d/common/BlobCache;

    .line 188
    :cond_0
    sget-object v0, Lcom/android/gallery3d/picasasource/PicasaSource;->sBlobCache:Lcom/android/gallery3d/common/BlobCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getFaceItem(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;I)Lcom/android/gallery3d/data/MediaItem;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/gallery3d/data/MediaItem;
    .param p2, "faceIndex"    # I

    .prologue
    .line 192
    const-class v4, Lcom/android/gallery3d/picasasource/PicasaSource;

    monitor-enter v4

    :try_start_0
    const-string v3, "/picasa/face/%s/%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 194
    .local v2, "path":Lcom/android/gallery3d/data/Path;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    .line 195
    .local v0, "app":Lcom/android/gallery3d/app/GalleryApp;
    sget-object v5, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    :try_start_1
    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 197
    .local v1, "faceItem":Lcom/android/gallery3d/data/MediaItem;
    if-nez v1, :cond_0

    .line 198
    new-instance v1, Lcom/android/gallery3d/picasasource/FaceImage;

    .end local v1    # "faceItem":Lcom/android/gallery3d/data/MediaItem;
    check-cast p1, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local p1    # "item":Lcom/android/gallery3d/data/MediaItem;
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getFaceCache(Landroid/content/Context;)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v3

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/android/gallery3d/picasasource/FaceImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaImage;ILcom/android/gallery3d/common/BlobCache;)V

    .line 201
    .restart local v1    # "faceItem":Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v1

    .line 202
    .end local v1    # "faceItem":Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    .end local v0    # "app":Lcom/android/gallery3d/app/GalleryApp;
    .end local v2    # "path":Lcom/android/gallery3d/data/Path;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static getImageSize(Lcom/android/gallery3d/data/MediaObject;)I
    .locals 1
    .param p0, "image"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 392
    check-cast p0, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local p0    # "image":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaImage;->getPhotoEntry()Lcom/google/android/picasasync/PhotoEntry;

    move-result-object v0

    iget v0, v0, Lcom/google/android/picasasync/PhotoEntry;->size:I

    return v0
.end method

.method public static getImageTitle(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 1
    .param p0, "image"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 388
    check-cast p0, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local p0    # "image":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaImage;->getPhotoEntry()Lcom/google/android/picasasync/PhotoEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/picasasync/PhotoEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static getLatitude(Lcom/android/gallery3d/data/MediaObject;)D
    .locals 2
    .param p0, "image"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 404
    check-cast p0, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local p0    # "image":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaImage;->getPhotoEntry()Lcom/google/android/picasasync/PhotoEntry;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/picasasync/PhotoEntry;->latitude:D

    return-wide v0
.end method

.method public static getLongitude(Lcom/android/gallery3d/data/MediaObject;)D
    .locals 2
    .param p0, "image"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 408
    check-cast p0, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local p0    # "image":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaImage;->getPhotoEntry()Lcom/google/android/picasasync/PhotoEntry;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/picasasync/PhotoEntry;->longitude:D

    return-wide v0
.end method

.method private static getMediaItemById(Lcom/android/gallery3d/picasasource/PicasaSource;Ljava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 21
    .param p0, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/picasasource/PicasaSource;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)[",
            "Lcom/android/gallery3d/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/gallery3d/data/MediaItem;

    move-object/from16 v20, v0

    .line 534
    .local v20, "result":[Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    :goto_0
    return-object v20

    .line 535
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 536
    .local v16, "idLow":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 538
    .local v14, "idHigh":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getApplication()Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    .line 539
    .local v9, "dataManager":Lcom/android/gallery3d/data/DataManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v1, Lcom/android/gallery3d/picasasource/PicasaSource;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id BETWEEN ? AND ?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "_id"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/picasasource/PicasaSource;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 543
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 544
    const-string v1, "PicasaSource"

    const-string v2, "query fail"

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 550
    .local v19, "n":I
    const/4 v11, 0x0

    .line 552
    .local v11, "i":I
    :cond_2
    :goto_1
    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 553
    sget v1, Lcom/android/gallery3d/picasasource/PicasaSource;->sIdIndex:I

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 556
    .local v12, "id":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v12

    if-gtz v1, :cond_2

    .line 560
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    cmp-long v1, v1, v12

    if-gez v1, :cond_4

    .line 561
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v19

    if-lt v11, v0, :cond_3

    .line 574
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 566
    :cond_4
    :try_start_1
    sget-object v1, Lcom/android/gallery3d/picasasource/PicasaSource;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    new-instance v2, Lcom/google/android/picasasync/PhotoEntry;

    invoke-direct {v2}, Lcom/google/android/picasasync/PhotoEntry;-><init>()V

    invoke-virtual {v1, v8, v2}, Lcom/android/gallery3d/common/EntrySchema;->cursorToObject(Landroid/database/Cursor;Lcom/android/gallery3d/common/Entry;)Lcom/android/gallery3d/common/Entry;

    move-result-object v10

    check-cast v10, Lcom/google/android/picasasync/PhotoEntry;

    .line 567
    .local v10, "entry":Lcom/google/android/picasasync/PhotoEntry;
    sget-object v1, Lcom/android/gallery3d/picasasource/PicasaImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v12, v13}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    .line 568
    .local v7, "childPath":Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    invoke-static {v7, v10, v9, v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/google/android/picasasync/PhotoEntry;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/picasasource/PicasaSource;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v18

    .line 569
    .local v18, "item":Lcom/android/gallery3d/data/MediaItem;
    aput-object v18, v20, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    add-int/lit8 v11, v11, 0x1

    .line 571
    goto :goto_1

    .line 574
    .end local v7    # "childPath":Lcom/android/gallery3d/data/Path;
    .end local v10    # "entry":Lcom/google/android/picasasync/PhotoEntry;
    .end local v12    # "id":J
    .end local v18    # "item":Lcom/android/gallery3d/data/MediaItem;
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11    # "i":I
    .end local v19    # "n":I
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getPicasaId(Lcom/android/gallery3d/data/MediaObject;)J
    .locals 2
    .param p0, "image"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 416
    check-cast p0, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local p0    # "image":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaImage;->getPhotoEntry()Lcom/google/android/picasasync/PhotoEntry;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/gallery3d/common/Entry;->id:J

    return-wide v0
.end method

.method public static getRotation(Lcom/android/gallery3d/data/MediaObject;)I
    .locals 1
    .param p0, "image"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 412
    check-cast p0, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local p0    # "image":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaImage;->getPhotoEntry()Lcom/google/android/picasasync/PhotoEntry;

    move-result-object v0

    iget v0, v0, Lcom/google/android/picasasync/PhotoEntry;->rotation:I

    return v0
.end method

.method public static getUserAccount(Landroid/content/Context;Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 422
    check-cast p1, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local p1    # "image":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p1}, Lcom/android/gallery3d/picasasource/PicasaImage;->getPhotoEntry()Lcom/google/android/picasasync/PhotoEntry;

    move-result-object v0

    iget-wide v7, v0, Lcom/google/android/picasasync/PhotoEntry;->userId:J

    .line 423
    .local v7, "userId":J
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->getUsersUri()Landroid/net/Uri;

    move-result-object v1

    .line 424
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "account"

    aput-object v3, v2, v10

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 428
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 430
    :cond_0
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v5

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getVersionCheckDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 492
    const v0, 0x7f0b013a

    invoke-static {p0, v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getVersionCheckDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCheckDialog(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "messageId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 496
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->checkPlusOneVersion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 522
    :goto_0
    return-object v2

    .line 498
    :cond_0
    const-string v2, "market://details?id=%s"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "com.google.android.apps.plus"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "marketUri":Ljava/lang/String;
    new-instance v0, Lcom/android/gallery3d/picasasource/PicasaSource$2;

    invoke-direct {v0, v1, p0}, Lcom/android/gallery3d/picasasource/PicasaSource$2;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    .line 522
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0138

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0139

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "2.6.0"

    aput-object v4, v3, v5

    invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 451
    const-class v0, Lcom/android/gallery3d/R;

    invoke-static {v0}, Lcom/google/android/picasasync/R;->init(Ljava/lang/Class;)V

    .line 452
    return-void
.end method

.method public static isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z
    .locals 1
    .param p0, "object"    # Lcom/android/gallery3d/data/MediaObject;

    .prologue
    .line 384
    instance-of v0, p0, Lcom/android/gallery3d/picasasource/PicasaImage;

    return v0
.end method

.method public static loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Lcom/google/android/picasasync/PhotoEntry;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/picasasource/PicasaSource;)Lcom/android/gallery3d/data/MediaItem;
    .locals 3
    .param p0, "path"    # Lcom/android/gallery3d/data/Path;
    .param p1, "entry"    # Lcom/google/android/picasasync/PhotoEntry;
    .param p2, "dataManager"    # Lcom/android/gallery3d/data/DataManager;
    .param p3, "source"    # Lcom/android/gallery3d/picasasource/PicasaSource;

    .prologue
    .line 580
    sget-object v2, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 581
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/picasasource/PicasaImage;

    .line 582
    .local v0, "item":Lcom/android/gallery3d/picasasource/PicasaImage;
    if-nez v0, :cond_0

    .line 583
    new-instance v0, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local v0    # "item":Lcom/android/gallery3d/picasasource/PicasaImage;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/picasasource/PicasaImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;Lcom/google/android/picasasync/PhotoEntry;)V

    .line 587
    .restart local v0    # "item":Lcom/android/gallery3d/picasasource/PicasaImage;
    :goto_0
    monitor-exit v2

    return-object v0

    .line 585
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/picasasource/PicasaImage;->updateContent(Lcom/google/android/picasasync/PhotoEntry;)V

    goto :goto_0

    .line 588
    .end local v0    # "item":Lcom/android/gallery3d/picasasource/PicasaImage;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static onPackageAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-static {p0}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/picasastore/PicasaStoreFacade;->onPackageAdded(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public static onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-static {p0}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/picasastore/PicasaStoreFacade;->onPackageChanged(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public static onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-static {p0}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/picasastore/PicasaStoreFacade;->onPackageRemoved(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public static openFile(Landroid/content/Context;Lcom/android/gallery3d/data/MediaObject;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Lcom/android/gallery3d/data/MediaObject;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 436
    check-cast p1, Lcom/android/gallery3d/picasasource/PicasaImage;

    .end local p1    # "image":Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {p1}, Lcom/android/gallery3d/picasasource/PicasaImage;->getPhotoEntry()Lcom/google/android/picasasync/PhotoEntry;

    move-result-object v0

    .line 437
    .local v0, "photoEntry":Lcom/google/android/picasasync/PhotoEntry;
    invoke-static {p0}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/gallery3d/common/Entry;->id:J

    const-string v5, "full"

    iget-object v6, v0, Lcom/google/android/picasasync/PhotoEntry;->contentUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/picasastore/PicasaStoreFacade;->getPhotoUri(JLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 439
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public static requestSync(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaFacade;->requestSync()V

    .line 444
    return-void
.end method

.method public static showSignInReminder(Landroid/app/Activity;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 447
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/gallery3d/settings/GallerySettings;->addAccount(Landroid/app/Activity;Z)V

    .line 448
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 7
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/PathMatcher;->match(Lcom/android/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_1
    new-instance v0, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;

    invoke-direct {v0, p1, p0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;)V

    .line 177
    :goto_0
    return-object v0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v0

    const/4 v2, 0x6

    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/gallery3d/picasasource/PicasaAlbum;->find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;JI)Lcom/android/gallery3d/picasasource/PicasaAlbum;

    move-result-object v0

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/gallery3d/picasasource/PicasaAlbum;->find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;JI)Lcom/android/gallery3d/picasasource/PicasaAlbum;

    move-result-object v0

    goto :goto_0

    .line 167
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/gallery3d/picasasource/PicasaAlbum;->find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;JI)Lcom/android/gallery3d/picasasource/PicasaAlbum;

    move-result-object v0

    goto :goto_0

    .line 171
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "type":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v3

    .line 173
    .local v3, "userId":J
    new-instance v0, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;

    invoke-static {v6}, Lcom/android/gallery3d/data/MediaObject;->getTypeFromString(Ljava/lang/String;)I

    move-result v5

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/picasasource/PicasaPostAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;JI)V

    goto :goto_0

    .line 177
    .end local v3    # "userId":J
    .end local v6    # "type":Ljava/lang/String;
    :pswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v0

    invoke-static {p1, p0, v0, v1}, Lcom/android/gallery3d/picasasource/PicasaImage;->find(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/picasasource/PicasaSource;J)Lcom/android/gallery3d/picasasource/PicasaImage;

    move-result-object v0

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 216
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 210
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "PicasaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getApplication()Lcom/android/gallery3d/app/GalleryApp;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method public declared-synchronized getContentProvider()Landroid/content/ContentProviderClient;
    .locals 5

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "authority":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;

    .line 278
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_1

    .line 279
    const-string v1, "PicasaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot connect to picasa provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v0    # "authority":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 280
    .restart local v0    # "authority":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mIsActive:Z

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    .end local v0    # "authority":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 5
    .param p1, "path"    # Lcom/android/gallery3d/data/Path;

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 222
    .local v1, "object":Lcom/android/gallery3d/data/MediaObject;
    instance-of v2, v1, Lcom/android/gallery3d/picasasource/PicasaImage;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 223
    check-cast v0, Lcom/android/gallery3d/picasasource/PicasaImage;

    .line 224
    .local v0, "image":Lcom/android/gallery3d/picasasource/PicasaImage;
    sget-object v2, Lcom/android/gallery3d/picasasource/PicasaSource;->ALBUM_PATH:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasasource/PicasaImage;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 226
    .end local v0    # "image":Lcom/android/gallery3d/picasasource/PicasaImage;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPicasaFacade()Lcom/google/android/picasasync/PicasaFacade;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    return-object v0
.end method

.method public getPicasaStoreFacade()Lcom/google/android/picasastore/PicasaStoreFacade;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreFacade:Lcom/google/android/picasastore/PicasaStoreFacade;

    return-object v0
.end method

.method public declared-synchronized getStoreProvider()Landroid/content/ContentProviderClient;
    .locals 5

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "authority":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;

    .line 293
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_1

    .line 294
    const-string v1, "PicasaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot connect to picasa store provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v0    # "authority":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 295
    .restart local v0    # "authority":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mIsActive:Z

    if-nez v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    .end local v0    # "authority":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTotalTargetCacheSize()J
    .locals 2

    .prologue
    .line 237
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->getTotalTargetCacheSize(Lcom/android/gallery3d/picasasource/PicasaSource;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalUsedCacheSize()J
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaAlbumSet;->getTotalUsedCacheSize(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 12
    .param p2, "consumer"    # Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x1f4

    if-ge v10, v11, :cond_1

    .line 244
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 272
    :cond_0
    return-void

    .line 249
    :cond_1
    sget-object v10, Lcom/android/gallery3d/picasasource/PicasaSource;->sIdComparator:Lcom/android/gallery3d/picasasource/PicasaSource$IdComparator;

    invoke-static {p1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 252
    .local v8, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 254
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v4, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 257
    .local v0, "count":I
    move v6, v3

    .local v6, "j":I
    :goto_1
    if-ge v6, v8, :cond_2

    .line 258
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 259
    .local v9, "pid":Lcom/android/gallery3d/data/MediaSource$PathId;
    iget-object v10, v9, Lcom/android/gallery3d/data/MediaSource$PathId;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 260
    .local v1, "curId":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v0, v0, 0x1

    const/16 v10, 0x64

    if-ne v0, v10, :cond_3

    .line 265
    .end local v1    # "curId":J
    .end local v9    # "pid":Lcom/android/gallery3d/data/MediaSource$PathId;
    :cond_2
    invoke-static {p0, v4}, Lcom/android/gallery3d/picasasource/PicasaSource;->getMediaItemById(Lcom/android/gallery3d/picasasource/PicasaSource;Ljava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    .line 266
    .local v5, "items":[Lcom/android/gallery3d/data/MediaItem;
    move v7, v3

    .local v7, "k":I
    :goto_2
    if-ge v7, v6, :cond_4

    .line 267
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/MediaSource$PathId;

    .line 268
    .restart local v9    # "pid":Lcom/android/gallery3d/data/MediaSource$PathId;
    iget v10, v9, Lcom/android/gallery3d/data/MediaSource$PathId;->id:I

    sub-int v11, v7, v3

    aget-object v11, v5, v11

    invoke-interface {p2, v10, v11}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/android/gallery3d/data/MediaItem;)V

    .line 266
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 257
    .end local v5    # "items":[Lcom/android/gallery3d/data/MediaItem;
    .end local v7    # "k":I
    .restart local v1    # "curId":J
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 270
    .end local v1    # "curId":J
    .end local v9    # "pid":Lcom/android/gallery3d/data/MediaSource$PathId;
    .restart local v5    # "items":[Lcom/android/gallery3d/data/MediaItem;
    .restart local v7    # "k":I
    :cond_4
    move v3, v6

    .line 271
    goto :goto_0
.end method

.method public declared-synchronized pause()V
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mIsActive:Z

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mClient:Landroid/content/ContentProviderClient;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mStoreClient:Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_1
    monitor-exit p0

    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getContentProvider()Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 309
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 314
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 311
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 312
    :catch_0
    move-exception v6

    .line 313
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "PicasaSource"

    const-string v2, "query fail!"

    invoke-static {v1, v2, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v7

    .line 314
    goto :goto_0
.end method

.method public declared-synchronized resume()V
    .locals 2

    .prologue
    .line 347
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mIsActive:Z

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/picasasource/PicasaSource;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->getContentProvider()Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 321
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 323
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 327
    :goto_0
    return v2

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PicasaSource"

    const-string v3, "update fail!"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    const/4 v2, 0x0

    goto :goto_0
.end method
